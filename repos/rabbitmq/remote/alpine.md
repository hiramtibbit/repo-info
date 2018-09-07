## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:a9c08428db36ab93e383efb765d8481ae441d53a563aa0ce348c5c6f9aa43a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:130552b0125b5e117c399e2a970ebcf3a00d8b1f56ab28a24868f3e91359df31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31791224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4556ac3ae3a753310618c4211fd0afb85a639b06c6020d63a16aa2c81b44ea2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 05:22:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:22:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 05 Sep 2018 05:22:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 05 Sep 2018 05:22:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:22:57 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 05 Sep 2018 05:22:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:22:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 05:22:58 GMT
ENV RABBITMQ_VERSION=3.7.7
# Wed, 05 Sep 2018 05:22:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Wed, 05 Sep 2018 05:23:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 05 Sep 2018 05:23:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 05:23:05 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Wed, 05 Sep 2018 05:23:05 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 05:23:06 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 05:23:07 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 05 Sep 2018 05:23:07 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Wed, 05 Sep 2018 05:23:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 05:23:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 05:23:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685bc743da563a6e8d177352638220bd5bd701eaee214d1f6fd2c3ab5883612d`  
		Last Modified: Wed, 05 Sep 2018 05:25:15 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff423a0996ffbb14cbd625e12c414e2c2c8b2c8ebbba71634df83503253269b0`  
		Last Modified: Wed, 05 Sep 2018 05:25:15 GMT  
		Size: 9.1 KB (9074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd4ea7c259e5d85eea60a41026facdc9bb3be6cf61d4f1371056adc1c218196`  
		Last Modified: Wed, 05 Sep 2018 05:25:18 GMT  
		Size: 18.7 MB (18708986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd43a7666030eeee25fe34962724fd07d0efa1365f47a04c763c0515e448ecae`  
		Last Modified: Wed, 05 Sep 2018 05:25:17 GMT  
		Size: 10.9 MB (10860713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df915c755fc340c511ec5435a538a3047b2b6d16a57bf53cfca8601a4780864`  
		Last Modified: Wed, 05 Sep 2018 05:25:14 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ebcfb1cc58ec6de0e0ed56def4467f6e783dfd1ef350394f390e1aacfbbd2d`  
		Last Modified: Wed, 05 Sep 2018 05:25:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c5355a311b9c1d4a3b69fd633d654cae14046e2aaaf9fb18dc40f4dde3e551`  
		Last Modified: Wed, 05 Sep 2018 05:25:14 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd97543658a1fbed212d79d80bb3b4b6872fc85172fd42acbdd5dc3aec24a8d`  
		Last Modified: Wed, 05 Sep 2018 05:25:14 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:9de88dff341d71a5d7b573936484f776a1211e54b013387b4bc43a08ba2689e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29221878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03fe901b1d2300ddd7f946f44267d1e38d69582139cb763bf8c2e637c0e0500`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:31:21 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 11 Jul 2018 09:31:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 09:31:32 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 11 Jul 2018 09:31:33 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 11 Jul 2018 09:31:33 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 11 Jul 2018 09:31:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jul 2018 09:31:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 11 Jul 2018 09:31:35 GMT
ENV RABBITMQ_VERSION=3.7.7
# Wed, 11 Jul 2018 09:31:36 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Wed, 01 Aug 2018 10:29:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 01 Aug 2018 10:29:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 01 Aug 2018 10:29:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Wed, 01 Aug 2018 10:29:30 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 01 Aug 2018 10:29:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 01 Aug 2018 10:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 01 Aug 2018 10:29:44 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Wed, 01 Aug 2018 10:29:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 10:29:49 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 01 Aug 2018 10:29:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5badc5e7d94ed765385fefc3b0ff46d21dd49d4b8a83637dcb18e9e5ec98b613`  
		Last Modified: Wed, 11 Jul 2018 09:34:17 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4a3ab275eff3f1a137597336d806ec46342bffee98de57a67271be528aacba`  
		Last Modified: Wed, 11 Jul 2018 09:34:16 GMT  
		Size: 8.9 KB (8930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18487c8cbd0ff1ab4a3e46d12e4368678e8d62975f056200c7fbe6e2f61a19b1`  
		Last Modified: Wed, 11 Jul 2018 09:34:21 GMT  
		Size: 16.3 MB (16283983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d1565b13afbe225eb5e034bf0be386d470cfa98676ae4ffecd7e4b5f92ec8a`  
		Last Modified: Wed, 01 Aug 2018 10:40:20 GMT  
		Size: 10.8 MB (10823364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c524421bee203068f78fa64621e5d89ac80c2031c105dcd5ed3ede41071202`  
		Last Modified: Wed, 01 Aug 2018 10:40:18 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05e30819d7ab53061536120c856c57e2de29a9577347c31dc20dbeebeb12244`  
		Last Modified: Wed, 01 Aug 2018 10:40:18 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ba7de4be1ed39a3e26a6e611fe6201be0319af37b596bc64a18e3723772671`  
		Last Modified: Wed, 01 Aug 2018 10:40:18 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c66700c4a9c4e3487eaeb598eb6fa3fbab2e16a3cb2d49a683919830e01e6f2`  
		Last Modified: Wed, 01 Aug 2018 10:40:18 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:176083ea86e318ce74e1e44b8ea54e2f66cdf44df5bdc0be5a814542753ffc84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31992029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7265fb0c0d5d71577c60d1f76d8d547983f7a2c917b6a09b8f95b5e469829178`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 07 Sep 2018 00:48:29 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 07 Sep 2018 00:48:30 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 07 Sep 2018 00:48:32 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 07 Sep 2018 00:48:33 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 07 Sep 2018 00:48:33 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 07 Sep 2018 00:48:33 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Sep 2018 00:48:33 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 07 Sep 2018 00:48:33 GMT
ENV RABBITMQ_VERSION=3.7.7
# Fri, 07 Sep 2018 00:48:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Fri, 07 Sep 2018 00:48:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 07 Sep 2018 00:48:39 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Sep 2018 00:48:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 07 Sep 2018 00:48:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Sep 2018 00:48:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Sep 2018 00:48:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Sep 2018 00:48:42 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 07 Sep 2018 00:48:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 00:48:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Sep 2018 00:48:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93395322a9ab7b8303d2b2677ddc38efbfc791a55b6d7c4214fa9e200ea016b4`  
		Last Modified: Fri, 07 Sep 2018 00:51:00 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc5f6e67f8e1f8d393156650cbf2e615131464d202cc846320322d9b129039a`  
		Last Modified: Fri, 07 Sep 2018 00:51:00 GMT  
		Size: 9.1 KB (9118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a58d70b5da167499dd68a10af69e807ee4c4c8e765ce576e4633c1ea5e8b70`  
		Last Modified: Fri, 07 Sep 2018 00:51:03 GMT  
		Size: 18.9 MB (18868305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3d203e48ea2f34ea9399acf851cf455b4a53b4174d5197a5d5e32c7cbc04eb`  
		Last Modified: Fri, 07 Sep 2018 00:51:00 GMT  
		Size: 10.8 MB (10837600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c6c9ef7df4dfc5be4160a5ed953c831b477fba8c84ace17969cccca6e74e7`  
		Last Modified: Fri, 07 Sep 2018 00:51:00 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36a4c7571a02bfee2c6df745f2cea355ee9c22a6e76340b669abbba71cc9b86`  
		Last Modified: Fri, 07 Sep 2018 00:50:59 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcb1126bd9d96852bb2fe203fac74d9b56e2a574b28026403c00b2d734e6a95`  
		Last Modified: Fri, 07 Sep 2018 00:50:59 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d60d70281fb4cf10ad0af26f242d395b9c5c4410acd0f598b0c32158505b4ab`  
		Last Modified: Fri, 07 Sep 2018 00:50:59 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:11aa05726948ca2385f60da737dec9407122415c62f31e9410422407b4bf8000
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29523774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594d22a45d5990e3cf860fe51474340a1d8e52062bd39a03cb314c484e58fbd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:25:59 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 11 Jul 2018 10:26:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 10:26:18 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 11 Jul 2018 10:26:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 11 Jul 2018 10:26:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 11 Jul 2018 10:26:20 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jul 2018 10:26:21 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 11 Jul 2018 10:26:22 GMT
ENV RABBITMQ_VERSION=3.7.7
# Wed, 11 Jul 2018 10:26:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Wed, 01 Aug 2018 14:20:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 01 Aug 2018 14:20:46 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 01 Aug 2018 14:21:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Wed, 01 Aug 2018 14:21:10 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 01 Aug 2018 14:21:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 01 Aug 2018 14:21:52 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 01 Aug 2018 14:22:01 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Wed, 01 Aug 2018 14:22:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 14:22:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 01 Aug 2018 14:22:22 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f021abfdb3c8f50ac16e1860d55daec37d1d07cb9ddf0f8e4e4bf4509c99a5d6`  
		Last Modified: Wed, 11 Jul 2018 10:30:10 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2453f665d51ab7728b0d24b10dc671e8e45ce097be5516dc629fefafd187a428`  
		Last Modified: Wed, 11 Jul 2018 10:30:09 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3800d611831cf7d9849a4365b299670544c785575502ef9f5ac3ee7ef89ee786`  
		Last Modified: Wed, 11 Jul 2018 10:30:12 GMT  
		Size: 16.5 MB (16484955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692340c486fabc6d510760e19544c529781e4bbb55541312fa97286982f6a694`  
		Last Modified: Wed, 01 Aug 2018 14:50:35 GMT  
		Size: 10.8 MB (10828281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287ec92901e2193be97186dc3a59cb056bc1c4c17ea9748e8fe9fc031970a772`  
		Last Modified: Wed, 01 Aug 2018 14:50:29 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad57bffd50fae32198eaa153c98506bb064430d50b0d4f2e2fbe16b23b7a7e1b`  
		Last Modified: Wed, 01 Aug 2018 14:50:29 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495a1d35ffff21945426fcfdb927b1e827d471792ed491e3b7072a29db045efc`  
		Last Modified: Wed, 01 Aug 2018 14:50:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31fde486f89d57fcd0b7e7c6e2ef844194b856c99dd8fc6b5b09bd94c28abbf`  
		Last Modified: Wed, 01 Aug 2018 14:50:31 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:b3e0dcbc546026e978b93ee32f5eea2326d7d21c3a28dd59306d2cb84b0fc811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29656940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73aa3d52cee6d57a2147f69465958172b9344725dae17f637c3121e2a1138d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:52:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 11 Jul 2018 11:52:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 11 Jul 2018 11:52:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 11 Jul 2018 11:52:55 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 11 Jul 2018 11:52:55 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 11 Jul 2018 11:52:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jul 2018 11:52:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 11 Jul 2018 11:52:56 GMT
ENV RABBITMQ_VERSION=3.7.7
# Wed, 11 Jul 2018 11:52:56 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Wed, 01 Aug 2018 12:13:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 01 Aug 2018 12:13:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 01 Aug 2018 12:13:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Wed, 01 Aug 2018 12:13:24 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 01 Aug 2018 12:13:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 01 Aug 2018 12:13:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 01 Aug 2018 12:13:25 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Wed, 01 Aug 2018 12:13:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:13:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 01 Aug 2018 12:13:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9740b6c9196071c7dceba27788d6b59e1f399f52aad064f330c173ecfa251a66`  
		Last Modified: Wed, 11 Jul 2018 11:54:03 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee41179588205bf61b0b48a7907be29fc6fc69f043dd4f6b5524e611717e362`  
		Last Modified: Wed, 11 Jul 2018 11:54:03 GMT  
		Size: 9.2 KB (9235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2309c2ed29930b8f07f3a0c22158aff74c27869f8d753ebba9a1ae1f4df4221`  
		Last Modified: Wed, 11 Jul 2018 11:54:05 GMT  
		Size: 16.5 MB (16545572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ea45009f6446a3f31fbbb22580828e336f86944c805b2bf7c47a017892905e`  
		Last Modified: Wed, 01 Aug 2018 12:17:19 GMT  
		Size: 10.8 MB (10788579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25baf3b7e9464d77347affcc1d0acb704a0a94b83aad71727c9b69ae715060`  
		Last Modified: Wed, 01 Aug 2018 12:17:18 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc525b9fd9b1f03c3e8a3704fd0dea46294552d49169324b2a64832783bc9ea`  
		Last Modified: Wed, 01 Aug 2018 12:17:18 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87930e1e051256cfc4b17254495cefdca42fec70cf882b7e2bb6d65be2c8c448`  
		Last Modified: Wed, 01 Aug 2018 12:17:18 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a72e30d2636061eb99b459795c75f97dc38c03d14c28743596c68750c50f1`  
		Last Modified: Wed, 01 Aug 2018 12:17:18 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
