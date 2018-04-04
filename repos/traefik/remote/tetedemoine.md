## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:200832d9d6ca19564a265f39bcbbc7730d02fd6af68463a2a48cecc06861dc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
