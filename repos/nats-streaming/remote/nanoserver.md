## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:5ff7719db71519fd301e04cfb3c57a536b75fb0e67eac9e46676a30af525c7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats-streaming@sha256:4071d861df702a9706830357a18dac3163d5e531e58b1e5509acc34731af31a7
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.5 MB (412538637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6afc2baf71878ceda2eb9c81550e5187651ba25a0c2de3e34fa911ad2c9c32c`
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
# Wed, 14 Mar 2018 22:21:53 GMT
RUN cmd /S /C #(nop) COPY file:ae19dadf60c6d6e7083eeb64f689e0e35a8e3a0ac783cfd493f64ad62296e5d1 in nats-streaming-server.exe 
# Wed, 14 Mar 2018 22:21:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Wed, 14 Mar 2018 22:21:55 GMT
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
	-	`sha256:fae23ea0d2f3911e5e40a5bca0db3bd74e71ecde143a1d1e51106a99859e9c10`  
		Last Modified: Wed, 14 Mar 2018 22:22:17 GMT  
		Size: 3.8 MB (3840384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2703a387ff0dfdb693287cd9cb88fe4ca7cf809dd54cba2d9aeca9380e7278`  
		Last Modified: Wed, 14 Mar 2018 22:22:16 GMT  
		Size: 914.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dec561c9ea040d24766a623bb45266d255aae1a672029db583466c46defda8d`  
		Last Modified: Wed, 14 Mar 2018 22:22:16 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
