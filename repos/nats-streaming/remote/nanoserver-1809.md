## `nats-streaming:nanoserver-1809`

```console
$ docker pull nats-streaming@sha256:10748e4a40949e9dbd9d70b21c9d60a64c87da2470121aeb05cf4bec6d7439ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `nats-streaming:nanoserver-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull nats-streaming@sha256:e22a07bee5aa6543d57cf53b4caab0c47b79c81a175f79a44567fd2354618abc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5d48c39d8333e4b1acb0392614092c0b86744960c0b9e397c50d4d87f65bb0`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Fri, 07 Jun 2019 10:43:28 GMT
RUN Apply image 1809-amd64
# Wed, 12 Jun 2019 13:52:26 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:15:55 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:15:57 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:15:59 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:16:00 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:4afaf8a8c3fabe3f23cf85c8e4ec49d95c842576e4f348302edb8b7fd64d6036`  
		Last Modified: Tue, 11 Jun 2019 18:44:48 GMT  
		Size: 100.4 MB (100446304 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0555b451cb6e36218d853d18da9003ff58474cde0af43b4a4898b07d877b581`  
		Last Modified: Wed, 12 Jun 2019 13:53:24 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9da92db96c6cabdea782d22cfe58281f44a76324aa65e4ed91dab2f621fea17`  
		Last Modified: Thu, 13 Jun 2019 20:16:47 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6dee7d3d6cb495ba54ecc2923a7d0dc2639f65e3fb84a245b924c297b36847b`  
		Last Modified: Thu, 13 Jun 2019 20:16:49 GMT  
		Size: 5.5 MB (5451426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b039c4324607f37b736ee07d0f89db432d6a209fb0575038d444c6a29edf0916`  
		Last Modified: Thu, 13 Jun 2019 20:16:47 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7f25ab6a179ad93de33604bc56f82f2cd6f8aaf467a83720354b797be01e98`  
		Last Modified: Thu, 13 Jun 2019 20:16:48 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
