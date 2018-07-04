## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:dd1c22a89ae1437cef0427f719446506f594f9f1ba4777bdf43210aa8ca2d4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `nats-streaming:latest` - linux; amd64

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

### `nats-streaming:latest` - linux; arm variant v6

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
