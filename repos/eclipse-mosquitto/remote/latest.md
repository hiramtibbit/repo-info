## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:639be16e1b3fade45ea4c64a54c2e7c59fe6d543c01a15a649905ddbe2e58e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `eclipse-mosquitto:latest` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:fff5f6bcba709c7614c4733bfd5425948ddcbff4cba5a40cf9c9aab5b714f201
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6febc5b60e0dbc614a5c6f5eb157650fa957175bbbb5c935f1ec3fd02bcf9d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Mon, 29 Oct 2018 20:21:34 GMT
LABEL maintainer=Roger Light <roger@atchoo.org> description=Eclipse Mosquitto MQTT Broker
# Mon, 29 Oct 2018 20:21:34 GMT
ENV VERSION=1.5.3 DOWNLOAD_SHA256=3081a998d303a883b1cd064009beabc88aa9159e26f5258a4ae6007160491d10 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Tue, 06 Nov 2018 00:20:03 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -s -m755 /build/src/mosquitto_passwd /usr/bin/mosquitto_passwd && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build
# Tue, 06 Nov 2018 00:20:03 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 06 Nov 2018 00:20:03 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 06 Nov 2018 00:20:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Nov 2018 00:20:04 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09bd173abed54b50a21ef6dab6a9afbb471574020de40d23d2ab6b3192edc2c`  
		Last Modified: Tue, 06 Nov 2018 00:20:26 GMT  
		Size: 213.1 KB (213094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251e801d16c83e43a2bf55dcabbf96f38a09d68aa6e4eb492b374f9a9e8db352`  
		Last Modified: Tue, 06 Nov 2018 00:20:26 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:latest` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:24a5d2328dfda4384abc26edffdf9756986936a9b560e9bb53fd7f329ed420f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2346236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8124ab7423ea6d81efe6b49815e839c8c4a410e115c40d52d90f5c8b8e28268`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Tue, 30 Oct 2018 07:51:07 GMT
LABEL maintainer=Roger Light <roger@atchoo.org> description=Eclipse Mosquitto MQTT Broker
# Tue, 30 Oct 2018 07:51:08 GMT
ENV VERSION=1.5.3 DOWNLOAD_SHA256=3081a998d303a883b1cd064009beabc88aa9159e26f5258a4ae6007160491d10 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Tue, 06 Nov 2018 08:49:43 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -s -m755 /build/src/mosquitto_passwd /usr/bin/mosquitto_passwd && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build
# Tue, 06 Nov 2018 08:49:43 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 06 Nov 2018 08:49:44 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 06 Nov 2018 08:49:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Nov 2018 08:49:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
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
	-	`sha256:087dee7db23807b4c7c039410db96c8d5ac42c5416da100a6b8a557213fb5562`  
		Last Modified: Tue, 06 Nov 2018 08:49:56 GMT  
		Size: 199.5 KB (199463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f723afd14697761d27ffdc7f36bf78b6253707c2e7f29716a0c15a5fe9c945`  
		Last Modified: Tue, 06 Nov 2018 08:49:56 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:latest` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:6860f6597ab07bfbf2df3b97f862d5ed32c396d8b05542aeeba8c3b10cca3529
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2293043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08d92c7fc8131395a6895e9a33c3491e75204dd10720fbc6ad4b480fe40e17c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 30 Oct 2018 08:42:15 GMT
LABEL maintainer=Roger Light <roger@atchoo.org> description=Eclipse Mosquitto MQTT Broker
# Tue, 30 Oct 2018 08:42:16 GMT
ENV VERSION=1.5.3 DOWNLOAD_SHA256=3081a998d303a883b1cd064009beabc88aa9159e26f5258a4ae6007160491d10 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Tue, 06 Nov 2018 09:40:14 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -s -m755 /build/src/mosquitto_passwd /usr/bin/mosquitto_passwd && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build
# Tue, 06 Nov 2018 09:40:14 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 06 Nov 2018 09:40:15 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 06 Nov 2018 09:40:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Nov 2018 09:40:17 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
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
	-	`sha256:6f51e2805f3ad7cbf4a6362e9e44a5b379b24b86648864815d83bdffa5a9e6e7`  
		Last Modified: Tue, 06 Nov 2018 09:40:45 GMT  
		Size: 193.0 KB (192961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3151bfadf04cb38ca094e94b287c125e2fd9d9c08a4c50a537f25c84584cc0`  
		Last Modified: Tue, 06 Nov 2018 09:40:45 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:latest` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:c56571afa4a2d25fd71cf8588ebe27a7f45637b127597f8684692a16c247004f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2490050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c46fb7892c4795cc7f892af53ea1f2d6ff9552cac61ec228925d0c17d874ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Tue, 30 Oct 2018 10:40:37 GMT
LABEL maintainer=Roger Light <roger@atchoo.org> description=Eclipse Mosquitto MQTT Broker
# Tue, 30 Oct 2018 10:40:38 GMT
ENV VERSION=1.5.3 DOWNLOAD_SHA256=3081a998d303a883b1cd064009beabc88aa9159e26f5258a4ae6007160491d10 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Tue, 30 Oct 2018 10:40:54 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 10:40:54 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 10:40:54 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 10:40:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 10:40:55 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
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
	-	`sha256:b66de7b46677509ce739fafe9cbcc01ab7360925ac58e12a7e027767a06b239c`  
		Last Modified: Tue, 30 Oct 2018 10:41:24 GMT  
		Size: 218.3 KB (218270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23558370cab3535caf82a2028ea9c265e728b295b6b2a319cd1798329abc4de9`  
		Last Modified: Tue, 30 Oct 2018 10:41:23 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:latest` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:f80ec504d4c7c52364bbf5154b0d94b64f310e77cdff6bef5b31dc4657e70a2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2404068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a9c7ab642997e36dfc4717667858a8251fb27f47d58f7340ad308763bdce50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Tue, 30 Oct 2018 08:43:25 GMT
LABEL maintainer=Roger Light <roger@atchoo.org> description=Eclipse Mosquitto MQTT Broker
# Tue, 30 Oct 2018 08:43:26 GMT
ENV VERSION=1.5.3 DOWNLOAD_SHA256=3081a998d303a883b1cd064009beabc88aa9159e26f5258a4ae6007160491d10 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Tue, 06 Nov 2018 09:17:27 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -s -m755 /build/src/mosquitto_passwd /usr/bin/mosquitto_passwd && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build
# Tue, 06 Nov 2018 09:17:28 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 06 Nov 2018 09:17:36 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 06 Nov 2018 09:17:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Nov 2018 09:17:39 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
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
	-	`sha256:f8929d3a2e0d38a95f48aba347193ca2ce4b750a5464fdff9a1256c38acbe2e6`  
		Last Modified: Tue, 06 Nov 2018 09:18:01 GMT  
		Size: 208.5 KB (208521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2840d805ae2d1931b1a9b1fed64d6b25cf0c16d6002a214ac05533439c13ce9f`  
		Last Modified: Tue, 06 Nov 2018 09:18:01 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:latest` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:c8b5f28e30fa945f6aa7ea2a8cccbaf15f0e901381fc8bf3369233b3d314dc97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2509237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3078a855b7adb3c76ec466a7d5d1cc8771ca344c52b6e5bf4390a0dc5e522a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Tue, 30 Oct 2018 11:43:07 GMT
LABEL maintainer=Roger Light <roger@atchoo.org> description=Eclipse Mosquitto MQTT Broker
# Tue, 30 Oct 2018 11:43:07 GMT
ENV VERSION=1.5.3 DOWNLOAD_SHA256=3081a998d303a883b1cd064009beabc88aa9159e26f5258a4ae6007160491d10 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Tue, 30 Oct 2018 11:43:20 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 11:43:23 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 11:43:23 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 11:43:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 11:43:23 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
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
	-	`sha256:f64ae04099a6df54ebac815347ea5aa72f808856ddd7e14d9cea49e7a7c572ef`  
		Last Modified: Tue, 30 Oct 2018 11:43:42 GMT  
		Size: 201.2 KB (201170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5ba47523aea1944206a8051d3c83346a52deee03ebe65dde007f829db6b3c2`  
		Last Modified: Tue, 30 Oct 2018 11:43:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
