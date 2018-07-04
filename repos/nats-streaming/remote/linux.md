## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:e4f68998b9f23563c2e6bef49a9167b476f3309ed091aba67fda54d126db28d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:9584c99fcad75d7d6fad1dcf8a56bed7430373a38038226de09beeba3b7801c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3831788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a2f769bb183d7b45dc4c42e7259a71cc511d98f2cd43383df8eb1d6ecfecbc`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 04 Jul 2018 00:20:05 GMT
COPY file:196bd952b06e088575a9458d062cac4b324072c5c98733bb8da8b028f6d81f67 in /nats-streaming-server 
# Wed, 04 Jul 2018 00:20:05 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 04 Jul 2018 00:20:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 04 Jul 2018 00:20:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:100a78df5fc2aa98edf558a7c6ac6f5d6ca1691c640275370d4b50fa91f76216`  
		Last Modified: Wed, 04 Jul 2018 00:20:24 GMT  
		Size: 3.8 MB (3831788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:a1bda3fa4b26946c6ac16cfd8e86484852dad843da0b47ca829e7171b16f79e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb84198cdefcd85e3f1bf100421eeb5a6c525a18df97c9539c06552bfa9bbc1a`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 04 Jul 2018 07:56:20 GMT
COPY file:9b9e5c953857924f633c8189e5ee2aa91efac68aa1ed9e55d64d6f7d2e09c432 in /nats-streaming-server 
# Wed, 04 Jul 2018 07:56:21 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 04 Jul 2018 07:56:21 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 04 Jul 2018 07:56:21 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:f45b523e30f8f5484375fd93bbc14ded196acaf52e7004438b1d5dd15af07c56`  
		Last Modified: Wed, 04 Jul 2018 07:56:31 GMT  
		Size: 3.7 MB (3671663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:b7a35a60c4200610f4083a53c50ff434fda2d5be2f330272464ccb24b6be22f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3670555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df41635876d4c4553a75adb0894590e25c13a6b069e0705a2a2d66319698057`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 04 Jul 2018 11:57:47 GMT
COPY file:9b20a1a4be937ab93bf655ee2d593a6365df5ebf89633582bc98490b80219f48 in /nats-streaming-server 
# Wed, 04 Jul 2018 11:57:47 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 04 Jul 2018 11:57:48 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 04 Jul 2018 11:57:54 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:e5e59dd73f599b6d513d943c112574e5fcd14cea8d50e59cdd009651e2bd021d`  
		Last Modified: Wed, 04 Jul 2018 11:58:11 GMT  
		Size: 3.7 MB (3670555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:59c2109ff912527227cc9e00b981f2358b01d1ea2904ab71a2015e579403869a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b809b69e07089d467e40d5a18f1f5b0f5fb1f403e0281c0099774fe2f53b1167`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 04 Jul 2018 08:45:14 GMT
COPY file:772e37ef9c8095c85cd758b5002b3b9c574d3d2f785931e838fc4cad9f969311 in /nats-streaming-server 
# Wed, 04 Jul 2018 08:45:15 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 04 Jul 2018 08:45:16 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 04 Jul 2018 08:45:17 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:bc19171eb7de6e16eeb6c6a33fb58c1d4faef311dccc14a7ce20938c2f15cdcc`  
		Last Modified: Wed, 04 Jul 2018 08:45:40 GMT  
		Size: 3.6 MB (3579445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
