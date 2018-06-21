## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:91b7061085c78b6e623a04cc7338eb8978cd94aed6992c7fb940b030a4f13140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2312; amd64

```console
$ docker pull nats-streaming@sha256:786b8a76e586a384df97cc4b67a2fcdeba13f583bbf6c7068e9de21d9b0ca71c
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.3 MB (422321111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe8948326275bfcbf5b711dbb25beed9913715ef4aad9da09e4f828352c2c55`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Thu, 21 Jun 2018 09:15:07 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 21 Jun 2018 09:15:08 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 21 Jun 2018 09:15:09 GMT
RUN cmd /S /C #(nop) COPY file:7bdab96492ca0bbf9ad2797c4fe012804152b37008a34a54842860ced0d1d8f2 in nats-streaming-server.exe 
# Thu, 21 Jun 2018 09:15:11 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 5222 8222
# Thu, 21 Jun 2018 09:15:12 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2491b0515f7ad4458958afd20f76c426106b8566a0abb8421a070e04de4963b3`  
		Last Modified: Thu, 21 Jun 2018 09:15:32 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a555b0c20fc6e6c3f96c1e7b99672484c6272202924b09fa5a5264301e0025e1`  
		Last Modified: Thu, 21 Jun 2018 09:15:32 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4598d2add445328b6b40372d7e474da4e6b1fbcc221f33b05dcf12149fb2a271`  
		Last Modified: Thu, 21 Jun 2018 09:15:56 GMT  
		Size: 3.9 MB (3876969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426b43ce5ab7f83b58471714ec2e55ffaf3525bcd9892c4f6f7d38f8ff2289d3`  
		Last Modified: Thu, 21 Jun 2018 09:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0090113817d5ff6b033ad1536bafe94c70cd27af1c9f44abbae7a8d6d0a0c02`  
		Last Modified: Thu, 21 Jun 2018 09:15:32 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
