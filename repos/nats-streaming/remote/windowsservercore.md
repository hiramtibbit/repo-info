## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:010b7dc45e1423854827053fdb6837b9beaf5e75f341bd0aef289fffedc774cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats-streaming@sha256:ea26d3f0f1de22518a78058bdae386f04e1bc09b44fe9b10829c5ffddbe48e85
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5393055273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0ec5accf32023aa8d4e26bc4b03b2a6b6775c6769b964f71d170b15e357768`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:53:23 GMT
RUN Install update 10.0.14393.2125
# Tue, 13 Mar 2018 23:39:13 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Mar 2018 22:22:01 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 03 Apr 2018 19:47:36 GMT
RUN cmd /S /C #(nop) COPY file:390610d4df3f20308cd6782a8e771d02206f78919962bc4e7c814c3ffcab202f in nats-streaming-server.exe 
# Tue, 03 Apr 2018 19:47:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Tue, 03 Apr 2018 19:47:39 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:133e38d368dd63f5c9da410ed1656fa9c1f3322a661906f3c2a86b4cd3ff292b`  
		Last Modified: Tue, 13 Mar 2018 00:53:23 GMT  
		Size: 1.3 GB (1319194954 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9d7e33bb1c4fd3a32c71bbd03a714782616d0998bf540b08a173b0edb17c1b4f`  
		Last Modified: Tue, 13 Mar 2018 23:39:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbb2ebb7cd8a8bacdb67b7833ea3d2bd779c39b8660afd4c8d53dbc927d7592`  
		Last Modified: Wed, 14 Mar 2018 22:22:28 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09845a90159264219889bb31241ff62ae0c5095186c449a47482357715f10536`  
		Last Modified: Tue, 03 Apr 2018 19:48:17 GMT  
		Size: 3.9 MB (3869503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a0721c2d4f18e1c530a049e8224ac2ef0c5f4aeca25e861a6185f0fd46b2c6`  
		Last Modified: Tue, 03 Apr 2018 19:48:14 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91f9d34fa8c19191f360c0975d773712a6e66293fde24aed36cf93b6165ce89`  
		Last Modified: Tue, 03 Apr 2018 19:48:14 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
