## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:db1dccf534549c796814765189ee47b48189951e0064f0731660d874c39d3bd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats-streaming@sha256:e56e74e263daefe535e4724ea9a054dd6b4c0f6c574fdb3b506ced2b2a76739a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5393038238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ace5711f363bf145d4600bf0cadf5d2390cd875ee23a1bb00cda48751048f008`
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
# Fri, 16 Mar 2018 22:22:11 GMT
RUN cmd /S /C #(nop) COPY file:89353859e56ad4eec04e662f40cbb2c64630a73e0df63e4deb487a48c0fc0d44 in nats-streaming-server.exe 
# Fri, 16 Mar 2018 22:22:12 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Fri, 16 Mar 2018 22:22:13 GMT
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
	-	`sha256:43103104d0aab69c4fc22ef36ec35a2da2958ef673cd80d3f5d8996ddf83f6e1`  
		Last Modified: Fri, 16 Mar 2018 22:22:37 GMT  
		Size: 3.9 MB (3852445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb0d7e32c6968bc1b18f4d2796a81456e6c2e5a72095988f4df09248a903d93`  
		Last Modified: Fri, 16 Mar 2018 22:22:35 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5885b750618a337cecb1bd4c7025c0f31024738f2a51f4032c8e92cb6cfa016`  
		Last Modified: Fri, 16 Mar 2018 22:22:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
