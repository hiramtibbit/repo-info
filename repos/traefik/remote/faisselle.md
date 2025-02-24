## `traefik:faisselle`

```console
$ docker pull traefik@sha256:dbbef4ea626b2cf71a031565eb751f0b62201be62b18c8b1d8f8dd2887af4af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle` - linux; amd64

```console
$ docker pull traefik@sha256:0bddb7abb119a2426cd59713d79c2cb8aa19e64c0fc416bbc41a9ff075f65abd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18051722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727669322043e469ef8870c1878f1360405336f72d55cd03fee377647f80c158`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:21:19 GMT
COPY file:f993a1cddf39963e59175213be2c37a74f207bfe4ef25841934cf821e5c1d720 in / 
# Wed, 19 Jun 2019 20:21:20 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:21:20 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:21:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:21:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4f12928a311de2d0539ca376ff1a03889820eda5170e5d4306d7c210b025`  
		Last Modified: Wed, 19 Jun 2019 20:21:53 GMT  
		Size: 17.9 MB (17919700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm variant v6

```console
$ docker pull traefik@sha256:04d5aad10f730aa1b7a6e527efd6681f448ee71098f694f80b93db2cb9c27832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16909047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdb4e18779806341dcd41b13feb228a0a67c4bd592b4081db2d17e336944d75`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:24:39 GMT
COPY file:18baec0ca932e9bdf81ea80b7cfe1313995b4fca6a825b667d715c0dbab98b82 in / 
# Wed, 19 Jun 2019 20:24:40 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:24:41 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:24:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:24:42 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055ee6dcdeb330856bce715456ed7c9cc250f75ce88f792f458e95b710f74293`  
		Last Modified: Wed, 19 Jun 2019 20:25:38 GMT  
		Size: 16.8 MB (16777025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:da9ed985e8ee1de7486c9886e0fdcb6fd78edf173fe3e264d97351889060ed8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16611493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24e3271a829ab9614c01932fa3cea1f285bfd398f00f86184a93824cf15c126`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 29 May 2019 22:48:34 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 19 Jun 2019 20:26:25 GMT
COPY file:a5016a7e321ae9e83a45b1ef04cbf615a8d3545d513b440b1fea241f2f518e02 in / 
# Wed, 19 Jun 2019 20:26:26 GMT
EXPOSE 80
# Wed, 19 Jun 2019 20:26:27 GMT
VOLUME [/tmp]
# Wed, 19 Jun 2019 20:26:27 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:26:27 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:584016d61c187e4a6e7fe7b278382a810b56900deabfe42918d6ea510fc0cbe7`  
		Last Modified: Wed, 29 May 2019 22:49:25 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb814019a4bdb8e603c77b6ac11a8ddc2c41131f18879553a7ff6e4bc86af0d`  
		Last Modified: Wed, 19 Jun 2019 20:27:15 GMT  
		Size: 16.5 MB (16479471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
