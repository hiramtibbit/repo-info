## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:9bf4a7c02198f65818cccc614d7a57287dd844f3d729c834dd3b9f315190f523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats-streaming@sha256:d426bcfd731c12c52b78bd5651706d4a0f88f53fb0499e52fd5f4275cce76383
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.6 MB (412567565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72af344a36f6a3a36131736563857eead34fd566958744759eb29fcf9f346d8`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Tue, 13 Mar 2018 23:39:00 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Mar 2018 22:21:51 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 03 Apr 2018 19:47:20 GMT
RUN cmd /S /C #(nop) COPY file:390610d4df3f20308cd6782a8e771d02206f78919962bc4e7c814c3ffcab202f in nats-streaming-server.exe 
# Tue, 03 Apr 2018 19:47:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Tue, 03 Apr 2018 19:47:23 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd6679018c86917df531ece3d8500b5dfaccb8b79ba313225e6b0f40be5f9f9d`  
		Last Modified: Tue, 13 Mar 2018 23:39:33 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6214d441b14aa67647b0d3366fbf1d6a802b7457ca11fe0f50ed57147e2a4e87`  
		Last Modified: Wed, 14 Mar 2018 22:22:16 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ddc7e10df588521e990b57018123bc0999d46df6fb866705a80ce6304e3003`  
		Last Modified: Tue, 03 Apr 2018 19:48:03 GMT  
		Size: 3.9 MB (3869273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a612d1695a24a1a4d0dd0d81a5587e081ffb1964f19c625596a7f76a891063`  
		Last Modified: Tue, 03 Apr 2018 19:48:03 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d171e9dabfdaafefdc4573c0d922159b6d0008b4cec67887b9a0da8c5754c7`  
		Last Modified: Tue, 03 Apr 2018 19:48:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
