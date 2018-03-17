## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:60a5ee4046a608e70aeefc7f4713d452cb5733a447892550dc9bdfd609f6d944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:4ed3a8047c153adaf5029873c4e272c8a372ba645546b865ed6db6c0642144b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a3b12418d33d30e14dbaddd66da82c56a99b5243dcbff5f161f5e0037ceb68`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 16 Mar 2018 20:55:57 GMT
COPY file:b2a7a3cb2cdb8a50e1396d46c0abd2d6e78521b77aa1c9ebcb274599b68e343a in /nats-streaming-server 
# Fri, 16 Mar 2018 20:55:57 GMT
EXPOSE 4222/tcp 8222/tcp
# Fri, 16 Mar 2018 20:55:57 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 16 Mar 2018 20:55:58 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9a9204bf6dd332233debc2bfe8fbf4c773e0a7aafd451bd1ca3a34dca234d3a2`  
		Last Modified: Fri, 16 Mar 2018 20:56:22 GMT  
		Size: 3.8 MB (3807912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:66ccae6d73184c1ca34bab4d3bbee608ec17f019eec847c29a210055aea9e8a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3566357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e7046b456b34417f7b7ba41e4662215d5e5b0c0f434b7eaf3c2ab7faff5f20`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 16 Mar 2018 23:27:45 GMT
COPY file:a9b9004c78701f1dc8a89548244aba9ac628fe569de11ba648d8aecfa0ea91b2 in /nats-streaming-server 
# Fri, 16 Mar 2018 23:27:45 GMT
EXPOSE 4222/tcp 8222/tcp
# Fri, 16 Mar 2018 23:27:46 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 16 Mar 2018 23:27:46 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:ddf7c12c2515e56ab58b16381c8d0d51e28e5090e9d033bc3ae01c5f26253812`  
		Last Modified: Fri, 16 Mar 2018 23:28:06 GMT  
		Size: 3.6 MB (3566357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
