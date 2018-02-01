## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:ed5bd8e6da17f23afbf6ddcfda0f52b38205ecfd5fad235448d2ce88798348e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b75af5f817ea2f9c94df37c733a8f18dac4d37ba4ab38486081c441d155cfe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43812473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d4ff1bda196c091c946af9fabc19bf7de98d363bc6e19f3e832e9f3b7c19e0`
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
# Thu, 01 Feb 2018 01:44:14 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 01:44:14 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 01:44:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 01 Feb 2018 01:44:26 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 01:44:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 01 Feb 2018 01:44:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 01:44:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 01:44:50 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 01 Feb 2018 01:44:51 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 01 Feb 2018 01:45:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 01:45:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 01:45:02 GMT
CMD ["rabbitmq-server"]
# Thu, 01 Feb 2018 01:45:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 01 Feb 2018 01:45:52 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 01 Feb 2018 01:46:00 GMT
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
	-	`sha256:f0097dfba081ce1085e4984172c44ca7417e887a283a6ad052ae1c97df26f2fa`  
		Last Modified: Thu, 01 Feb 2018 01:49:05 GMT  
		Size: 12.1 MB (12055432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811b1938a3e7a54efdd899914c5694854decc17c6247ea2c483d26e67590f10c`  
		Last Modified: Thu, 01 Feb 2018 01:49:04 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76f344cd737098c5a8ee61fc68022f06aa5746f6fec9af159a169b25db65f4a`  
		Last Modified: Thu, 01 Feb 2018 01:49:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d740f1e18a034ad637014e3f82ac4b0e3b5d7c8b0d605341872be5aa6beb`  
		Last Modified: Thu, 01 Feb 2018 01:49:03 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b25aa17368dd343a64b8905acb3392794e9db39822c23fde85ed3c27c7187c2`  
		Last Modified: Thu, 01 Feb 2018 01:49:03 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be63f09bb62f155e233d9aaf9f78fba8ed287b8e184bbc2b5b72d03af0e2636`  
		Last Modified: Thu, 01 Feb 2018 01:50:22 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4bbd7c0812fc14a5794fb25c867c80e11384ab3dd4e6fba086c35453f0f90`  
		Last Modified: Thu, 01 Feb 2018 01:50:27 GMT  
		Size: 11.0 MB (11024446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:5acf86028b45a436ad82ba2f2958fe6b2f587e5b2761f120849a9f9641234397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41670084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a19b5df77a5b753d6bae32dd09a59cd4470959d45b2233819d449c522f3da8`
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
# Thu, 01 Feb 2018 08:14:14 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 08:14:15 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 08:14:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 01 Feb 2018 08:14:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 08:14:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 01 Feb 2018 08:14:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 08:15:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 08:15:04 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 01 Feb 2018 08:15:05 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 01 Feb 2018 08:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 08:15:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 08:15:09 GMT
CMD ["rabbitmq-server"]
# Thu, 01 Feb 2018 08:15:24 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 01 Feb 2018 08:15:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 01 Feb 2018 08:15:39 GMT
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
	-	`sha256:417871c9bea7b18855eb004bdd4a726e4f52e9a41cfa11bd3f4c2281631f1b1e`  
		Last Modified: Thu, 01 Feb 2018 08:16:58 GMT  
		Size: 12.0 MB (12048760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07401172dc47326e0d28d4233987e4aef9749163125230073ea51cbb2e931af1`  
		Last Modified: Thu, 01 Feb 2018 08:16:56 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347c42ea48d11d09f7db80b2c3ac96d0fd2ee9a67de05a0c7f0ce54a73737bc`  
		Last Modified: Thu, 01 Feb 2018 08:16:56 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde0c50071ae69961346f625bd9160a3e06a0cd6c5455685001666c7e4a53f1b`  
		Last Modified: Thu, 01 Feb 2018 08:16:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee30617e023aafa3737d9b9a4c415ea2335432f522f42d1b780fc09937f50e`  
		Last Modified: Thu, 01 Feb 2018 08:16:57 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ca72b973cc01d4cd76cd48e374c049188472f44cee80812fed0bb73d251897`  
		Last Modified: Thu, 01 Feb 2018 08:17:21 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2d44070fc84aac955ce5893facf98f07258783de0180ae25d1097754eb5961`  
		Last Modified: Thu, 01 Feb 2018 08:17:25 GMT  
		Size: 11.1 MB (11067890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
