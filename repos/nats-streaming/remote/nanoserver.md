## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:b7cbf5b51f54f02f694bd4d9f70782168a79615e183db23389826a296b69fc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:bbdcf3b33160335382e9ccb52ac4b51987810203ca1cf60d4b6c34d90ea75fee
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 MB (440115031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e031c78538c19bec164723804750da318ad5a2010dcf4bacae11b200d4bcf65`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Oct 2018 09:15:44 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 18 Oct 2018 09:15:45 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 18 Oct 2018 09:15:49 GMT
RUN cmd /S /C #(nop) COPY file:dea4869748d25bfafa57d1cd96f9ebd57fef1ffb0867640af3237f418f943f22 in nats-streaming-server.exe 
# Thu, 18 Oct 2018 09:15:50 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:15:51 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
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
	-	`sha256:4e5a796061600081460d871399481f2bc57ea00372e67fef706e894d5cd5c51d`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432ffeb0e9c51f071a02162afb29359d174f7a73d85a228034ff31bce4e8db20`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e79dd10c6097c664386acadb8c3378375c4878d4fb49da5238e08b4f493a20`  
		Last Modified: Thu, 18 Oct 2018 09:16:17 GMT  
		Size: 4.7 MB (4714192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cd0f68d3d25311c6c52533d4132ebd0417f82d46d904f184a4654ee496173`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e70d1753eb4596466ae05d24c127ea10ceab6b1556dd7ffa51102f7af7cc3e`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
