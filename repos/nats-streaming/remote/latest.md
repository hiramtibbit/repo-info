## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:e75f496e60d1a2cea5933bed2bc38ca14d02447ea49ea0baa3fafd743ad00fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2125; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:60463540bddbdfd42cbaf95defde86ca0d699edaf4bc300533abacffd9fa89ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf688abfd477120541b1f642059990f57809a8966a19f8640bf9df5744f46ff4`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 03 Apr 2018 19:41:38 GMT
COPY file:e34751fb7cc16d518615e7b40cf76fc5d101c16162620a5b326c15f95d0f1073 in /nats-streaming-server 
# Tue, 03 Apr 2018 19:41:38 GMT
EXPOSE 4222/tcp 8222/tcp
# Tue, 03 Apr 2018 19:41:39 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 03 Apr 2018 19:41:39 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:3f0a5941c35d962fad7ac1a47bd612ae4cbf3597fd1547c0073b824ab2f763d5`  
		Last Modified: Tue, 03 Apr 2018 19:42:45 GMT  
		Size: 3.8 MB (3825772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:76ce0730111f88101c0181ea1554a794c560a3e403248c29f7da9d7e6cc22c9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3582300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac46c51a5e7aad95a2759c3d3064dc1cee74b7cc251a625caddcce8eea36b117`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 03 Apr 2018 19:44:03 GMT
COPY file:4abe0279802570dcf5cb2b7b53d76523c36c25d6044621e2a27c552a95fa268a in /nats-streaming-server 
# Tue, 03 Apr 2018 19:44:03 GMT
EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Tue, 03 Apr 2018 19:44:03 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 03 Apr 2018 19:44:03 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:b0ae9005c3becedf1b6ba48b265ffc0b2aec5153cfeb65bdb2c760a0b8afcb33`  
		Last Modified: Tue, 03 Apr 2018 19:44:14 GMT  
		Size: 3.6 MB (3582300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:901476a2eadcb004d7953224b646a64f5b8515b0022569988d75f04f4015e17e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ce8da611d6f3f5846d3b2db92133df77285928c29e9d78659de6143a13d32e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 03 Apr 2018 19:44:14 GMT
COPY file:e55ae8049ade53807670d4ece30083916225488051a6035b772f0ae933e14075 in /nats-streaming-server 
# Tue, 03 Apr 2018 19:44:15 GMT
EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Tue, 03 Apr 2018 19:44:15 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 03 Apr 2018 19:44:15 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:5a3925afef1f98a6b267272941477e9acc69b70a06c99939bb634b9f6987a273`  
		Last Modified: Tue, 03 Apr 2018 19:44:31 GMT  
		Size: 3.6 MB (3579365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:824be1736a9e94ae1d373fd4600377e0db07fad66ba7ff6dc0ba6e17789f3b88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3488208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27b8a19870b072c74b578ae24b89744b50996bf9a92a23046df2b2dd638dc8a`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 03 Apr 2018 19:54:43 GMT
COPY file:2778cdcb40902e151e5d3ac6e2de2a488342e59af5d64908762f35eb7d07a507 in /nats-streaming-server 
# Tue, 03 Apr 2018 19:55:02 GMT
EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Tue, 03 Apr 2018 19:55:02 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 03 Apr 2018 19:55:03 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:75377ce2c0fc1bd6e92799f923da4a79eed68038afd94fc0598a1374e47f14b8`  
		Last Modified: Tue, 03 Apr 2018 19:55:45 GMT  
		Size: 3.5 MB (3488208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.2125; amd64

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
