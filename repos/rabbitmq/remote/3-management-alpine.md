## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:b0889d6dfa29def86462cbfea92d11555c3172c6be34a9744df11a194c9b84ee
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
$ docker pull rabbitmq@sha256:00a04a6f15b8dddf9ecf7620afa76d2851e1092dc268990990e7573a82f5d8dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41562383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a96a5c0a53bc0df09ac63012435e3b188203fce9c0abd785949bfba8c2a4c6`
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
# Fri, 21 Dec 2018 04:34:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Dec 2018 04:34:50 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 21 Dec 2018 04:34:50 GMT
EXPOSE 15671 15672
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
	-	`sha256:3e52a053c8df7cd62ec103d06e788d3e695191c2c6de4ab603156091bb0723c5`  
		Last Modified: Fri, 21 Dec 2018 04:36:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d6f6107b74ae40ed3b1f0c70339f2ee8c5f93653e6dc1989d9233ac24fcf0a`  
		Last Modified: Fri, 21 Dec 2018 04:36:13 GMT  
		Size: 11.0 MB (11020561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:200ac04a44c36d6ef66367e987aefb3f5067cf7280ca6e549c986c8276bee217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38952378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e7f0155c83f37cc3e681cc390e615b353c5d78a55c05b6c4be3c38b6c3844f`
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
# Fri, 21 Dec 2018 10:05:03 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Dec 2018 10:05:11 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 21 Dec 2018 10:05:12 GMT
EXPOSE 15671 15672
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
	-	`sha256:0cfa4bfb30e7e7d67ca1458c5259736032d626111e9677f219c82bbf28e8b135`  
		Last Modified: Fri, 21 Dec 2018 10:06:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4a93d20723646374aa7ea3d0d684f44846d4c7d77ee1fee4425cc17a8f183f`  
		Last Modified: Fri, 21 Dec 2018 10:06:19 GMT  
		Size: 10.9 MB (10880770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:56f819b9e251f7aea83c8ca4fed82bb4d44c8cf0d2a28b2efd500a9f613b8276
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38849383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9570aafca92c73571e4d648e70c7b4e7af5eef7cd2b5d4a5d9c3558413c4a131`
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
# Fri, 21 Dec 2018 11:01:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Dec 2018 11:01:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 21 Dec 2018 11:01:54 GMT
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
	-	`sha256:d843eda8e329b6c845baee41dcc40e2a0ccf3685801e5403a91aa1ee72d2148a`  
		Last Modified: Fri, 21 Dec 2018 11:04:40 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9b480c775f03438f8170a570083724224f9cd580f3171b3993b6b7dd7bbb48`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 10.8 MB (10847299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:c72a8acbf15319d7132f22d7f13ea88f2c1ba39b1fd162ed740c00b518cd64c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41904483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3057a4f969db27d8c4e2319ec154cbe2f4c614523be6ca4bd58badf7093451`
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
# Tue, 30 Oct 2018 11:19:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 30 Oct 2018 11:19:10 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 30 Oct 2018 11:19:10 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:bb1121b983f3e24b33f4e0640fc11669b9ee86f79a4079efd27c6f5cd61c18d3`  
		Last Modified: Tue, 30 Oct 2018 11:22:51 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c7263e6bf1340b5a695ce4fb953b299a005bcc26d24ccf786e22ed371e7c2`  
		Last Modified: Tue, 30 Oct 2018 11:22:54 GMT  
		Size: 11.1 MB (11139486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:8b066e2317422a15101a07bc48518f9bb370d9d060181b273fc64404a3d26ac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39322786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b516cd114419cdfdde504dcc4e99dd3dcc5031681c82470b770d9d822e2ac29`
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
# Fri, 21 Dec 2018 10:43:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Dec 2018 10:43:37 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 21 Dec 2018 10:43:39 GMT
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
	-	`sha256:d28b789c8a418f3d1dffc175394d01c60c06555f8afcbed823671a386f4a1e23`  
		Last Modified: Fri, 21 Dec 2018 10:47:51 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a939fc725e86c292ddcf7f265611d3c243bb55a5ccaeb9cc8d741ad208a937a1`  
		Last Modified: Fri, 21 Dec 2018 10:47:58 GMT  
		Size: 11.0 MB (11022941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:8bad02174866fc787c66fdaba21d31f553a708e161475b58314c5b01d14f26ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39601898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e0d0d1b36c84d80a00c7186edc13702bbba05c25d20278e6fab9db52ce62a3`
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
# Tue, 30 Oct 2018 12:14:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 30 Oct 2018 12:15:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 30 Oct 2018 12:15:02 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:07d8bb4d9de244e17e585d823bbd211d90d91a1f43a248c683c2004d80528a9e`  
		Last Modified: Tue, 30 Oct 2018 12:17:00 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d2fc8ee27425828ceb6f8c6846ab8bfcd5389e98fbad4e6ef050378a2a244e`  
		Last Modified: Tue, 30 Oct 2018 12:17:03 GMT  
		Size: 11.1 MB (11129474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
