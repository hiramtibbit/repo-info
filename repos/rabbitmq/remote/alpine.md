## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:2049e344d6288e24184ff7caed1511f0e4415ab6c028fe44a641cb1a74155eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:a7125a9597a2248bba6b3018224b67126d26fb5b6104870afa413b3630310ed4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30541629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3c1847ae37804e8f4c0800c58da2a760f0cd276424379fe5d4f7ea2f176061`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:34:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 21 Dec 2018 04:34:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 04:34:30 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 21 Dec 2018 04:34:31 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 21 Dec 2018 04:34:31 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 21 Dec 2018 04:34:31 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 04:34:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Dec 2018 04:34:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Dec 2018 04:34:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Dec 2018 04:34:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Dec 2018 04:34:36 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Dec 2018 04:34:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Fri, 21 Dec 2018 04:34:37 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Dec 2018 04:34:38 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Dec 2018 04:34:39 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Dec 2018 04:34:39 GMT
COPY file:cb4fc25b97e1039b2b6a440d7d5b760e4eb5f1a03619f66e3f9de81e6d64bdb2 in /usr/local/bin/ 
# Fri, 21 Dec 2018 04:34:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:34:39 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 21 Dec 2018 04:34:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942394937c273188a9d563db026786cd2d1eeb7b4f9f9181202cd82dbb4ac51`  
		Last Modified: Fri, 21 Dec 2018 04:35:57 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b810cb4438e92d0c2660073932920eb7e49bf230d795e833e546d1733cc3bd7`  
		Last Modified: Fri, 21 Dec 2018 04:35:57 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c43906cd73c9d2f96b09a132bee04f1a035345c1268714aa9062192945c2ec`  
		Last Modified: Fri, 21 Dec 2018 04:35:59 GMT  
		Size: 18.7 MB (18709096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1668cdf1594bfb9c3f9d0555bc05bdaa39e04b1332cab43cfbea10cbe4c4baa`  
		Last Modified: Fri, 21 Dec 2018 04:35:57 GMT  
		Size: 9.6 MB (9610265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b450bb961b036955e3b9a3c90a949aa460b01b224b2a8533b9bd14e8ad420cdc`  
		Last Modified: Fri, 21 Dec 2018 04:35:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58456318c5f5e8204a2e9332b5b0684b57375b24abc1a1d45eef18ff67554cb`  
		Last Modified: Fri, 21 Dec 2018 04:35:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81721da543302bb13ae8f748940920aefbe7127eca9347e1d82d81a8fe1a48`  
		Last Modified: Fri, 21 Dec 2018 04:35:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a666be3a616c4f5e882c793ed3d131685ceaf1be52dd5dba24a28c4231e669a`  
		Last Modified: Fri, 21 Dec 2018 04:35:55 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:a55d5d84247e310ded63a7b6f107b06a4ce9023066e62404987fadf96498fb09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28071417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedf55ee620747a7d3136fe2394607d17a63e0dad560fb0b68901dadc3c2b684`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:04:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 21 Dec 2018 10:04:29 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 10:04:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 21 Dec 2018 10:04:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 21 Dec 2018 10:04:35 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 21 Dec 2018 10:04:35 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 10:04:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Dec 2018 10:04:36 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Dec 2018 10:04:36 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Dec 2018 10:04:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Dec 2018 10:04:42 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Dec 2018 10:04:44 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Fri, 21 Dec 2018 10:04:44 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Dec 2018 10:04:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Dec 2018 10:04:46 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Dec 2018 10:04:47 GMT
COPY file:cb4fc25b97e1039b2b6a440d7d5b760e4eb5f1a03619f66e3f9de81e6d64bdb2 in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:04:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:04:47 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 21 Dec 2018 10:04:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab64444caf45bbb793ef18b5c0e7b74c2b8c8551e0f55f53a08cae7dc01ec860`  
		Last Modified: Fri, 21 Dec 2018 10:06:01 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d248451554e42bf0a765d545e7f6631f86522c70474e24fd4e56e5ea5e91b3af`  
		Last Modified: Fri, 21 Dec 2018 10:06:01 GMT  
		Size: 9.0 KB (8982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0646116f2c7141189a608149c25e63c052891fafc8675200281f1802af79ecf5`  
		Last Modified: Fri, 21 Dec 2018 10:06:06 GMT  
		Size: 16.3 MB (16308465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bff0d2fd1c865ce98a19cc222bd9761a33362c9ac59c30cc0c909a31796f55`  
		Last Modified: Fri, 21 Dec 2018 10:06:01 GMT  
		Size: 9.6 MB (9601743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17153dc143ea2f55591479ca018161cfcf518ea4d0beaa1eb09193e169e8de87`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b75ee3253e69341573b229737e08aa92afbb888cc3451dd45f211ee5bb58119`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300a497c65e1dd810a436dbe3072f26617545049f2d10c19c7a21579b2c6292d`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e9ef34b871cf6de91feac5dc93ce94eac8124be590cf26ed051d3a60896b4`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:0bcac2e3ead3d70ebcd225c17fffe5ab2514a803ff76194e1ac43a51bd7db62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28001891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645b9b66fbcaced95ac2befd2630fce1dbb6730f4e0047a774917a8a08073d48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:00:49 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 21 Dec 2018 11:00:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 11:00:59 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 21 Dec 2018 11:01:00 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 21 Dec 2018 11:01:00 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 21 Dec 2018 11:01:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:01:02 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Dec 2018 11:01:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Dec 2018 11:01:04 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Dec 2018 11:01:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Dec 2018 11:01:13 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Dec 2018 11:01:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Fri, 21 Dec 2018 11:01:16 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Dec 2018 11:01:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Dec 2018 11:01:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Dec 2018 11:01:21 GMT
COPY file:cb4fc25b97e1039b2b6a440d7d5b760e4eb5f1a03619f66e3f9de81e6d64bdb2 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:01:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:01:22 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 21 Dec 2018 11:01:23 GMT
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
	-	`sha256:523476b64ae3790b9456ce2710ea0581c6ac05c4b48210b137e2f18670c166e6`  
		Last Modified: Fri, 21 Dec 2018 11:04:23 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ffda0d70e8624e96ea7e4ca5d068e7a5345448e3bf8049b774208dbdbb7505`  
		Last Modified: Fri, 21 Dec 2018 11:04:23 GMT  
		Size: 8.9 KB (8937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fbc4a5b954e216f9d39bf64175ed3dc5099d5d1f0c1fa3839f3401e19e001`  
		Last Modified: Fri, 21 Dec 2018 11:04:28 GMT  
		Size: 16.3 MB (16285593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281587f0aebbe949d71cdbede9f2907e404596337577fee7e924a131dcbb042c`  
		Last Modified: Fri, 21 Dec 2018 11:04:23 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33ae8f8484adeaebed4061789713fc45925c36c3d30a7357fa0423cb80d7913`  
		Last Modified: Fri, 21 Dec 2018 11:04:21 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c03ee5a607df8b10c53612ed4b9f9688aab6ae4f3884b5385ab09f1ee6e2538`  
		Last Modified: Fri, 21 Dec 2018 11:04:21 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835488cfb548000a8b884b4d970aa92cb17e78b796c7a23b19f7638d198828f7`  
		Last Modified: Fri, 21 Dec 2018 11:04:21 GMT  
		Size: 104.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77010709582a2966cda608040ac813400ca40fa0839e606a0589c4935a4bbdac`  
		Last Modified: Fri, 21 Dec 2018 11:04:21 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:812a68f32c906cd97e9281d1f7a65f3c8476a59059eef1c4732d6979e69341b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30764965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1522c4bf032e2c192606c75df2755aa6667ce5e0e423cf44196e87628fda088b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 16:50:45 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 21 Dec 2018 16:50:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 16:50:48 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 21 Dec 2018 16:50:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 21 Dec 2018 16:50:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 21 Dec 2018 16:50:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 16:50:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Dec 2018 16:50:49 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Dec 2018 16:50:50 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Dec 2018 16:50:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Dec 2018 16:50:55 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Dec 2018 16:50:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Fri, 21 Dec 2018 16:50:56 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Dec 2018 16:50:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Dec 2018 16:50:58 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Dec 2018 16:50:58 GMT
COPY file:cb4fc25b97e1039b2b6a440d7d5b760e4eb5f1a03619f66e3f9de81e6d64bdb2 in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:50:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:50:58 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 21 Dec 2018 16:50:59 GMT
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
	-	`sha256:0de925c97b027e8fdfe6bf1e1de011569f9d868cdab8c02cd0ae3925bcd65090`  
		Last Modified: Fri, 21 Dec 2018 16:52:15 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd0bbb985f6e0f7db2be59990c3766f68a826115e8445540ddc343ff0828c4d`  
		Last Modified: Fri, 21 Dec 2018 16:52:15 GMT  
		Size: 9.1 KB (9123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fa01ef36889c76f2033a59943b2b7e1e24abe597aa2013f608de0a322cc353`  
		Last Modified: Fri, 21 Dec 2018 16:52:18 GMT  
		Size: 18.9 MB (18868391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d12d494f959c1f4dcc265531d023f182c4e54e282fddc604e5f623033975fb`  
		Last Modified: Fri, 21 Dec 2018 16:52:15 GMT  
		Size: 9.6 MB (9609525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aff21b7aae5bf11000db771724bd6d7d00a3d2b24db7a92c5cedffa4fb3b4b`  
		Last Modified: Fri, 21 Dec 2018 16:52:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b42bb21011016e7561214b95d4439bb353a6ecce063d198897d9bae1e8bee3`  
		Last Modified: Fri, 21 Dec 2018 16:52:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6c0f7773b513cd7a51fceaba10d339484458ba1fc3f2a84977a6ad62678125`  
		Last Modified: Fri, 21 Dec 2018 16:52:14 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d13a92fbb057dac0ccfd5bf6d17f391abcc08c9d9236e0865ebe1b706f108`  
		Last Modified: Fri, 21 Dec 2018 16:52:14 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:44c3ea03e87bf86ded06baf0913ec44f249a4b79bf4946d08fbcbe65a19251d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28299654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b1a45429bd27b443b5b6a8c2bf0f52fb39bfcf81ef35c8794cf760291c9140`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:41:49 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 21 Dec 2018 10:41:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 10:42:15 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 21 Dec 2018 10:42:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 21 Dec 2018 10:42:25 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 21 Dec 2018 10:42:28 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 10:42:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Dec 2018 10:42:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Dec 2018 10:42:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Dec 2018 10:42:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Dec 2018 10:42:45 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Dec 2018 10:42:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Fri, 21 Dec 2018 10:42:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Dec 2018 10:42:55 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Dec 2018 10:42:59 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Dec 2018 10:43:00 GMT
COPY file:cb4fc25b97e1039b2b6a440d7d5b760e4eb5f1a03619f66e3f9de81e6d64bdb2 in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:43:04 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 21 Dec 2018 10:43:06 GMT
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
	-	`sha256:039808058111d922a3b0a15d82020b061581ae5d580b398b3746d9332cbc8a57`  
		Last Modified: Fri, 21 Dec 2018 10:47:27 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67754a47bedfac242cca3b24ab4f82aed2849197305767fc40b12378b9d8f43`  
		Last Modified: Fri, 21 Dec 2018 10:47:26 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbbbbe1d394069f7638eb6e6e578b34d8d54f8e45415543cbc2879863292cf2`  
		Last Modified: Fri, 21 Dec 2018 10:47:33 GMT  
		Size: 16.5 MB (16486802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556a4d8ab5b681f5265de874f22abde94989a324f1a0e7876dcceeaa84089904`  
		Last Modified: Fri, 21 Dec 2018 10:47:25 GMT  
		Size: 9.6 MB (9602128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c424758b1e25c32ca428365dcb2077f93335059793a01cee48b1d3be03ae59d`  
		Last Modified: Fri, 21 Dec 2018 10:47:23 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8add30a9084bf6da35d006bd3a9a9218261560a6d22c0df0d072845356381828`  
		Last Modified: Fri, 21 Dec 2018 10:47:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff703d46eb026a7fa2ca063558adc588a657b8f1e8eafc084b0b2572f8ac51e`  
		Last Modified: Fri, 21 Dec 2018 10:47:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c98fb343ea9a78ba0bf6ce20c3f9752464ccf3db6a51f6f5aa281a6ed0542d3`  
		Last Modified: Fri, 21 Dec 2018 10:47:23 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:7c9980015ba94f5ada673f7d719120c96118e0edc94f4b6a732b1b35904bd007
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28472278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490173d4b8237c14563f2c073c7982c6a09f3e247ff41e41b84270690f54dac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:10:51 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 21 Dec 2018 14:10:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 14:10:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 21 Dec 2018 14:10:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 21 Dec 2018 14:10:54 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 21 Dec 2018 14:10:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 14:10:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Dec 2018 14:10:55 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Dec 2018 14:10:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Dec 2018 14:11:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Dec 2018 14:11:01 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Dec 2018 14:11:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Fri, 21 Dec 2018 14:11:02 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Dec 2018 14:11:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Dec 2018 14:11:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Dec 2018 14:11:04 GMT
COPY file:cb4fc25b97e1039b2b6a440d7d5b760e4eb5f1a03619f66e3f9de81e6d64bdb2 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:11:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:11:04 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 21 Dec 2018 14:11:04 GMT
CMD ["rabbitmq-server"]
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
	-	`sha256:221e56f587bde022f918b77b0cfa272da8ed52fd1743862d380aaecceef00254`  
		Last Modified: Fri, 21 Dec 2018 14:12:33 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35ef1479ecfb08dec0cd5ef6f3d9927a9052602367ebac2f0b5b73bda3b2364`  
		Last Modified: Fri, 21 Dec 2018 14:12:33 GMT  
		Size: 9.2 KB (9214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683f5fbc0e7abe529fac34fe9f7ebd7fb3b7456816fd7a57ac8159afecb69a7`  
		Last Modified: Fri, 21 Dec 2018 14:12:35 GMT  
		Size: 16.5 MB (16547621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6aa1af06e612ff8654907a129bbb0ffe1df13ade339ae4557e2b4eec4767d3`  
		Last Modified: Fri, 21 Dec 2018 14:12:33 GMT  
		Size: 9.6 MB (9601238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a0c57a411a221aab97b7cb600fbd4e094b13f0c5169f47a9c56b9fa0193205`  
		Last Modified: Fri, 21 Dec 2018 14:12:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6282f95c6a6433dc03a49ef551055c11dc22f184d28554640cecbc16a7769cf`  
		Last Modified: Fri, 21 Dec 2018 14:12:32 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c737723f1256d2425d39a28d219a87b505a37ef17be8c76cf7dc016135661b`  
		Last Modified: Fri, 21 Dec 2018 14:12:32 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e959af3981055fec8baf65ad8910e39020c3fcc7f40c3bfa9bb9d1502b6082`  
		Last Modified: Fri, 21 Dec 2018 14:12:32 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
