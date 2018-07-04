## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:eb0da5d125b01da7d1bf0674913e617db2d1438a92e5727b635a9feaed6d1c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
