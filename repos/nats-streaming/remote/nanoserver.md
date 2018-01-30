## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:95a3914b262cdfa210b531229c507e314d23a6a5c13fc1ed7c3bc7baeff2dd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats-streaming@sha256:7495176713925a5eec6edd20e088775d3f958d6f42947061202673b7a2e1b5c4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.5 MB (406505263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283940e7b86119b3df467ce004a2b7cef4b023d9966850d5f30a515bd9e822e0`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:26 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 04 Jan 2018 23:30:27 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Mon, 29 Jan 2018 23:20:14 GMT
RUN cmd /S /C #(nop) COPY file:9971bf6318264cf9455380b7b27a366f48421824c236724959087374577a8d44 in nats-streaming-server.exe 
# Mon, 29 Jan 2018 23:20:15 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Mon, 29 Jan 2018 23:20:15 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:764aee428c28f0935a6ded2a2730509373e1357648795b609b911dd46aa06257`  
		Last Modified: Thu, 04 Jan 2018 20:07:02 GMT  
		Size: 150.4 MB (150357748 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:17dbcc3dc4bd52b77b681666085b3fcd9ee5fc59df7d486ba54e0867c1b24971`  
		Last Modified: Thu, 04 Jan 2018 23:30:50 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8743e28281d5bf7f7de45ffdd8357deae9ae6c82bcf382acbef032b82f36adc1`  
		Last Modified: Thu, 04 Jan 2018 23:30:50 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc00647abfe232a3729bba1bf87a2351f6854c7b9e725126464dc66764c144e0`  
		Last Modified: Mon, 29 Jan 2018 23:20:34 GMT  
		Size: 3.5 MB (3452514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ed2784fd83125db180334fbbcbf51eda4db8d1272e9b9166a920d422e19b55`  
		Last Modified: Mon, 29 Jan 2018 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10a1e754143a746fcc70fa29f48fac180d43544ca1ba776d73aacceb6d2f61e`  
		Last Modified: Mon, 29 Jan 2018 23:20:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
