<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.5`](#eclipse-mosquitto15)
-	[`eclipse-mosquitto:1.5.3`](#eclipse-mosquitto153)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)

## `eclipse-mosquitto:1.5`

```console
$ docker pull eclipse-mosquitto@sha256:d1d608a7663f5e5704ce0010f4ddb8625b2dc96edcd551342ded7a6e462e962c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `eclipse-mosquitto:1.5.3`

```console
$ docker pull eclipse-mosquitto@sha256:d1d608a7663f5e5704ce0010f4ddb8625b2dc96edcd551342ded7a6e462e962c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:d1d608a7663f5e5704ce0010f4ddb8625b2dc96edcd551342ded7a6e462e962c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
