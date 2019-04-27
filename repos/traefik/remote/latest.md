## `traefik:latest`

```console
$ docker pull traefik@sha256:4463af670ef828ec9e7d60111add356130b7394b94971b53ad12d298607a2167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:e5ab2366d797bbe0e376189150b551b1f7fc4a3ee26d069c64b7ef9669e0028c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20346170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2f1c7902c773164cfa4afba0af881fe47b399b930f6ae92b5eea3cb7ee81cc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Fri, 26 Apr 2019 22:23:59 GMT
COPY file:ad5a10c4cb0f93b074b68e3cd7c5359cdd071f222035954a2bc273552178e519 in / 
# Fri, 26 Apr 2019 22:23:59 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:23:59 GMT
VOLUME [/tmp]
# Fri, 26 Apr 2019 22:23:59 GMT
ENTRYPOINT ["/traefik"]
# Fri, 26 Apr 2019 22:24:00 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7049637f2a99de315b8bbd3cbd7db196aae2287df6e7a41c02e86be4f162a45`  
		Last Modified: Fri, 26 Apr 2019 22:24:23 GMT  
		Size: 20.2 MB (20214148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:873f025afff0ae8ca7ecab0a21e1bfa41c8b3a5b6612483641e646547b6da0a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19101313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2133e0c6de639eb2f24ab42601e4a6724e754768e5409c87eb3c0844ca27f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Sat, 27 Apr 2019 07:53:18 GMT
COPY file:02a889279a97ef9ca78eca3e8a037c8941adb309ca9666cc8ced8e3f7c237384 in / 
# Sat, 27 Apr 2019 07:53:19 GMT
EXPOSE 80
# Sat, 27 Apr 2019 07:53:19 GMT
VOLUME [/tmp]
# Sat, 27 Apr 2019 07:53:19 GMT
ENTRYPOINT ["/traefik"]
# Sat, 27 Apr 2019 07:53:20 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceda96c01b0e04b20b68642353a6c4f7f6a09d7783a74b496cd7edddd7106239`  
		Last Modified: Sat, 27 Apr 2019 07:54:00 GMT  
		Size: 19.0 MB (18969291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
