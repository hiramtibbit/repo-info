## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:68ed57c529e408aa044fabaf58f9194c56638c8afd5c5e6ed796f8c30a640a90
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
$ docker pull rabbitmq@sha256:5e850123dd975393554faa27dc697ad009b7707aeb6b06d0403b666987ff803f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60364027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d60a8fcc49f407f83b56b484509f2a9cdf65952233fa07b14f5571dddb9ed3`
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
# Thu, 09 May 2019 23:35:33 GMT
ENV OTP_VERSION=21.3.8
# Thu, 09 May 2019 23:35:33 GMT
ENV OTP_SOURCE_SHA256=e20df59eac5ec0f3d47cb775eb7cfb20438df24d93ba859959a18fe07abf3e6e
# Thu, 09 May 2019 23:43:32 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 09 May 2019 23:43:32 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 09 May 2019 23:43:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 09 May 2019 23:45:39 GMT
ENV RABBITMQ_VERSION=3.7.14
# Thu, 09 May 2019 23:45:39 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 09 May 2019 23:45:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 09 May 2019 23:45:39 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 09 May 2019 23:45:48 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 09 May 2019 23:45:49 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 09 May 2019 23:45:49 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 09 May 2019 23:45:49 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 09 May 2019 23:45:49 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 09 May 2019 23:45:50 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Thu, 09 May 2019 23:45:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 23:45:50 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 09 May 2019 23:45:50 GMT
CMD ["rabbitmq-server"]
# Thu, 09 May 2019 23:45:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 09 May 2019 23:45:59 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 09 May 2019 23:45:59 GMT
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
	-	`sha256:8bd9e310604969417ec6ece16edc96c0008b8b1b35c4020090d66fad8fa6e521`  
		Last Modified: Thu, 09 May 2019 23:46:35 GMT  
		Size: 35.8 MB (35803158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e581254753f1661ed930c2a0b3c29947449d9e9ecd50d539cf3c8e1bae332bc`  
		Last Modified: Thu, 09 May 2019 23:46:29 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16677475093e8e7c6ded2bdebea7a3937b6dc0bfa0f77b638ba0e7dce5947e7`  
		Last Modified: Thu, 09 May 2019 23:47:17 GMT  
		Size: 9.9 MB (9935536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa588c5b1b0b4dead78bc59056245c26c55b30a9f19cb1d9eb1ea39b004ebbd1`  
		Last Modified: Thu, 09 May 2019 23:47:16 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd309ec2a050ae43f775ee8bcfbbac1a8e081b83563dbbfe889f2cab77ca94e`  
		Last Modified: Thu, 09 May 2019 23:47:16 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850baf9ee9b4e2d341ae423806ae05336b17679be9f9494c7101340ded94127b`  
		Last Modified: Thu, 09 May 2019 23:47:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4dbab680f32e47ddd37aa4b158349fb66a604174c590c3d4f086c4a5641ea0`  
		Last Modified: Thu, 09 May 2019 23:47:26 GMT  
		Size: 11.0 MB (11009241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:8115189961ddfcb6d4b5616d0a19147126a20e32ba90a1fea59bb754edec94d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56527554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa96943b32ef16e5a96a7d5f542b79d8ccdc52c75defda3453ea7df559b09bf`
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
# Fri, 10 May 2019 07:59:22 GMT
ENV OTP_VERSION=21.3.8
# Fri, 10 May 2019 07:59:23 GMT
ENV OTP_SOURCE_SHA256=e20df59eac5ec0f3d47cb775eb7cfb20438df24d93ba859959a18fe07abf3e6e
# Fri, 10 May 2019 08:38:48 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Fri, 10 May 2019 08:38:49 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Fri, 10 May 2019 08:38:50 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Fri, 10 May 2019 08:40:49 GMT
ENV RABBITMQ_VERSION=3.7.14
# Fri, 10 May 2019 08:40:50 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 10 May 2019 08:40:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 10 May 2019 08:40:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 10 May 2019 08:41:13 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Fri, 10 May 2019 08:41:14 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Fri, 10 May 2019 08:41:14 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 10 May 2019 08:41:15 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 10 May 2019 08:41:15 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 10 May 2019 08:41:16 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Fri, 10 May 2019 08:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 08:41:16 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 10 May 2019 08:41:17 GMT
CMD ["rabbitmq-server"]
# Fri, 10 May 2019 08:41:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 10 May 2019 08:41:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 10 May 2019 08:41:38 GMT
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
	-	`sha256:57bb98fe3b8fb76d0a072432f74e86feaeb5fcc4d11211d77be82bd89c744589`  
		Last Modified: Fri, 10 May 2019 08:42:03 GMT  
		Size: 32.2 MB (32217260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4cf199cb9d0f0ba19b60f89e0a0519a7d330540acdee3beb11ac6a43c19d`  
		Last Modified: Fri, 10 May 2019 08:41:54 GMT  
		Size: 1.5 KB (1482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b559e520a5f7e67800a06fa67e32d4f2d60b69b468309462d9ed32767e5fb5af`  
		Last Modified: Fri, 10 May 2019 08:42:40 GMT  
		Size: 9.9 MB (9935010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1359724679bcefb5ee9b728588efbba7ed4441ab1b1dea6055c997f866043074`  
		Last Modified: Fri, 10 May 2019 08:42:39 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2819b0591ad3b1ad919953ee2da513b09b34a862fb1b236120ae294e34814af`  
		Last Modified: Fri, 10 May 2019 08:42:39 GMT  
		Size: 4.4 KB (4423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48600f1ee8e09f00990a98259027c31c129a471df2da919b61411655e09658f4`  
		Last Modified: Fri, 10 May 2019 08:42:49 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f31cf9ddb40bface710402f0de5fc9b48c3d159110ff01b9fbb394767738fd3`  
		Last Modified: Fri, 10 May 2019 08:42:54 GMT  
		Size: 10.9 MB (10871366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:bb7a8d4044bd38f5036524e1300d51c8782b3e10b51a3b5dcac2579cf54dd261
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56180596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523415bae1ec3a7dd5b9e06990a437ea213fa1a06e15e5088d3b6b9325b304c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:56:17 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Fri, 08 Mar 2019 07:56:18 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Fri, 08 Mar 2019 07:56:18 GMT
ENV OPENSSL_VERSION=1.1.1b
# Fri, 08 Mar 2019 07:56:19 GMT
ENV OPENSSL_SOURCE_SHA256=5c557b023230413dfb0756f3137a13e6d726838ccd1430888ad15bfb2b43ea4b
# Fri, 08 Mar 2019 07:56:21 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Sat, 27 Apr 2019 10:06:08 GMT
ENV OTP_VERSION=21.3.7
# Sat, 27 Apr 2019 10:06:09 GMT
ENV OTP_SOURCE_SHA256=c14aebda6afae82809325c18d51a66e618b3f237b856080a7d8f4b5bb089e758
# Sat, 27 Apr 2019 10:16:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Sat, 27 Apr 2019 10:16:31 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Sat, 27 Apr 2019 10:16:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Sat, 27 Apr 2019 11:01:16 GMT
ENV RABBITMQ_VERSION=3.7.14
# Sat, 27 Apr 2019 11:01:17 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 27 Apr 2019 11:01:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 27 Apr 2019 11:01:21 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 27 Apr 2019 11:01:42 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Sat, 27 Apr 2019 11:01:50 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Sat, 27 Apr 2019 11:01:53 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 27 Apr 2019 11:01:57 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 27 Apr 2019 11:02:01 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 11:02:04 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Sat, 27 Apr 2019 11:02:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Apr 2019 11:02:10 GMT
EXPOSE 25672 4369 5671 5672
# Sat, 27 Apr 2019 11:02:13 GMT
CMD ["rabbitmq-server"]
# Sat, 27 Apr 2019 11:02:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 27 Apr 2019 11:02:42 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 27 Apr 2019 11:02:43 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e112396d1f24bffa5b54dde52902803e1962ea36a6f05c6bb958b1435757c28`  
		Last Modified: Fri, 08 Mar 2019 09:26:53 GMT  
		Size: 1.3 MB (1343292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd4a4dbd12e9dfb09c091606dcefa271e4f9c75ec56f2e483067fb5f27d32c`  
		Last Modified: Sat, 27 Apr 2019 11:03:14 GMT  
		Size: 32.0 MB (31956750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811c3aa28123c97cdbdc1bee2561286a7fbb021bc3f00049d91120835a6768a`  
		Last Modified: Sat, 27 Apr 2019 11:03:03 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd7932dba9d04e95bc3aeef59d67c260d7e3b131b998dbfe8eda56c03a587e3`  
		Last Modified: Sat, 27 Apr 2019 11:03:41 GMT  
		Size: 9.9 MB (9934854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de6eacdb008d7210c875635506240410d360b0d059fdb976e3ec453f8697545`  
		Last Modified: Sat, 27 Apr 2019 11:03:39 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967dfe0bbd772e3f903c6094f48455051a998e8d3b3ef12c84b40b7c17bfa2b8`  
		Last Modified: Sat, 27 Apr 2019 11:03:40 GMT  
		Size: 4.4 KB (4423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd0dd6d8ebf77bf0ba3607410abe185762e6cda500356dcf01bd3390dd2f4e1`  
		Last Modified: Sat, 27 Apr 2019 11:03:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddc87e52ffe4c290a0110185ee39d5c69ffd4a0a17f0a909bf13a40ec46eba8`  
		Last Modified: Sat, 27 Apr 2019 11:04:03 GMT  
		Size: 10.8 MB (10839602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:3ce9832a19ab84e8b575cd715e84c1d25ec3494a589e1cc7d17b4b4332ed8d96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60579770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9db427ff2214c02972c5b1ae7b6da2124a173be827d4bd4ff236ffa37b40e43`
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
# Sat, 27 Apr 2019 11:44:15 GMT
ENV OTP_VERSION=21.3.7
# Sat, 27 Apr 2019 11:44:15 GMT
ENV OTP_SOURCE_SHA256=c14aebda6afae82809325c18d51a66e618b3f237b856080a7d8f4b5bb089e758
# Sat, 27 Apr 2019 11:54:01 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Sat, 27 Apr 2019 11:54:02 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Sat, 27 Apr 2019 11:54:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Sat, 27 Apr 2019 11:55:10 GMT
ENV RABBITMQ_VERSION=3.7.14
# Sat, 27 Apr 2019 11:55:10 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 27 Apr 2019 11:55:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 27 Apr 2019 11:55:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 27 Apr 2019 11:55:20 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Sat, 27 Apr 2019 11:55:21 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Sat, 27 Apr 2019 11:55:21 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 27 Apr 2019 11:55:21 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 27 Apr 2019 11:55:22 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 11:55:22 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Sat, 27 Apr 2019 11:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Apr 2019 11:55:22 GMT
EXPOSE 25672 4369 5671 5672
# Sat, 27 Apr 2019 11:55:22 GMT
CMD ["rabbitmq-server"]
# Sat, 27 Apr 2019 11:55:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 27 Apr 2019 11:55:34 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 27 Apr 2019 11:55:34 GMT
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
	-	`sha256:03e575920249e738137ab88e3e44f4dd00a5d1009ecf59d9b4166b0b968090b9`  
		Last Modified: Sat, 27 Apr 2019 11:56:11 GMT  
		Size: 35.8 MB (35791597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7771e522af4010ffe46a8dce6f2dc8c4af8905f4edf3070cbb84562f96c5c58a`  
		Last Modified: Sat, 27 Apr 2019 11:56:04 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a1315ff44a3b68d4d194d5c43f649d1f94fa877fd51c0e33f53b144d059e1`  
		Last Modified: Sat, 27 Apr 2019 11:56:37 GMT  
		Size: 9.9 MB (9934950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94d38c98903bcdfb58bceea6302c972babbcbc469c30b286dcd184395e12f7f`  
		Last Modified: Sat, 27 Apr 2019 11:56:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfd091fab019148b397bc0e512b1beae9121c23f39487389793f522a288f916`  
		Last Modified: Sat, 27 Apr 2019 11:56:36 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c334041c80cb4f8ac81b6d7363080e80969c4cca0f8742c5adaf22323eb883e6`  
		Last Modified: Sat, 27 Apr 2019 11:56:41 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6797da2018b52f836387ad6e3210701d20648264bd26efc67c2bafeb255e8075`  
		Last Modified: Sat, 27 Apr 2019 11:56:47 GMT  
		Size: 11.1 MB (11128220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:639729efb0ae28803addc6a8b75a291143fbdbeb41309380da24e8ddb85994e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56651854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb4f8d990ec2e3fc152f877e2b787414653cbcbf5477e922d4d029be5d16a2e`
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
# Sat, 27 Apr 2019 09:35:40 GMT
ENV OTP_VERSION=21.3.7
# Sat, 27 Apr 2019 09:35:44 GMT
ENV OTP_SOURCE_SHA256=c14aebda6afae82809325c18d51a66e618b3f237b856080a7d8f4b5bb089e758
# Sat, 27 Apr 2019 09:42:08 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Sat, 27 Apr 2019 09:42:11 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Sat, 27 Apr 2019 09:42:20 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Sat, 27 Apr 2019 09:45:00 GMT
ENV RABBITMQ_VERSION=3.7.14
# Sat, 27 Apr 2019 09:45:02 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 27 Apr 2019 09:45:05 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 27 Apr 2019 09:45:07 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 27 Apr 2019 09:45:24 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Sat, 27 Apr 2019 09:45:35 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Sat, 27 Apr 2019 09:45:40 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 27 Apr 2019 09:45:44 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 27 Apr 2019 09:45:48 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 09:45:50 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Sat, 27 Apr 2019 09:45:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Apr 2019 09:45:55 GMT
EXPOSE 25672 4369 5671 5672
# Sat, 27 Apr 2019 09:45:58 GMT
CMD ["rabbitmq-server"]
# Sat, 27 Apr 2019 09:46:20 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 27 Apr 2019 09:46:30 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 27 Apr 2019 09:46:36 GMT
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
	-	`sha256:32a09415a132d8c3856b531a0fb2526714c5ce9761d335af90368a5a8303de1f`  
		Last Modified: Sat, 27 Apr 2019 09:47:08 GMT  
		Size: 32.1 MB (32066707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a1a62cba4e150eeab8cff13736142d2dde835eab995af89253b783af48f374`  
		Last Modified: Sat, 27 Apr 2019 09:47:01 GMT  
		Size: 1.5 KB (1488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69447e4bfb5ee768739e74696048fab8017f69c8864a50ffc20b39f7ed252f7`  
		Last Modified: Sat, 27 Apr 2019 09:47:38 GMT  
		Size: 9.9 MB (9935161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee62e8ce4ef618ea6b898ca6e84b04e7f68cdf6ce2fef39768076b5ae801e2c4`  
		Last Modified: Sat, 27 Apr 2019 09:47:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd89d3c57b58c399dd8a1d031c6c8715801bef7af9b4999cda09a37a934c816d`  
		Last Modified: Sat, 27 Apr 2019 09:47:36 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee76ac1d1fa65beafddab47286714207e325c9ceed74628563bea785e4ca1e7`  
		Last Modified: Sat, 27 Apr 2019 09:47:54 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f6159676ac97b3b805b725ce640bc4b81280efb2e90db0ef1983b151151229`  
		Last Modified: Sat, 27 Apr 2019 09:47:58 GMT  
		Size: 11.0 MB (11015140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:c6da982d130a3f18301681b88c217a5a12c63fe4c9c855d13892c428b8287822
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57099471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ac9b1d661c3b1f9694535ae76198790d81eba7d0d6f4266ea65e0e7265f366`
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
# Sat, 27 Apr 2019 12:58:45 GMT
ENV OTP_VERSION=21.3.7
# Sat, 27 Apr 2019 12:58:45 GMT
ENV OTP_SOURCE_SHA256=c14aebda6afae82809325c18d51a66e618b3f237b856080a7d8f4b5bb089e758
# Sat, 27 Apr 2019 13:09:15 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Sat, 27 Apr 2019 13:09:15 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Sat, 27 Apr 2019 13:09:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Sat, 27 Apr 2019 13:20:48 GMT
ENV RABBITMQ_VERSION=3.7.14
# Sat, 27 Apr 2019 13:20:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 27 Apr 2019 13:20:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 27 Apr 2019 13:20:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 27 Apr 2019 13:20:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Sat, 27 Apr 2019 13:21:00 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Sat, 27 Apr 2019 13:21:00 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 27 Apr 2019 13:21:01 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 27 Apr 2019 13:21:01 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 13:21:02 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Sat, 27 Apr 2019 13:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Apr 2019 13:21:02 GMT
EXPOSE 25672 4369 5671 5672
# Sat, 27 Apr 2019 13:21:03 GMT
CMD ["rabbitmq-server"]
# Sat, 27 Apr 2019 13:21:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 27 Apr 2019 13:21:20 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 27 Apr 2019 13:21:21 GMT
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
	-	`sha256:d0fd8c40dffb3c6bef04c4062c8f79b185521ea0f31e63e535bcb83be7078534`  
		Last Modified: Sat, 27 Apr 2019 13:22:13 GMT  
		Size: 32.3 MB (32265135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f466411d59fcd5e1123822a0ae82b69115859bc462ca95c6882f82381a0fb3a`  
		Last Modified: Sat, 27 Apr 2019 13:22:07 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ab2170d5899b978ee6f79b17d844597498f7446920005f60d98f2f052217b9`  
		Last Modified: Sat, 27 Apr 2019 13:22:58 GMT  
		Size: 9.9 MB (9934843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253ef40d6648527a63998046129c48328157483b243674ea27619be1aac732ea`  
		Last Modified: Sat, 27 Apr 2019 13:22:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3350abf828f7b94e3deb3a733cb21ccae43d948728ff4bbfba3fe60cab42c`  
		Last Modified: Sat, 27 Apr 2019 13:22:57 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f621b0566e2ae641479751bfc385134fd3f0549c9b465409bebd20e2a44f4a4e`  
		Last Modified: Sat, 27 Apr 2019 13:23:06 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc5c10b72cff4deb707de9b4ab779ec664de916d5bd0c8ebc0d99a0e6b1d0ca`  
		Last Modified: Sat, 27 Apr 2019 13:23:10 GMT  
		Size: 11.1 MB (11124150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
