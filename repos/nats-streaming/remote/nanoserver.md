## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:a536f79211653dce97934150d6571d2f722feb2df30c44b9b20813cc689c2eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2312; amd64

```console
$ docker pull nats-streaming@sha256:03eb9b1a738cd1a662f6e4ecd372d0c3172480ee2ec4cf0a11aba8dc23747c1e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.3 MB (422321569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7d584ae56c36d92795e6102f023fb7814ecab7b597cdc0a40b56c082eea5f8`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Wed, 04 Jul 2018 09:46:03 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 04 Jul 2018 09:46:04 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Wed, 04 Jul 2018 09:46:06 GMT
RUN cmd /S /C #(nop) COPY file:e47f90ad2a6e70faab21b17190b493ddccd7936d592dbddfceca1ae7f3a1b36d in nats-streaming-server.exe 
# Wed, 04 Jul 2018 09:46:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Wed, 04 Jul 2018 09:46:08 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9b8eb83c4be00aa333cea97cdf6ceaf95035481bde902ce5e8f1490185df8ac`  
		Last Modified: Wed, 04 Jul 2018 09:46:26 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e6efc10cd798be334a86d568b3846f09b726211c9fcded32679c19c1f5f78b`  
		Last Modified: Wed, 04 Jul 2018 09:46:26 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1756f2c92493766a563b929181898809a5091f408d4525c1d2ebf8906a6b0c7d`  
		Last Modified: Wed, 04 Jul 2018 09:46:27 GMT  
		Size: 3.9 MB (3877406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aaac107ffcca158e9090b076792c8811ffbee7374a4efd05c9ed39dc31ca479`  
		Last Modified: Wed, 04 Jul 2018 09:46:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd013f80a7c11c32ad034196d330730680e72b7f824e477c4928ce8b072de8dd`  
		Last Modified: Wed, 04 Jul 2018 09:46:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
