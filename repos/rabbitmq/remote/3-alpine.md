## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:feae1cd9150b823d876f40833101b495da0914c5a8ee1e13f703ee7d2c60feea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4f4e27ee48cba03203b149b935198175dc7a53c47df34ff9083425e94d581bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30237833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d38c4f4a2b4a0da8484de2d08fd1269cad9e3bbc21c56ae7b3ef01379e7347a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:55:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:55:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:55:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:56:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:56:02 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 10 May 2018 20:38:34 GMT
ENV RABBITMQ_VERSION=3.7.5
# Thu, 10 May 2018 20:38:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Wed, 30 May 2018 21:09:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 30 May 2018 21:09:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 30 May 2018 21:09:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Wed, 30 May 2018 21:09:24 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 30 May 2018 21:09:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 30 May 2018 21:09:26 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 30 May 2018 21:09:26 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Wed, 30 May 2018 21:09:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 May 2018 21:09:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 30 May 2018 21:09:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387f4b4c52b95160763db7d1266075905ba96d0f5bdcb562257fb150ec2c52e`  
		Last Modified: Wed, 10 Jan 2018 05:02:45 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba8c403a5b6fbb5651fd71cc7e2c96605165864b4ee509d2b6676e2958b8164`  
		Last Modified: Wed, 10 Jan 2018 05:02:44 GMT  
		Size: 8.5 KB (8546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4258fc50c52315f5cd0eec92f98862c11ffd3b34dd6404cfb9a921fb05821600`  
		Last Modified: Wed, 10 Jan 2018 05:02:47 GMT  
		Size: 18.7 MB (18652404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b35dadf0b3b9fac94ff155cb144a88f038bd5f5e582a40c75d4e7690edb139`  
		Last Modified: Wed, 30 May 2018 21:11:52 GMT  
		Size: 9.5 MB (9505433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3073e13ed244c52715a75e023690e51ba734f37b75185808014a54c2880590c1`  
		Last Modified: Wed, 30 May 2018 21:11:51 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f489bf097848fecdc4607f4414808869ca59ab87fada865c322dec707f6efe`  
		Last Modified: Wed, 30 May 2018 21:11:51 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d0bb476e45086c2777bd4d9f3adeb2d28e1960b8b7037be4ecaf26ea337373`  
		Last Modified: Wed, 30 May 2018 21:11:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524af7e68cc21f37ecbe4d37383eeb6e9c534c51b3257da16c7e089ef6acb81c`  
		Last Modified: Wed, 30 May 2018 21:11:51 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:3a357e3dbf056b068bc24ff46167e42fc625d463dac200101b7d72bd339f936a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27753881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b49c818d99f7306e415811a8138e12b72db0393adaaed8a3ee750f2d28c1fb18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 11 May 2018 09:26:19 GMT
ENV RABBITMQ_VERSION=3.7.5
# Fri, 11 May 2018 09:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Thu, 31 May 2018 11:25:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 31 May 2018 11:25:29 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 31 May 2018 11:25:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 31 May 2018 11:25:32 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 31 May 2018 11:25:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 31 May 2018 11:25:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 31 May 2018 11:25:37 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 31 May 2018 11:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 11:25:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 31 May 2018 11:25:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e139398ec6184d8f529cae15df1b00e92300c64b107463bafa75cea125f388`  
		Last Modified: Thu, 31 May 2018 11:33:13 GMT  
		Size: 9.5 MB (9498189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743721b8ccd1cec17f339f890b74e85f323aa1e63e2a18c337630d20121678ec`  
		Last Modified: Thu, 31 May 2018 11:33:11 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6558b0a24c82e79b681b6383838ba34127f5e4be80966332320bc9b951108247`  
		Last Modified: Thu, 31 May 2018 11:33:11 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189eef8ca4a65e980ebe578c92fed44e31ff76533513e7678da239efba90dd6`  
		Last Modified: Thu, 31 May 2018 11:33:11 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbaeb698d53838bfeea618fd5ef22ec36fa136c7ab2bd770ea78b460924281d`  
		Last Modified: Thu, 31 May 2018 11:33:11 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:59c650ac30c7266d0891b94cefeae6c5a84f9013fa1387ee653f46b7d0664b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30465172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b06ecddc0d3e4056fda1bdf264bb28043abd654126434122b55fb278dfd75d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Thu, 31 May 2018 10:27:45 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 31 May 2018 10:27:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 31 May 2018 10:27:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 31 May 2018 10:27:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 31 May 2018 10:27:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 31 May 2018 10:27:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 May 2018 10:27:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 31 May 2018 10:27:56 GMT
ENV RABBITMQ_VERSION=3.7.5
# Thu, 31 May 2018 10:27:57 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Thu, 31 May 2018 10:28:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 31 May 2018 10:28:17 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 31 May 2018 10:28:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 31 May 2018 10:28:18 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 31 May 2018 10:28:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 31 May 2018 10:28:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 31 May 2018 10:28:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 31 May 2018 10:28:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 10:28:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 31 May 2018 10:28:20 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe0014f2b4a512adf21449356f7bf349b9a91935b62ab9663f76d2667cae3b`  
		Last Modified: Thu, 31 May 2018 10:33:57 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76efc926e075a89da83f43358e2af5a28a54ec8d4ff6d030613ddd34af12ae9`  
		Last Modified: Thu, 31 May 2018 10:33:55 GMT  
		Size: 8.7 KB (8651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d6478107650e4445b6ad9e3040b9ac50d21ec16aa4cfb92d1567e96358a7d2`  
		Last Modified: Thu, 31 May 2018 10:34:01 GMT  
		Size: 18.8 MB (18819624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f63d25e2b7069e280bc664b7457c8f555bc7b1e9c0f3e6038ef425ecd3d3b9`  
		Last Modified: Thu, 31 May 2018 10:33:55 GMT  
		Size: 9.5 MB (9504590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07170c7566600503d871c471dd9d814d0eb0ba6859acf0a972125736ddada3b2`  
		Last Modified: Thu, 31 May 2018 10:33:54 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76c991830b4da6e22993ed30fc45a9486ac31356616127157f946e35e543fae`  
		Last Modified: Thu, 31 May 2018 10:33:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9060b76935fba7b07e3a0c0c44e97740ee9227b8355db10edf18cb41cc0e145d`  
		Last Modified: Thu, 31 May 2018 10:33:52 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c801f437ec3c61bcdcca4f14f432ac7d19e235c36ecead48b720705eb1c123a`  
		Last Modified: Thu, 31 May 2018 10:33:52 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:26e27f6984b0faad6215788412a3e307517c93a5a55e1be0753c5080a7d699c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28051882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e55117046789dfa08bc3cd40cb885829a99217d34c11a0c9e4ca3ea880ce9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 12 May 2018 10:34:19 GMT
ENV RABBITMQ_VERSION=3.7.5
# Sat, 12 May 2018 10:34:20 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Thu, 31 May 2018 10:03:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 31 May 2018 10:03:43 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 31 May 2018 10:03:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 31 May 2018 10:03:46 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 31 May 2018 10:03:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 31 May 2018 10:03:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 31 May 2018 10:03:54 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 31 May 2018 10:03:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 10:03:58 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 31 May 2018 10:03:59 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94cf8fe549a1d159097076682f52cc13ba49e1556e15ab0e6b0136cb725d698`  
		Last Modified: Thu, 31 May 2018 10:09:02 GMT  
		Size: 9.5 MB (9498640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79d840151895fbb2f0cb46eff7ce31a2bd090b90fb0877be5dc026d7527ddea`  
		Last Modified: Thu, 31 May 2018 10:09:00 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70b55be55e85c48b298174f5ed3abb29485f892878c5940656bb955e78fd1c1`  
		Last Modified: Thu, 31 May 2018 10:09:01 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79d990d8aa004d2339f272982b177062ea61ce049cdeb9e16a19f39887acce9`  
		Last Modified: Thu, 31 May 2018 10:09:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9da63cda791b19b12fc9445be483f7af41054595397e2b908f4ee8d3663b305`  
		Last Modified: Thu, 31 May 2018 10:09:01 GMT  
		Size: 4.2 KB (4176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:7109d8c8e272d5daf3d408404631c41f0669d886c17b1b04f5999631d8f91b80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28214620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4029f6e5993043fd3ab05d39787177e6381401324e8ebb629837fde6412e6155`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 11 May 2018 12:23:43 GMT
ENV RABBITMQ_VERSION=3.7.5
# Fri, 11 May 2018 12:23:43 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Thu, 31 May 2018 13:45:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 31 May 2018 13:45:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 31 May 2018 13:45:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 31 May 2018 13:45:37 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 31 May 2018 13:45:38 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 31 May 2018 13:45:39 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 31 May 2018 13:45:39 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 31 May 2018 13:45:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 13:45:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 31 May 2018 13:45:40 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b2cca1fa855209739ebe508b3fcb914e7fc8b07b506a8ace0d0cc35e3a9bc9`  
		Last Modified: Thu, 31 May 2018 13:48:43 GMT  
		Size: 9.5 MB (9498928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a949258c4cd3c9813d16e110c771059a72d884788d48a8e328029ed4872e6f`  
		Last Modified: Thu, 31 May 2018 13:48:41 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c1b00929c5501feffe6eaddaf7dc66dc204e454e0f4ec8c143e70703c6eff5`  
		Last Modified: Thu, 31 May 2018 13:48:41 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327934e5b9bd507b07f12aa81239f2709f3dd849a2d1c0e711bdf3001c87afb`  
		Last Modified: Thu, 31 May 2018 13:48:41 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2f8ea53e8e762fb0008f284797e1763c4b0247bea2eb98b10d4dbe2f78a367`  
		Last Modified: Thu, 31 May 2018 13:48:41 GMT  
		Size: 4.2 KB (4176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
