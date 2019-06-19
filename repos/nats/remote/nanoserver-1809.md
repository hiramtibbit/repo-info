## `nats:nanoserver-1809`

```console
$ docker pull nats@sha256:ed97fe71a6c729cac94fa892cceb6f1d315bc46ae98e0684fe590821e7868d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `nats:nanoserver-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull nats@sha256:24e82157bbdd81c452c8fb572d756cdb26d98bdeaee397324039196473ed8668
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104026119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5fdd8cbed64ae976077f8e5c77145463cb099ce6fad16c6d63ec9a6278aa04`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Fri, 07 Jun 2019 10:43:28 GMT
RUN Apply image 1809-amd64
# Wed, 12 Jun 2019 13:52:26 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 12 Jun 2019 13:52:27 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Wed, 12 Jun 2019 13:52:28 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Wed, 12 Jun 2019 13:52:30 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Wed, 12 Jun 2019 13:52:31 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 12 Jun 2019 13:52:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Wed, 12 Jun 2019 13:52:33 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4afaf8a8c3fabe3f23cf85c8e4ec49d95c842576e4f348302edb8b7fd64d6036`  
		Size: 100.4 MB (100446304 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0555b451cb6e36218d853d18da9003ff58474cde0af43b4a4898b07d877b581`  
		Last Modified: Wed, 12 Jun 2019 13:53:24 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98138b0de6e1b77c270210aedaf3cd9856aa78f454004e3b4f7cdbf9660c928`  
		Last Modified: Wed, 12 Jun 2019 13:53:24 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0981a1058118df15a9f76976e827401abf1aeaebffde1c120de21b6f9af44585`  
		Last Modified: Wed, 12 Jun 2019 13:53:23 GMT  
		Size: 3.6 MB (3573320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9d9a14d7b53648e94570fe3f24fa1c669679974bfddad4a99de48bf2cd440e`  
		Last Modified: Wed, 12 Jun 2019 13:53:21 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaff4d1766885f6f908372d931f6ab543a50458d7bbc76cd05b42bd89cf9c9e`  
		Last Modified: Wed, 12 Jun 2019 13:53:22 GMT  
		Size: 909.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a6768874ad507a66b357033e38b33badf7bed41acb5cead4599ae3d0d8ce6e`  
		Last Modified: Wed, 12 Jun 2019 13:53:21 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33de4172e17a9c11314300ec70999ec46ace92d0e84e80065d22b3c1af79f327`  
		Last Modified: Wed, 12 Jun 2019 13:53:21 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
