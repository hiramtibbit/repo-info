## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:33bd72e5c581ea6c6bd9e5832be5e22be869a7e4e64ac5d0d8163090c5585d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats-streaming@sha256:b1e1335154a2eee669214ffb9682a573a0e292e367a725c4990476462ac7845f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5640688875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1d81fbdf45931d71a8f840fd4af0693a138418c5f347b5c90fdccca3bd68ed`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Wed, 16 Jan 2019 10:15:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 09 Feb 2019 10:40:32 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Fri, 31 May 2019 21:17:06 GMT
RUN cmd /S /C #(nop) COPY file:8986269637e5305910301f488fc8a6c05ecd6b232ebdb75f36b40f8ef927c936 in nats-streaming-server.exe 
# Fri, 31 May 2019 21:17:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Fri, 31 May 2019 21:17:10 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:841388388e527c92b099880239db11e129d4d9d0ffa56a19dccc5811e33c0874`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8c92f575a2b28972517be97ab67c77fb42da9d20dc7f7c4c54750a178476e5`  
		Last Modified: Sat, 09 Feb 2019 10:41:01 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c9ce4f9581f4114db7f15295c502aaab59f27e8cae21f577206e5ca41d0724`  
		Last Modified: Fri, 31 May 2019 21:17:42 GMT  
		Size: 4.9 MB (4867874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73ff32b35dd4414ac4cf393b70334a0596fb03ea74a3addd8abc85e348211e3`  
		Last Modified: Fri, 31 May 2019 21:17:40 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3121b7410e036d041d810780609965993134cb034f2b7572e8d8804cb2b5f52d`  
		Last Modified: Fri, 31 May 2019 21:17:40 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
