## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:6eaa7288cd99ba6a862a1cb30eb4efa2d3787d8bf58f7695c1dd6df2135bf7f1
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
$ docker pull rabbitmq@sha256:d3867ab40a53ba32af8800bac8e405f4acb4f2fa791cad7d36703ae698852419
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32833941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84fca87b603ec051bbdb13d5f148aa37000fb26c600d7f387f3f15f1592be8f1`
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
# Mon, 12 Mar 2018 19:19:16 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 19:19:16 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 19:20:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 19:20:14 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 19:20:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 19:20:15 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 19:20:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 19:20:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 19:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 19:20:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 19:20:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 19:20:18 GMT
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
	-	`sha256:41e241289d304013bf9388128eb457e10e6008205d98bafd0f738f163d802fc8`  
		Last Modified: Mon, 12 Mar 2018 19:38:19 GMT  
		Size: 12.1 MB (12101539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8ab8823f429d2d0589bc9fce0d53aa7d63e8e68f29fd12b07ceb23906f8e5b`  
		Last Modified: Mon, 12 Mar 2018 19:38:17 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ac0c0b3f13d69d1a7b3d81f31b0df24864960aac1c1f4bf8b982233e8ece1c`  
		Last Modified: Mon, 12 Mar 2018 19:38:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b9421a89dc2a119d031dee26ab6c111ee76115dc16df89e7be16a002f76be4`  
		Last Modified: Mon, 12 Mar 2018 19:38:20 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69676b835e94306f3275a51a2bf7255b38f7762b882ca0806f28642cbe8ae84`  
		Last Modified: Mon, 12 Mar 2018 19:38:17 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:b211f3f2b4e6d7fe1903349eef59a5dbed3551f995e5aa874a876638334998fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30351300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f145ff8b96dc423b5d5e1247424473cbc0be234064908c4ceae1d158d8a369f`
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
# Tue, 13 Mar 2018 13:56:03 GMT
ENV RABBITMQ_VERSION=3.7.4
# Tue, 13 Mar 2018 13:56:04 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Tue, 13 Mar 2018 13:56:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 13 Mar 2018 13:56:20 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 13 Mar 2018 13:56:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 13 Mar 2018 13:56:22 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 13 Mar 2018 13:56:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 13 Mar 2018 13:56:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 13 Mar 2018 13:56:26 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 13 Mar 2018 13:56:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 13:56:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 13 Mar 2018 13:56:28 GMT
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
	-	`sha256:cb7863d72bfe77e1e16450232b689e431fab03cfdbfb3877b1da09d168f4705f`  
		Last Modified: Tue, 13 Mar 2018 14:00:12 GMT  
		Size: 12.1 MB (12095607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8b67779a8786b90d1a741797c96f260d1253e77d1a2ecdfad85d8c0277dcc6`  
		Last Modified: Tue, 13 Mar 2018 14:00:10 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43321f594dacc59b58d9498b57a92b7b5fcd544075c7b15f0fd80897fde222aa`  
		Last Modified: Tue, 13 Mar 2018 14:00:10 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc331c2ff977541c7273b46e08ad1bdcec9ca49957989e8ad6ce2d6cc20a908b`  
		Last Modified: Tue, 13 Mar 2018 14:00:10 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf999e939580eccd6971d07eee46271792fae5df5aa188a39299f7ce651ef27`  
		Last Modified: Tue, 13 Mar 2018 14:00:10 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:c9f340fd41485d954badca263b03f89f8a46d266dd4b491f4329cb4e0f1a2b7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33061492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e62a989710fb245eb708df5000c88eaa566f0977677cc81acfce0a5516ed64f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 14:33:12 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 28 Apr 2018 14:33:16 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 28 Apr 2018 14:33:32 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 28 Apr 2018 14:33:33 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 14:33:33 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 28 Apr 2018 14:33:33 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 14:33:33 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 28 Apr 2018 14:34:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Sat, 28 Apr 2018 14:34:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Sat, 28 Apr 2018 14:35:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 28 Apr 2018 14:35:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 28 Apr 2018 14:35:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 28 Apr 2018 14:35:02 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 28 Apr 2018 14:35:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 28 Apr 2018 14:35:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 28 Apr 2018 14:35:04 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 28 Apr 2018 14:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 14:35:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 28 Apr 2018 14:35:04 GMT
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
	-	`sha256:efc4635e5ef37ed704008946e97cc507a58996bf5e5e75360787fbb9b5d88cfc`  
		Last Modified: Sat, 28 Apr 2018 14:37:48 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e968b5bf1fc0ff69cac034942e2b1e1235c3fdb789df75c48066abf7f76e202b`  
		Last Modified: Sat, 28 Apr 2018 14:37:48 GMT  
		Size: 8.6 KB (8649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a46eea996b4970046ea32ccf68d885ad73fd291224b67fd7deacbf1ac098251`  
		Last Modified: Sat, 28 Apr 2018 14:37:51 GMT  
		Size: 18.8 MB (18819427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed27ad59ce5ed24e2dfa568afd8582a814077c8744eac33cb914171b508fac86`  
		Last Modified: Sat, 28 Apr 2018 14:39:09 GMT  
		Size: 12.1 MB (12101109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6cbc532cafd94533dd7816cb72c6dd5e6e6488cb1a3c3b6230bdf9bb6191500`  
		Last Modified: Sat, 28 Apr 2018 14:39:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcda1af681f436a669d1488bb5ac21435e3002c5fe48258df0873cd8c3accb2`  
		Last Modified: Sat, 28 Apr 2018 14:39:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d508515ba8e5a5f542acc8ec205952314a3c2ae3ad76b65b1aa42fce160b40f9`  
		Last Modified: Sat, 28 Apr 2018 14:39:08 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a67a7828a20fa04781385c4f1a951bcf9398bf9fbd6383e9fa01da4e158556`  
		Last Modified: Sat, 28 Apr 2018 14:39:08 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e3e300df6465aa83bf187e359be2d18369cba90000de1b8d8155371ac8731aee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30649105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07c6d27ec7848b22a783835b305895b386c8cced2d07667b4b6c0d8e1894970`
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
# Tue, 13 Mar 2018 07:15:07 GMT
ENV RABBITMQ_VERSION=3.7.4
# Tue, 13 Mar 2018 07:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Tue, 13 Mar 2018 07:15:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 13 Mar 2018 07:15:39 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 13 Mar 2018 07:15:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 13 Mar 2018 07:15:45 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 13 Mar 2018 07:15:49 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 13 Mar 2018 07:15:52 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 13 Mar 2018 07:15:54 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 13 Mar 2018 07:15:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 07:15:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 13 Mar 2018 07:15:58 GMT
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
	-	`sha256:f6a111fe5c8891d2332f174995bd4798b218566e2e0d582889feb721fd138eb7`  
		Last Modified: Tue, 13 Mar 2018 07:18:19 GMT  
		Size: 12.1 MB (12095857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172618308fe7631e33fdd4bf11f1343f339848804a01562c69a1267e1f8c6790`  
		Last Modified: Tue, 13 Mar 2018 07:18:12 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f07836946b2e828014e62177fa298591194c3a5258e1068314c31a322c157ec`  
		Last Modified: Tue, 13 Mar 2018 07:18:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32398fbe012f5cb802bc726ef076ada0c10d5213f24f98100abbe828a144633`  
		Last Modified: Tue, 13 Mar 2018 07:18:12 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09865b9b8b272d7d36e4235653c647b7035b8e7796159385eb4f961639c7c952`  
		Last Modified: Tue, 13 Mar 2018 07:18:12 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:45086400bf9110cb4205e0c6b21fa48e280b8c69dded32f0d7e93028723a59fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30811743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80dd0e77ff9d393dce6abdc1fbe13776b2d0f321d5aac6b618395b4e59c3ccb7`
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
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
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
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
