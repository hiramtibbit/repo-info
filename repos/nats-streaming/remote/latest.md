## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:4024d1db789a3f9474126421310bf80f443e82d99327f251c7c74f75ff3b3bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2312; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:6c75ed5439d82eafffafc7018decf0e4398b879021118e8cb62d742bde70652a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3831427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec380559f1aa32ea11d154212972c5cc61f3a5a2aaade889b916586250ac32e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 20 Jun 2018 18:19:48 GMT
COPY file:8a334f64870c92646314b206223e9234ac6a5569f41c55f39a1b9da34a4d3f9f in /nats-streaming-server 
# Wed, 20 Jun 2018 18:19:48 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 20 Jun 2018 18:19:48 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 20 Jun 2018 18:19:48 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:e2210244c825c96f599b3299680e8ac9a5f8137a160684dae70562d6ad54d9da`  
		Last Modified: Wed, 20 Jun 2018 18:20:02 GMT  
		Size: 3.8 MB (3831427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:feb0026ff680458233ba37ccc8907c14238b6347fed15e37b793eaaed08edb00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb27065e8bb7eafcd6371b9e4b822359908e40110e527082ac8e74f1b03432c5`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 21 Jun 2018 07:54:26 GMT
COPY file:b3b69c0e9492e7ef0e795c07d8ab37f163551d1b32feff8883aee3a46fbfdf6b in /nats-streaming-server 
# Thu, 21 Jun 2018 07:54:26 GMT
EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Thu, 21 Jun 2018 07:54:26 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 21 Jun 2018 07:54:26 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:a0c324d8973e8bc382dc7a499c67db3295cf4ffd134c7786cd426ef4b3b01e8f`  
		Last Modified: Thu, 21 Jun 2018 07:54:36 GMT  
		Size: 3.7 MB (3671761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:cd9c3ab90d9fce20b5d3710dfde2b0a6d48208e7669a3da9c8e75f378fcad771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08500d28c9cc6b59d4d5b63309f304c4d4c1f0c110e3c27cb690ed7af6aadc63`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 21 Jun 2018 09:31:27 GMT
COPY file:ede8bfe61ddd412304a65907babb6d1170ecd712b8c4420f39118191f15735db in /nats-streaming-server 
# Thu, 21 Jun 2018 09:31:28 GMT
EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Thu, 21 Jun 2018 09:31:28 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 21 Jun 2018 09:31:29 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:5b022e822897af58e5369b3a6266514bd788477ce7b8bee9d2cc5f9c6e5921c1`  
		Last Modified: Thu, 21 Jun 2018 09:31:46 GMT  
		Size: 3.6 MB (3579790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.2312; amd64

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
