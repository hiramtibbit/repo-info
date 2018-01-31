## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:5fbb29c132fd4d539cd20b7d196de8d47b467b09f3e06ecbee288671d9276680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats-streaming@sha256:5eb732b34b7330e5835d0d3c44f624d8f0084433e1d4471266842ef064848354
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5377850735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5ab0ddfc38ee607b4fb23fcb60cf7c9b2a506fc44b8692f727d5f86f6f0265`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:35 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 04 Jan 2018 23:30:36 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 30 Jan 2018 23:20:56 GMT
RUN cmd /S /C #(nop) COPY file:ae19dadf60c6d6e7083eeb64f689e0e35a8e3a0ac783cfd493f64ad62296e5d1 in nats-streaming-server.exe 
# Tue, 30 Jan 2018 23:20:56 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 30 Jan 2018 23:20:57 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:992d160bd07e67042bb0ffc079852f4af6ea6cf64c81787c3b6fc0b14f6060f8`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1bc3015f4327e05866390ff008dd5ecb749bfffb1ca922cb3e2ae20b02299`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7ddc080cd021703fd8899c3f9d2da4d253dbaf6ef235c0c63de1e992ed7319`  
		Last Modified: Tue, 30 Jan 2018 23:21:20 GMT  
		Size: 3.8 MB (3840629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaf8df80c41298d43c6b186fad2f86ae8b4d08fada3ccfae9266eb693feef64`  
		Last Modified: Tue, 30 Jan 2018 23:21:19 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40362d4675708304fed9cae60f8fc44025c9ccbc7d925f9740f22a1e6e7fd681`  
		Last Modified: Tue, 30 Jan 2018 23:21:19 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
