## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:132f3ed115d65a457e7d4521e1d2b92b262aa8f4d6bc38f534d5f7e70424a9ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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
