## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:40d165fed24f050c4054fd90a5b993c651b1f42ea2b212ce639e6d76d6229552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `nats-streaming:nanoserver` - windows version 10.0.17134.829; amd64

```console
$ docker pull nats-streaming@sha256:8a2ed294359440836bf021611451185d9518b9fc70ab3a45bf7cb3ef91bbeb0d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155690385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b913c6db4c2d5d0183bf6632cf46cb24dec6a0b0455eb96179c6fdc39cb1d1df`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 16:52:04 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 13:52:10 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:15:41 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:15:43 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:15:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:15:47 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:61703422ec932ddc8860cca8c8d4ee04e80e412105b5853e896aaf6bfb018eb8`  
		Last Modified: Tue, 11 Jun 2019 18:13:46 GMT  
		Size: 57.4 MB (57416125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:24ff25890b0be7c2689e13472be3e7c84887e0056e7edd5dc8821c94275fa606`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f635420a6c9243645deab88d551b30983c0b31d96bd17530bb15652e5f31bc3`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ffc94826b2fec06e6962c70d8b64cce8826cfeb161b88f181c8786f09836c1`  
		Last Modified: Thu, 13 Jun 2019 20:16:33 GMT  
		Size: 5.5 MB (5451445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683f8e47fa164d457136a8a478ce70c2c85e88a074f24ebee04b2a2e0771ce15`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e252e7c4927b04f522137d21726c1f851a681447ff4d0d03afeeeb5cc2600c8b`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
