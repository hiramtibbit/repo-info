## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:a5254460d728d5d4d7e4c7e25b687d3b6d3a748acbfc053cc52ddc5399271643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2430; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:cbc90f6fccf1a000e374f1c551d550493360bdf7a4eea5afa3b626243b4e94a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4636427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3becfc2b594d365c1bacd2851a73334f5dc94dcc5b1c5e4a9b9e34de38bade5c`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 05 Sep 2018 08:39:20 GMT
COPY file:c36b87c5919a3b9acca2aace973ee78efc5b9cd073edb8e7106fb791d74be33f in /nats-streaming-server 
# Wed, 05 Sep 2018 08:39:20 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 05 Sep 2018 08:39:21 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 05 Sep 2018 08:39:21 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:5dc5e5df1eff5a53d4c4e287031928c978d06fb3e4d4db79e1303d8a20997d09`  
		Last Modified: Wed, 05 Sep 2018 08:39:33 GMT  
		Size: 4.6 MB (4636427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:76ec4fec37593bad2e44bb20f1748059b0bf5a2168014fac9d47a1ebfa286949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4364402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88a73d5b4659f888a1419aae31597fe2a87097a19d1a53a9c2334b6adacf04d`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 05 Sep 2018 08:01:56 GMT
COPY file:3f5079b627d3f05569601ec4ed09f6040cd0c9c0c4a0d7500ea3b320695580e5 in /nats-streaming-server 
# Wed, 05 Sep 2018 08:01:56 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 05 Sep 2018 08:01:57 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 05 Sep 2018 08:01:57 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:032f88aa350834ec165614b930b74472c67f5ff2d9aa19d74ab9fa9ab1803c7a`  
		Last Modified: Wed, 05 Sep 2018 08:02:12 GMT  
		Size: 4.4 MB (4364402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:3b23182f86ac36874a504f5a2fe298e0d0e35459a6e9e20f679468c39e920e0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28f756de198020ca3e50539193ab0dc456050e34b8284bc602af7c93d5d53cb`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 05 Sep 2018 09:03:34 GMT
COPY file:c37e0bfda4f6e7bc304ff844d5d6361ca9a0dab038d3bfdf8aa8382758116dbd in /nats-streaming-server 
# Wed, 05 Sep 2018 09:03:54 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 05 Sep 2018 09:03:55 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 05 Sep 2018 09:03:55 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:dfbd9986c8a2d4475c1b7cf11fb535032003fabeb27405854eb20a35386c9bf2`  
		Last Modified: Wed, 05 Sep 2018 09:04:29 GMT  
		Size: 4.2 MB (4227977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.2430; amd64

```console
$ docker pull nats-streaming@sha256:3a088a1696926cf537d937a3d015c35ca0eab4bdb03b1701ce54f62789945a1f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.2 MB (425187122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8e24a698772edebf095d61624ed3b15d1344dd65b4c327ed4e64d42da71788`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 01 Sep 2018 09:16:32 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 05 Sep 2018 09:16:35 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Wed, 05 Sep 2018 09:16:39 GMT
RUN cmd /S /C #(nop) COPY file:6fceacb4a15339840cf000d448e03db257add8a4e5daf67cfcafa881a6bcc60e in nats-streaming-server.exe 
# Wed, 05 Sep 2018 09:16:40 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Wed, 05 Sep 2018 09:16:41 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a7c6c5ea540b6fa9c311ada0aa79e1d6a539cefffe98b603b8c7fe79ed75c84b`  
		Last Modified: Sat, 01 Sep 2018 09:17:08 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599e503aadfd0b71d01498b4a808cf1e8dc59369fdeedd395df00013b2af29f5`  
		Last Modified: Wed, 05 Sep 2018 09:17:03 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee264f6da7998e0ae0c3ba855c08df351f3c3692987b10e75b2f67c907cd31b9`  
		Last Modified: Wed, 05 Sep 2018 09:17:05 GMT  
		Size: 4.7 MB (4708069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec2e1b9b696f6473b3ad8bb4752606357d61f024c304a8bb14060b6f6e5bae9`  
		Last Modified: Wed, 05 Sep 2018 09:17:03 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e154a145009205425127039a269004d1ee6eff14137abeeb64f47b7523f05e74`  
		Last Modified: Wed, 05 Sep 2018 09:17:03 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
