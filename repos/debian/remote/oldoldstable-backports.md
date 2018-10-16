## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:7325a4b1ff086d8472a00ad1a73874c7547704d11d2c6384b2facfc15bbce556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:64ae09ff046369de592e9ff15075b3fc9d88fcb261364660974366acc6da2172
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ed839a82f982e43bcb18d2467f73812627f0276116f219370267f04cf8d224`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:21:15 GMT
ADD file:87104238effa4ad050145956b81e3fc4a46054b480efbef0064b3126072b16fc in / 
# Mon, 15 Oct 2018 23:21:15 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:21:24 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d12769a70218374427cd51296c7d0563e5203bb81ef073ba8950a8c6da00c166`  
		Last Modified: Mon, 15 Oct 2018 23:30:02 GMT  
		Size: 39.3 MB (39339731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3054274afed08ac0dfc86d808f47781b1724380f4da046d0fa063283e486d1d`  
		Last Modified: Mon, 15 Oct 2018 23:30:21 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:92990b2fb98a662933225aaffe28c86b6d92d77fd7860fa14260cd1e8413ed0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80146c3189837ffe7d411aace5b0538e0daab3cc30fe50d3ae1ab2e35ea302ef`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:51:04 GMT
ADD file:a7c445fd280b2a54ee34dbc537129bde7676b76691347f946ecd37539d074524 in / 
# Tue, 16 Oct 2018 08:51:06 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:51:18 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2562fa0aba957f3a28b4c5b398fda348b2348750b1db33afa92942055bb65ef3`  
		Last Modified: Tue, 16 Oct 2018 09:00:47 GMT  
		Size: 38.0 MB (37993624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df50d937a2c31ebb13de8f621850dcad100663a1088498c0163b35414796ed2f`  
		Last Modified: Tue, 16 Oct 2018 09:00:58 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:91dbb4fe47de7003be7b5e33b85fc6fead889ecb197f8acf54d46af4d1dc1e12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be47db7097873f715a33296da6f3b0c2daa79bd5f4efaf08d321bd465af3b6c8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:00:06 GMT
ADD file:7a8c68924d28cffaa64f338f7ce455ef64e10d4a0e2af39e01fc9de6312c5530 in / 
# Wed, 05 Sep 2018 12:00:07 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:00:17 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9c0af60cac4369b963b5183e48d6e7a1086fe57ed370c4e0df41d27242ab0cd0`  
		Last Modified: Wed, 05 Sep 2018 12:09:38 GMT  
		Size: 36.6 MB (36620316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb283238110855df5fb1aa2792d6b56658bf62f3baec1518a6b8cf94346ddab`  
		Last Modified: Wed, 05 Sep 2018 12:09:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
