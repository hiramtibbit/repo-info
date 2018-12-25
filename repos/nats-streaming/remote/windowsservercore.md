## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:36d8f61615008db12c3dbc79bc131755ea45aa3ee186505297d4c8952492c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull nats-streaming@sha256:3f3865305d6d0ccd4625e32f0bfcf08d8541822c5437bebb9ecf0db897a88077
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5639446650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bf9d775643b226e132d1e2a7a7553bcc3a80a2482130a9394f51ed3da53156`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 18:58:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:58:29 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 25 Dec 2018 18:58:31 GMT
RUN cmd /S /C #(nop) COPY file:a913329b956ca69c5f042ce295da16bdc04c8a638b08a98d94204be2e06709af in nats-streaming-server.exe 
# Tue, 25 Dec 2018 18:58:33 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Tue, 25 Dec 2018 18:58:34 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1757f36d2758dac6649fd11788fe1f4aadd5bc256a44a1f15725983aa6bfee6d`  
		Last Modified: Tue, 25 Dec 2018 18:58:56 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50d1beab21247baea447c0728f2867f307e9fef0c8ae5c7c5af5ce7bfd37eda`  
		Last Modified: Tue, 25 Dec 2018 18:58:56 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359195e3834d537e86061ec116b06f40791e9f7b1347a310237c6da321290d0c`  
		Last Modified: Tue, 25 Dec 2018 18:58:58 GMT  
		Size: 4.7 MB (4714466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf14b21b4da273de88222d601432c065d3994c83bef601cf0895eed3984156`  
		Last Modified: Tue, 25 Dec 2018 18:58:56 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324305f0bc865750ad996d90d57d84731f015e626b81881690432a5ed1f753f8`  
		Last Modified: Tue, 25 Dec 2018 18:58:56 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
