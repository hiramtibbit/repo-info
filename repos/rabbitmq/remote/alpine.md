## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:19cb6e953c7eec26a30e07ab3eb29a1e065e7bbbbb7e693024313bb0eab18e5e
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
$ docker pull rabbitmq@sha256:609fd5cf9f03d7ee85f21781cf33f1bf595bb25a5a181d3de86ea65340df7af0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28072016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630b4354768478a89368c80f7a9eecd0cd990a45920dd6f996a905805c65881d`
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
# Tue, 30 Oct 2018 07:52:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Tue, 30 Oct 2018 07:52:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 Oct 2018 07:52:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 Oct 2018 07:52:31 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 30 Oct 2018 07:52:31 GMT
COPY file:9d158602bc852b6c8d3d001f7bd3f3f33eab5c5bd3cf4cb59181925ec76ac618 in /usr/local/bin/ 
# Tue, 30 Oct 2018 07:52:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 07:52:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 30 Oct 2018 07:52:32 GMT
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
	-	`sha256:1883f9872fe951e86d3cb8f9f8fd7b7ba535b70ef9a294ca94706ceb21c4cbe5`  
		Last Modified: Tue, 30 Oct 2018 07:53:49 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92aef9ffc285c076fac8307a50658f7e6eb7c5220f90e281315c6584242b38a`  
		Last Modified: Tue, 30 Oct 2018 07:53:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7426b7e4592de454332b99d04a02f97d6e09eca8d04178323deb684261c01b13`  
		Last Modified: Tue, 30 Oct 2018 07:53:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa94b06eafa799a9bb714419fbb24dee9d159b52849bf9d847983938e522f33`  
		Last Modified: Tue, 30 Oct 2018 07:53:49 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:31f796623d3c16ed441d830800ccee26cf4aea87faae44bd9c225afaf5e4a809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28001807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a76ec5addb285d7df3e96b1b9ed1644d024f874a3654ff29da66a108a3e58b7`
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
# Tue, 30 Oct 2018 09:31:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Tue, 30 Oct 2018 09:31:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 Oct 2018 09:31:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 Oct 2018 09:31:59 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 30 Oct 2018 09:32:00 GMT
COPY file:9d158602bc852b6c8d3d001f7bd3f3f33eab5c5bd3cf4cb59181925ec76ac618 in /usr/local/bin/ 
# Tue, 30 Oct 2018 09:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 09:32:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 30 Oct 2018 09:32:04 GMT
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
	-	`sha256:52257b8d90ff1cfbad65bf7f08c608d12761160006b2f026798dddfe3853c041`  
		Last Modified: Tue, 30 Oct 2018 09:40:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c23ab306c67e50d2db03b2e6a886cb434bbe7f6c24332a7d5496babd165d1d5`  
		Last Modified: Tue, 30 Oct 2018 09:40:07 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0c02da19c9b5b65f2edffbb63f066d348613fb4a50fe0c31d7572cd227979e`  
		Last Modified: Tue, 30 Oct 2018 09:40:07 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdab5381facf1d3f049c2509affc0d4ff6bd24d4ef7e925aec540689ec081db`  
		Last Modified: Tue, 30 Oct 2018 09:40:07 GMT  
		Size: 4.4 KB (4429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:446a7c96be79ebf9e7fb5a894ca8c2c1170355b7f57cb4ace637b42c87d51331
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30764806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdeef1d7e1b35110052261daac7b67624a9fa2ecbdaf49acc60da55caa1d28f`
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
# Tue, 30 Oct 2018 11:18:46 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Tue, 30 Oct 2018 11:18:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 Oct 2018 11:18:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 Oct 2018 11:18:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 30 Oct 2018 11:18:47 GMT
COPY file:9d158602bc852b6c8d3d001f7bd3f3f33eab5c5bd3cf4cb59181925ec76ac618 in /usr/local/bin/ 
# Tue, 30 Oct 2018 11:18:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 11:18:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 30 Oct 2018 11:18:48 GMT
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
	-	`sha256:6de9577c4c6d5350a3730003dc88e5c8ec6a2a4b13f1f0dd5b6a9bbfeac2adf5`  
		Last Modified: Tue, 30 Oct 2018 11:22:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba98796f20481f0832d45086be398af94e4ac3b23e505dd503bce27c1036e5f0`  
		Last Modified: Tue, 30 Oct 2018 11:22:10 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2753dc1e9e80d681d357c36ff5465148b29703da4872127b8eb1f5da94b5dc1`  
		Last Modified: Tue, 30 Oct 2018 11:22:10 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013dee46f5c0072a75a5a95860f5a821ab9e104b0b9b13ce47a1886849c1739c`  
		Last Modified: Tue, 30 Oct 2018 11:22:10 GMT  
		Size: 4.4 KB (4426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:79519fc2d711533173ebb78a21a800ad0a44dc8d19f4927c08f3c1011a71c6d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28300080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e1bc3f0547b2266c15bfca83a1edf01bc6b7dd4562d8e4d848e4cb9d901a33`
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
# Tue, 30 Oct 2018 10:20:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Tue, 30 Oct 2018 10:20:19 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 Oct 2018 10:20:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 Oct 2018 10:20:27 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 30 Oct 2018 10:20:29 GMT
COPY file:9d158602bc852b6c8d3d001f7bd3f3f33eab5c5bd3cf4cb59181925ec76ac618 in /usr/local/bin/ 
# Tue, 30 Oct 2018 10:20:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 10:20:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 30 Oct 2018 10:20:33 GMT
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
	-	`sha256:462b9947287fba6563bdf844b6f9deed5d3163c181970ed172c3f4f2f5fc55f8`  
		Last Modified: Tue, 30 Oct 2018 10:37:30 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e5908bdfa213a2ff7ba66ee587cbbd0e956cafcd0a65581d21fe3c56049859`  
		Last Modified: Tue, 30 Oct 2018 10:37:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcce4e0792e3681812835f3a43d55f1b18afbdba0ce793ae2a305361e4eb727`  
		Last Modified: Tue, 30 Oct 2018 10:37:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371d0cbffd0ae0710029211ec573f373eaba8a4c745f99b490249e9a71392e94`  
		Last Modified: Tue, 30 Oct 2018 10:37:30 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:62b59217e993cabee91acd56cec8cad2f98e60faa046b9fabcae31e573aaa961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28472231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddf35cf93560f0f080b290feb4951c9b12c3b9a4d0785e617bd1139acc92255`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:59:13 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:59:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:59:16 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:59:21 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:59:21 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:59:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 11:53:37 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 11:53:37 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 11:53:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 11:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 Oct 2018 12:14:46 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq /tmp/rabbitmq-ssl
# Tue, 30 Oct 2018 12:14:47 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 Oct 2018 12:14:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 Oct 2018 12:14:48 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 30 Oct 2018 12:14:48 GMT
COPY file:9d158602bc852b6c8d3d001f7bd3f3f33eab5c5bd3cf4cb59181925ec76ac618 in /usr/local/bin/ 
# Tue, 30 Oct 2018 12:14:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 12:14:49 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 30 Oct 2018 12:14:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddbf87a168e8733a785b17536a3eb54aedb277a2d0e0f52c86314a84faef4fd`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19950773dd5ab0e23347cb5381921e23f6115b1768ce3e049e87707941a71d8`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ce7cec2dc244c5557f2c3bc9caf5e1ba6c76a377a8b7ad45401ca96e6bfecd`  
		Last Modified: Wed, 12 Sep 2018 12:01:06 GMT  
		Size: 16.5 MB (16547705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ca1aab729df24b1020125316cfe46a5ab5e53d083d1b8d443b7b7450af9c0f`  
		Last Modified: Sat, 22 Sep 2018 11:55:36 GMT  
		Size: 9.6 MB (9601190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcb5f216906475b3e080171270e170a12f718af8edb7292ca61f6afe64d5ee6`  
		Last Modified: Tue, 30 Oct 2018 12:16:44 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eaaf32923359319a5a5cd42d3e98842a78b52914f41dd12da768e30aeb11f0`  
		Last Modified: Tue, 30 Oct 2018 12:16:45 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728ca50649bf6e2efa43e24ea005f852078318f48c39fce8ce33de3233e6025e`  
		Last Modified: Tue, 30 Oct 2018 12:16:45 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960b391b68c5be01526555012de213e680c5e9776a654ba485e41d7f211709b9`  
		Last Modified: Tue, 30 Oct 2018 12:16:44 GMT  
		Size: 4.4 KB (4426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
