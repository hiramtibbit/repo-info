## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:17730b9146f2760975d80fc4673566c9d63ba04187a78768268b1b49dd6c492c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:20a8f6fecc2153662be5f39ea7c02b4789311ec5e3c91dbd2ff5440996750e1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31580301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f39d144fcf5fc9a48f15da390b45187df179224e556802ed80766e1d4a0b4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
