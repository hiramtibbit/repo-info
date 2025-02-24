## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:74ba53b15ab8902cfbdcd9179a9274b9129498cd125acb909ca7d3eaa0b76408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:6de709a910adaabc6675736bf29da8a19c2465c752170be213af3f1bfeddcea5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.7 MB (455662203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4464fd3906bd225e9ae745f8061f5b5795524841ceec3169ce11fccd8323d31c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 29 May 2019 22:14:26 GMT
RUN cmd /S /C #(nop) COPY file:aa67ccac383ed7ea406c8c1d7ffbc0672861067b00d6bb66b5fc79cd1fc4abd6 in \traefik.exe 
# Wed, 29 May 2019 22:14:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 29 May 2019 22:14:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 29 May 2019 22:14:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fe0d4c0f6b2858d0c75a62318bf3080d75c6071401ac23576dc046fe0e74a2ef`  
		Last Modified: Wed, 29 May 2019 22:15:26 GMT  
		Size: 20.3 MB (20262565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578ae3e1e215beed05ec06469ea5994958a40bcb5776ae03b07ac90be18eeb5`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935d8dc299349e893457eea58511a3be8ebe601642f11acda2f13f0cc5e08785`  
		Last Modified: Wed, 29 May 2019 22:15:03 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39267f6fbebdddabbd7fb6a1bb5b02aae79dcc9cbc206d588898de4d385747de`  
		Last Modified: Wed, 29 May 2019 22:15:04 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
