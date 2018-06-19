## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:9de1a046c5f499e8fcaf4c4ae86a08f522a0ba18d4f741914f2cccc75f50d669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7b6d674963f8f96947184f8c8186efe42d0e2c41f35ac92441eb7987618d3852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30299680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d93390a4f86820aa6d3d039f09de826a6186c5467621c8df21a2657de35c3e5`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:5ad60f5cc5fceb4195fafdd8a9eac163fe3118b2a79744d81e8794e62dce57d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28112835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3691fbc77ffa86fcd9f50d431e9c3c77d4a157db1c5f5d22513e4df85303d224`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
