## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:5e63dd1538d9ece2e3097d7cad0036f3d09a3dd16ec2c84af752ca647b54d2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats-streaming@sha256:1e5fbcb93aae9257f1e6749d214d282db19f0f25dac4b6726e507b3c7d23a4a3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5393026392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6142c0740193cfe1dcb0ee435f21ee05f5e0ede8a2094cd071f653e93d5ca717`
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
# Wed, 14 Mar 2018 22:22:03 GMT
RUN cmd /S /C #(nop) COPY file:ae19dadf60c6d6e7083eeb64f689e0e35a8e3a0ac783cfd493f64ad62296e5d1 in nats-streaming-server.exe 
# Wed, 14 Mar 2018 22:22:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Wed, 14 Mar 2018 22:22:05 GMT
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
	-	`sha256:0c3543c1851b1f45d403cd6ac7da6a1bacc39e988d553174e6df14daa31181b7`  
		Last Modified: Wed, 14 Mar 2018 22:22:29 GMT  
		Size: 3.8 MB (3840624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9ace0bf636919477f5a6f86b6666f83d1ab325d992a1bf2e22928063349621`  
		Last Modified: Wed, 14 Mar 2018 22:22:28 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea5a2a206193c3b1c45a6381a60a2e33621c2a9c6f35803884cbfddbfd94cfa`  
		Last Modified: Wed, 14 Mar 2018 22:22:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
