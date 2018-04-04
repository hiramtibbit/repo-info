## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:d425b98e4efd420043c715dc5c1b9391da34b3c5e9ba452e8d22008ad8fa8fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:e2dd5efd281fd16ea6188024b85450c7b4e116b680a6475a5c4175511e1a0c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14303369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f8d8b30157796f0febb1b8db1f1ef36ffc8d8a1676e8838dda11fa6e7b2872`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 17:18:27 GMT
COPY file:e27a325022d3a1ad5dce031a07a8a34185dc6276fa385f56c19ad938940b4843 in / 
# Wed, 04 Apr 2018 17:18:27 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 17:18:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 17:18:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb1e0f91d383335863c2fd20f888585c911bce0cc67a6e514212490f0af765`  
		Last Modified: Wed, 04 Apr 2018 17:19:32 GMT  
		Size: 14.1 MB (14148217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:19d5d9e2ef545a7328e7181566e4ebd796327d8da1a131f95cfcbb05d917b9ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13703028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d27b0ee9b4bc26fdfd03e533ef7e48aa0f52e03f649717a56186a144130c09c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:02:15 GMT
COPY file:e0f908d0300dd19378a5a9baded68d9e445f20a1f205e9bdebf0d39f61c7ff09 in / 
# Wed, 04 Apr 2018 20:02:15 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:02:16 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:02:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd17961175a502563e2f45ac8121a4586e44ede1f715c11dae88b8ffcb24f6f4`  
		Last Modified: Wed, 04 Apr 2018 20:02:50 GMT  
		Size: 13.5 MB (13547844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:978516c6bc46d3103c950ffa92e087bbb91387c473b402c1582edd915064e6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13414652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaa9d407d9ab23c769241e17c82b6ddc30940c59450327f829cc323112ab703`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 04 Apr 2018 20:03:41 GMT
COPY file:71c1d97f35ff1301829326ecce36640daf0cae8623e07ef6ee5a342aacc2f421 in / 
# Wed, 04 Apr 2018 20:03:42 GMT
EXPOSE 80/tcp
# Wed, 04 Apr 2018 20:03:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 04 Apr 2018 20:03:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eaed942a46ae3a4efcb109cccb36c83cb0c38798864ea0c0c9ea189571ac35`  
		Last Modified: Wed, 04 Apr 2018 20:05:19 GMT  
		Size: 13.3 MB (13259501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
