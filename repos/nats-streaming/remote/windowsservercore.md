## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:9679728362449910c9ceabf55f50e20ba0f446a6e8938ad96689525ab8370a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats-streaming@sha256:f06033f0179967062acde84f5a4a1b4492a76a003310120f2ae08431cd495ade
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5381987524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6d2203cc0d4cf39d0b0d75f780f3d1bfec8e59e22aa0a667e6599124168f4b`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 00:36:59 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Feb 2018 23:21:45 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Wed, 14 Feb 2018 23:21:46 GMT
RUN cmd /S /C #(nop) COPY file:ae19dadf60c6d6e7083eeb64f689e0e35a8e3a0ac783cfd493f64ad62296e5d1 in nats-streaming-server.exe 
# Wed, 14 Feb 2018 23:21:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Wed, 14 Feb 2018 23:21:48 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f00f076cc1bedff049d5fbc1d724645767133c4e01b51ce5f579d69aab8f391c`  
		Last Modified: Wed, 14 Feb 2018 00:37:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc099d3d20323e2e2dbb8a7c606cf548b3faf0db74ccee450a34153e199eb72b`  
		Last Modified: Wed, 14 Feb 2018 23:22:11 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e1e7d0c3b7eef14acd333f153505b3586071f7de3e087b0e5755e880aac91`  
		Last Modified: Wed, 14 Feb 2018 23:22:12 GMT  
		Size: 3.8 MB (3840635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd9d0f734fbe5539b1178f2a0dd889a3ae33fb2f0137869fe36e32ecdb40b23`  
		Last Modified: Wed, 14 Feb 2018 23:22:12 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17674352e0e5517a4a27b8148ebaeeff4b9dfe2130b9f36a2eb59fee533c55d`  
		Last Modified: Wed, 14 Feb 2018 23:22:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
