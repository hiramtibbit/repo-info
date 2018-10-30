<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.5`](#eclipse-mosquitto15)
-	[`eclipse-mosquitto:1.5.3`](#eclipse-mosquitto153)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)

## `eclipse-mosquitto:1.5`

```console
$ docker pull eclipse-mosquitto@sha256:5e29255629aecb5582b76e5592424165caeed94b797dd8d05102a6bf7e087c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `eclipse-mosquitto:1.5` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:d7ad22603ba727bfe3986d37995fd3c54b9b0e90bfffb511421052f254c88655
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831ed51daf4a62dcde3f25f0c56d26bf77a658345f04288afe622ad3167b0f38`
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
# Mon, 29 Oct 2018 20:21:51 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Mon, 29 Oct 2018 20:21:51 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Mon, 29 Oct 2018 20:21:52 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Mon, 29 Oct 2018 20:21:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 29 Oct 2018 20:21:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c3b4af109f34ff43c6268b37688ee23825325f549db72fea9665f6ca0376d7`  
		Last Modified: Mon, 29 Oct 2018 20:22:18 GMT  
		Size: 199.8 KB (199792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d65edbe9b6e655020be2d9860f9829613cce5b8caae978a00e4549f7ee7682`  
		Last Modified: Mon, 29 Oct 2018 20:22:18 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:1.5` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:2c7038e70b82c0ac02082fb97c84cb7e8e90089955dd0e5009579a2bebc59411
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2333450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae035f8c2715592e2de4772877c8fcc0a740847a1f035433e5924a435911ac9`
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
# Tue, 30 Oct 2018 07:51:31 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 07:51:31 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 07:51:32 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 07:51:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 07:51:32 GMT
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
	-	`sha256:dffd8233961a5d77fa67ddc30c790103f7907c3b805e470bc0febf9da74239e9`  
		Last Modified: Tue, 30 Oct 2018 07:51:52 GMT  
		Size: 186.7 KB (186679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c8d657fb1d108bd6fe94c5bebdcb89cfb65e83c70129c636c42589bf2caa0f`  
		Last Modified: Tue, 30 Oct 2018 07:51:53 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:1.5` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:fdc5b8f564700c178ca5546259d3b24c86a7def2072ddec6496654abaa157445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2280566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00285f30296b4dd9c34a4bcdff8bc46e8e74a4abc08d012611f6a62047a25ad5`
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
# Tue, 30 Oct 2018 08:42:41 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 08:42:46 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 08:42:47 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 08:42:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 08:42:48 GMT
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
	-	`sha256:2dfbdb148d2dcb2ef75381b21dd428aa6d557126f9a20474128702b2d819c529`  
		Last Modified: Tue, 30 Oct 2018 08:43:31 GMT  
		Size: 180.5 KB (180483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e80cf4a6499faca3a4c6baa2ef94b77913c6f4910da492d1430ead203cd2e8`  
		Last Modified: Tue, 30 Oct 2018 08:43:29 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:1.5` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:435ac197741d344039531b884d4928230e65eb22151b5880cd86d8f552a81251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693e45c00503d3f1e5a334ad6c544d142dd6968742b60014a498b45ac80412be`
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
# Tue, 30 Oct 2018 08:43:55 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 08:43:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 08:43:58 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 08:44:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 08:44:02 GMT
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
	-	`sha256:36d69b506a387ee279a85706c55d7a7732e986aa17bd0c93ba52bc1be8819ec5`  
		Last Modified: Tue, 30 Oct 2018 08:47:42 GMT  
		Size: 195.2 KB (195244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b00d7984888648dbd4f5bcecb8bcfba9070556c23f71999a6d00c5d084026`  
		Last Modified: Tue, 30 Oct 2018 08:47:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.5.3`

```console
$ docker pull eclipse-mosquitto@sha256:5e29255629aecb5582b76e5592424165caeed94b797dd8d05102a6bf7e087c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `eclipse-mosquitto:1.5.3` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:d7ad22603ba727bfe3986d37995fd3c54b9b0e90bfffb511421052f254c88655
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831ed51daf4a62dcde3f25f0c56d26bf77a658345f04288afe622ad3167b0f38`
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
# Mon, 29 Oct 2018 20:21:51 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Mon, 29 Oct 2018 20:21:51 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Mon, 29 Oct 2018 20:21:52 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Mon, 29 Oct 2018 20:21:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 29 Oct 2018 20:21:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c3b4af109f34ff43c6268b37688ee23825325f549db72fea9665f6ca0376d7`  
		Last Modified: Mon, 29 Oct 2018 20:22:18 GMT  
		Size: 199.8 KB (199792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d65edbe9b6e655020be2d9860f9829613cce5b8caae978a00e4549f7ee7682`  
		Last Modified: Mon, 29 Oct 2018 20:22:18 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:1.5.3` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:2c7038e70b82c0ac02082fb97c84cb7e8e90089955dd0e5009579a2bebc59411
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2333450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae035f8c2715592e2de4772877c8fcc0a740847a1f035433e5924a435911ac9`
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
# Tue, 30 Oct 2018 07:51:31 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 07:51:31 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 07:51:32 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 07:51:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 07:51:32 GMT
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
	-	`sha256:dffd8233961a5d77fa67ddc30c790103f7907c3b805e470bc0febf9da74239e9`  
		Last Modified: Tue, 30 Oct 2018 07:51:52 GMT  
		Size: 186.7 KB (186679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c8d657fb1d108bd6fe94c5bebdcb89cfb65e83c70129c636c42589bf2caa0f`  
		Last Modified: Tue, 30 Oct 2018 07:51:53 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:1.5.3` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:fdc5b8f564700c178ca5546259d3b24c86a7def2072ddec6496654abaa157445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2280566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00285f30296b4dd9c34a4bcdff8bc46e8e74a4abc08d012611f6a62047a25ad5`
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
# Tue, 30 Oct 2018 08:42:41 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 08:42:46 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 08:42:47 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 08:42:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 08:42:48 GMT
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
	-	`sha256:2dfbdb148d2dcb2ef75381b21dd428aa6d557126f9a20474128702b2d819c529`  
		Last Modified: Tue, 30 Oct 2018 08:43:31 GMT  
		Size: 180.5 KB (180483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e80cf4a6499faca3a4c6baa2ef94b77913c6f4910da492d1430ead203cd2e8`  
		Last Modified: Tue, 30 Oct 2018 08:43:29 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:1.5.3` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:435ac197741d344039531b884d4928230e65eb22151b5880cd86d8f552a81251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693e45c00503d3f1e5a334ad6c544d142dd6968742b60014a498b45ac80412be`
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
# Tue, 30 Oct 2018 08:43:55 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 08:43:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 08:43:58 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 08:44:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 08:44:02 GMT
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
	-	`sha256:36d69b506a387ee279a85706c55d7a7732e986aa17bd0c93ba52bc1be8819ec5`  
		Last Modified: Tue, 30 Oct 2018 08:47:42 GMT  
		Size: 195.2 KB (195244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b00d7984888648dbd4f5bcecb8bcfba9070556c23f71999a6d00c5d084026`  
		Last Modified: Tue, 30 Oct 2018 08:47:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:5e29255629aecb5582b76e5592424165caeed94b797dd8d05102a6bf7e087c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `eclipse-mosquitto:latest` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:d7ad22603ba727bfe3986d37995fd3c54b9b0e90bfffb511421052f254c88655
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831ed51daf4a62dcde3f25f0c56d26bf77a658345f04288afe622ad3167b0f38`
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
# Mon, 29 Oct 2018 20:21:51 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Mon, 29 Oct 2018 20:21:51 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Mon, 29 Oct 2018 20:21:52 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Mon, 29 Oct 2018 20:21:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 29 Oct 2018 20:21:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c3b4af109f34ff43c6268b37688ee23825325f549db72fea9665f6ca0376d7`  
		Last Modified: Mon, 29 Oct 2018 20:22:18 GMT  
		Size: 199.8 KB (199792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d65edbe9b6e655020be2d9860f9829613cce5b8caae978a00e4549f7ee7682`  
		Last Modified: Mon, 29 Oct 2018 20:22:18 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:latest` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:2c7038e70b82c0ac02082fb97c84cb7e8e90089955dd0e5009579a2bebc59411
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2333450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae035f8c2715592e2de4772877c8fcc0a740847a1f035433e5924a435911ac9`
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
# Tue, 30 Oct 2018 07:51:31 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 07:51:31 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 07:51:32 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 07:51:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 07:51:32 GMT
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
	-	`sha256:dffd8233961a5d77fa67ddc30c790103f7907c3b805e470bc0febf9da74239e9`  
		Last Modified: Tue, 30 Oct 2018 07:51:52 GMT  
		Size: 186.7 KB (186679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c8d657fb1d108bd6fe94c5bebdcb89cfb65e83c70129c636c42589bf2caa0f`  
		Last Modified: Tue, 30 Oct 2018 07:51:53 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:latest` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:fdc5b8f564700c178ca5546259d3b24c86a7def2072ddec6496654abaa157445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2280566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00285f30296b4dd9c34a4bcdff8bc46e8e74a4abc08d012611f6a62047a25ad5`
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
# Tue, 30 Oct 2018 08:42:41 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 08:42:46 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 08:42:47 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 08:42:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 08:42:48 GMT
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
	-	`sha256:2dfbdb148d2dcb2ef75381b21dd428aa6d557126f9a20474128702b2d819c529`  
		Last Modified: Tue, 30 Oct 2018 08:43:31 GMT  
		Size: 180.5 KB (180483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e80cf4a6499faca3a4c6baa2ef94b77913c6f4910da492d1430ead203cd2e8`  
		Last Modified: Tue, 30 Oct 2018 08:43:29 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-mosquitto:latest` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:435ac197741d344039531b884d4928230e65eb22151b5880cd86d8f552a81251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693e45c00503d3f1e5a334ad6c544d142dd6968742b60014a498b45ac80412be`
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
# Tue, 30 Oct 2018 08:43:55 GMT
RUN set -x && 	 apk --no-cache add --virtual build-deps       build-base 	  gnupg       libressl-dev       libwebsockets-dev       util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz && 	echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc && 	export GNUPGHOME="$(mktemp -d)" && 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz && 	gpgconf --kill all && 	rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc && 	mkdir -p /build && 	tar --strip=1 -xf /tmp/mosq.tar.gz -C /build && 	rm /tmp/mosq.tar.gz &&     make -C /build -j "$(nproc)"       WITH_ADNS=no 	  WITH_DOCS=no       WITH_MEMORY_TRACKING=no 	  WITH_SHARED_LIBRARIES=no       WITH_SRV=no 	  WITH_STRIP=yes       WITH_TLS_PSK=no       WITH_WEBSOCKETS=yes       prefix=/usr       binary && 	addgroup -S mosquitto 2>/dev/null &&     adduser -S -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && 	install -d /usr/sbin/ && 	install -s -m755 /build/src/mosquitto /usr/sbin/mosquitto && 	install -m644 /build/mosquitto.conf /mosquitto/config/mosquitto.conf &&     chown -R mosquitto:mosquitto /mosquitto && 	apk --no-cache add       libuuid       libwebsockets && 	apk del build-deps && 	rm -rf /build /etc/apk /lib/apk
# Tue, 30 Oct 2018 08:43:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Tue, 30 Oct 2018 08:43:58 GMT
COPY file:539724540604f93d38fd4c30485a000e2aca8adc782ac6d761c0f752d6a3608c in / 
# Tue, 30 Oct 2018 08:44:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 08:44:02 GMT
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
	-	`sha256:36d69b506a387ee279a85706c55d7a7732e986aa17bd0c93ba52bc1be8819ec5`  
		Last Modified: Tue, 30 Oct 2018 08:47:42 GMT  
		Size: 195.2 KB (195244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703b00d7984888648dbd4f5bcecb8bcfba9070556c23f71999a6d00c5d084026`  
		Last Modified: Tue, 30 Oct 2018 08:47:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
