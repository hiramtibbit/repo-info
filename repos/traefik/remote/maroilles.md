## `traefik:maroilles`

```console
$ docker pull traefik@sha256:f2052b0e2abad0b57c16921c66623c71d8d5432e3ccf8e6a386bf07f416ef008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:691d7e42caa2acd9a5d345b184d520cb2c123c68cd305431cd3a05212a4a1712
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16065760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9981468308bf3b226f09eb995b4cf7ccedbd95428fbef5ead93bbf68dd9dc3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 09 Jul 2018 20:27:44 GMT
COPY file:9b1408023ea2f3c134a52dd09288e3085e202068adee702a21097b1e2c671bc1 in / 
# Mon, 09 Jul 2018 20:27:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:27:44 GMT
ENTRYPOINT ["/traefik"]
# Mon, 09 Jul 2018 20:27:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352e40814c4f731dcedbdf25bcc7b0b556525c9dc46bacc8025bf0b78a827c33`  
		Last Modified: Mon, 09 Jul 2018 20:28:55 GMT  
		Size: 15.9 MB (15910610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
