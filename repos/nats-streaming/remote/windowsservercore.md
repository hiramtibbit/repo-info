## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:50c3c403461f09e9264fdab9210ef1c0721b7d0db242c2012fa88a65515d18e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats-streaming@sha256:33fda95dd85b007419be1a54faeaf9dc7e086c29f50c8cb7264090611383ceec
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5377462686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36571e2740845844adca01ee3e709eaf71f44e3a7c28d334e1da3786f06e7e3e`
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
# Mon, 29 Jan 2018 23:20:22 GMT
RUN cmd /S /C #(nop) COPY file:9971bf6318264cf9455380b7b27a366f48421824c236724959087374577a8d44 in nats-streaming-server.exe 
# Mon, 29 Jan 2018 23:20:22 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Mon, 29 Jan 2018 23:20:23 GMT
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
	-	`sha256:09ccdb3f493e90efafbccdf52c7c57f72695b975369e503d28561f99026ffe26`  
		Last Modified: Mon, 29 Jan 2018 23:20:45 GMT  
		Size: 3.5 MB (3452563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad806fc91e4162bf17b3d1e5d7ff17238a13dd64639f9057be43faa895b581c`  
		Last Modified: Mon, 29 Jan 2018 23:20:46 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37790127d1b1967dc375d4778166b3fc26a1dc77840cbf8cb1d7899efcead6b2`  
		Last Modified: Mon, 29 Jan 2018 23:20:44 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
