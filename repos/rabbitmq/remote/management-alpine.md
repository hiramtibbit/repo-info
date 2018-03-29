## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:8a78202c4d4df5f8a09ccdb2257e0eeef66022a85d927d0b455b5bb335f1ed9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8f67be44b377e89050bc8d5f39e3dfee4a38d48f3ce087067e82050a13da2404
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43858561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8abdd09326032d4cc381bae7eadd7118073ddb8f07058d11acb7550d88f65a`
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
# Mon, 12 Mar 2018 19:20:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 19:20:46 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 19:20:46 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:13a893bc00f9cc806725417757d86fc61fb02f2eb2689076b5d5f38e13fae3dc`  
		Last Modified: Mon, 12 Mar 2018 19:39:27 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cf78370af854277e339414bf29d756788adc483fe3a99bde459f21c5e82ee6`  
		Last Modified: Mon, 12 Mar 2018 19:39:33 GMT  
		Size: 11.0 MB (11024429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:8fd87c5dab23951b5eb3f4dd56ab225b51b8a80eb744ddb26f790667765c858f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41246404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ad76810c96f73183715d8e5750a639b7632108743c4efc58f98cbdfa0553db`
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
# Tue, 13 Mar 2018 13:56:51 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 13 Mar 2018 13:57:00 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 13 Mar 2018 13:57:01 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:0f45794b95398e5914b89399aa7f2cd75d21ca481fe81d880041c3eef3b587e1`  
		Last Modified: Tue, 13 Mar 2018 14:01:19 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894905d2323c7ec073cd6d1a3821342cf7a75978cc2edd5dd404b7fd36edefa`  
		Last Modified: Tue, 13 Mar 2018 14:01:24 GMT  
		Size: 10.9 MB (10894912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:361b427e830ac31070e3a185640db5b1c7a341953d2fd6dcc035afea7df580bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44204062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a8083b172c48b19a4f1d14aaa08634c7e9e7bf081aab41ff208ef8b8083641`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:22:00 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:22:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:22:27 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:22:27 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 27 Mar 2018 11:01:13 GMT
ENV RABBITMQ_VERSION=3.7.4
# Tue, 27 Mar 2018 11:01:13 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Tue, 27 Mar 2018 11:01:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 27 Mar 2018 11:01:27 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 27 Mar 2018 11:01:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 27 Mar 2018 11:01:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 27 Mar 2018 11:01:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 27 Mar 2018 11:01:30 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 27 Mar 2018 11:01:30 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 27 Mar 2018 11:01:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 11:01:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 27 Mar 2018 11:01:31 GMT
CMD ["rabbitmq-server"]
# Tue, 27 Mar 2018 11:02:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 27 Mar 2018 11:02:31 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 27 Mar 2018 11:02:31 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:b27825103f577634e399aa4d7b3926d800daaa8fb48694cbc00441e394ab49dc`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906faec23cf2653ea69fef127c0ce0bad706d94c732403b1f414228152f476bd`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 8.7 KB (8650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb1029d1df08e5376a776e456084b04ad97df041d887f4ce722247c2d61a3b4`  
		Last Modified: Tue, 12 Dec 2017 21:40:07 GMT  
		Size: 18.8 MB (18815715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3017a2d565743afd0f2f41d9f4e0148672f878af30938cea62b5aba7e72cd9d5`  
		Last Modified: Tue, 27 Mar 2018 11:29:11 GMT  
		Size: 12.1 MB (12101002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241647aee13e54b45b0a43c254f795eb63ac65dd1577d49b363a5a50b64511de`  
		Last Modified: Tue, 27 Mar 2018 11:29:09 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2461338414a8e68212a0e8faf378673086b9a0721e0df70addf50f00beea65`  
		Last Modified: Tue, 27 Mar 2018 11:29:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c6a1d974c806e2463adbda9cec5d78fffc315849408da0f5312b8e18592567`  
		Last Modified: Tue, 27 Mar 2018 11:29:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bd5f25d2be5bedf95517b148431154687cdcfe094ccd672653e708709539f5`  
		Last Modified: Tue, 27 Mar 2018 11:29:09 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc7d6c90494f0299eb3d5cd55f3e3fa26f507e37e093064b9a57c65161f00f6`  
		Last Modified: Tue, 27 Mar 2018 11:42:56 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab57531ed12c42da3dac5bcbe1d452059df92220d4823b6f607a950f3a608d3`  
		Last Modified: Tue, 27 Mar 2018 11:43:01 GMT  
		Size: 11.1 MB (11146198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bbbc2bf0def9b1171eb9b06a22d5d1addb8b8f9e4ee87a49e62ce3f6bc67cd56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41717146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7486159da051e45cae0b402e077af98ab0ede86fcdbf7f6eafed0f11bc86c8cd`
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
# Tue, 13 Mar 2018 07:16:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 13 Mar 2018 07:16:29 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 13 Mar 2018 07:16:31 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:4094a64e912fba0d1c382ca807bdd0d5f5a46543132a33429e91f2743e15f0e7`  
		Last Modified: Tue, 13 Mar 2018 07:18:44 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f812a3063b1cd98c939a091fc3a635901c742999f3d8fd1a19b07375b2d5f572`  
		Last Modified: Tue, 13 Mar 2018 07:18:47 GMT  
		Size: 11.1 MB (11067850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:f2034c396b0923708c78d2e2585c22b8096e16c8bc16cbe64766164e3c832736
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41982300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dbab89476b47402d21c71b5e3ce338f2d3fdd10f34ea83a8e7ed315ae2ce96`
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
# Mon, 12 Mar 2018 17:08:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:08:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:72473354d3c89d31d9b5e5191a03682815d7460611376bdc4077583357998751`  
		Last Modified: Mon, 12 Mar 2018 17:09:40 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985979300c288229ce4a36e7911a4330bfdf9f571c5f478c2dce16725c5e5645`  
		Last Modified: Mon, 12 Mar 2018 17:09:42 GMT  
		Size: 11.2 MB (11170366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
