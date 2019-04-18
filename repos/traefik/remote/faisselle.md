## `traefik:faisselle`

```console
$ docker pull traefik@sha256:dec41981c2df3a2646d45a769ea2dd0d29fcb3c6a057bc4d5993d0fd4c8e8966
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:faisselle` - linux; amd64

```console
$ docker pull traefik@sha256:7e577295f2aefb8b7037c54afbab8e7b29debedd876ae417ab9bb5d704a937df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17448159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1653dfd3a96b93feafc6eb9ecb00858089161400739d2612aae34aa14b2b4730`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Thu, 18 Apr 2019 00:00:20 GMT
COPY file:6276ff2d0f22504d5f2478b52297ca9943316559452df289d0152d650e097a4b in / 
# Thu, 18 Apr 2019 00:00:20 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:20 GMT
VOLUME [/tmp]
# Thu, 18 Apr 2019 00:00:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 18 Apr 2019 00:00:21 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b1ec87dccdc3565126b2306fc184b98172237d9130ccf06d962f5accf26c0f`  
		Last Modified: Thu, 18 Apr 2019 00:00:58 GMT  
		Size: 17.3 MB (17316137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
