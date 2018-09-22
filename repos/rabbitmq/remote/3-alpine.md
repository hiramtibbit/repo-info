## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:ade7579fe04a80226f6132eb1c04922e4027f5f5afff116535e56b3e7dc855ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f6d2ffafc5de292fee80127044662f6050db643eaf1c676bfc43b8ccc7519d8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30541256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e247dd4271d82186e4af26206413d6f8284634fc0ba64787ea190f62c90fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:f0564e3fcbe7d7c1b040605c6f602fdce17210c04936f5caa3bb410233805ffe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28071724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6cda7206676fcde8263b1eea906da2874d621547596887aa8cdee402176a60e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:20273012056ba9f2e13589c0b151ac9a23b8d0cbf3eae28f728e615f8e339a2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28001524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcce1a05a40d92293a3069a46f66bc9bc309432a668184953a91358e7935d915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:8aacfd4797b3600aff81e45d47edb087004f0901cf8357b9808f8929ad607d03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30764527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc313626eac53a4ebe49216499ddbc2f89c2d7838c8ad7a642f10afdfd4f28e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:56:45 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 16:56:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 16:56:48 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 16:56:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 10:55:06 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 10:55:06 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 10:55:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 10:55:12 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 10:55:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 10:55:13 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 10:55:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 10:55:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 10:55:14 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 10:55:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 10:55:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 10:55:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e27f0211a0ac7e9b4d031a8ae3842bbcbd2fe5e0c67e195888f9910cb2f53`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9cdf242dd2dd8af9fe8a1f1b06d07423cb042e98d120ffbb156012f1bcf33c`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 9.1 KB (9125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2298b98abbf8927784e111ad51b75a75de27173f8e35f46961b5d992a08f63`  
		Last Modified: Wed, 12 Sep 2018 16:58:01 GMT  
		Size: 18.9 MB (18868324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c10b3606cf355b4604e27991d15df94e65c13175712e5c561bb4fc306e4a6b`  
		Last Modified: Sat, 22 Sep 2018 10:56:54 GMT  
		Size: 9.6 MB (9609529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0611e03003bf31ab1107bc289839e55abc06387a9aa33499ebd80dff921eb8e`  
		Last Modified: Sat, 22 Sep 2018 10:56:53 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca32e9b0437114da41034c83306237706f1de43db311c9b3c9f9adc96c5aa10`  
		Last Modified: Sat, 22 Sep 2018 10:56:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bd738797eab191eb35f3aef876eb01dd8ba0b6e16fcaa0904c86d949def7a9`  
		Last Modified: Sat, 22 Sep 2018 10:56:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1ab5c778171a4733c746ce1b239387c05540bc276c64c377add93ea9b61a49`  
		Last Modified: Sat, 22 Sep 2018 10:56:53 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d495426699987608d4d4bf2e1884f1d65264a98061b8cdd2dbe93048990836e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28299790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4652f4a1b6dad8d894e66e7e7d26d0b0a524e06aafafb5f1f3cc1f34dca6b0b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
