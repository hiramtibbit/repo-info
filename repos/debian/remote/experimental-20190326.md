## `debian:experimental-20190326`

```console
$ docker pull debian@sha256:36cc25ce9d0453d964530fd256a545067c2add09e4a3d92a0fc5c49d10ed7827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:experimental-20190326` - linux; amd64

```console
$ docker pull debian@sha256:85974249c949e7ec2df5a1d8c8dabba157feae9a0b180bcf207ac6807f8b324d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50280509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464129e296cf9796efee726e747619be1bbf5148e1fa3ef53e6634f9bbce6d52`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:42:02 GMT
ADD file:7bd173b1f1e8a12dc6ddd2c6717ced6ed27486963b9ca106218ca239fdc8c0da in / 
# Tue, 26 Mar 2019 22:42:02 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 22:42:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:9f461c014a9fc3819d75cbcc934f902a02440dfb147daee11bfe78ab6c5d512d`  
		Last Modified: Tue, 26 Mar 2019 22:45:11 GMT  
		Size: 50.3 MB (50280291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bbefb3c6e980729a907155c7073965baa378130cf26930998b3b174d9309a7`  
		Last Modified: Tue, 26 Mar 2019 22:45:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190326` - linux; arm variant v5

```console
$ docker pull debian@sha256:27dd4443917d416c6a80b072d76e84e411dee4c6206fdbd41bbfdc91a4c92080
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48001882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5c433e4f00cf13f5da47192f60506cbd845422880ae1ecbe783045e8b64fe6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:55:03 GMT
ADD file:eb2fc87a701c345a9fe2c7d96326b12f62bc5fcad69664a8944fcdc836a7463a in / 
# Wed, 27 Mar 2019 08:55:04 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:55:26 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:49c74efa5d94561bd01a2280292ee896c97728e7d910e82d4b2755f60d0ab8dc`  
		Last Modified: Wed, 27 Mar 2019 09:00:31 GMT  
		Size: 48.0 MB (48001661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2bb1c74bab0902410a89b1c75c7e52c16c8fdd43ad57676fc82df35212481b`  
		Last Modified: Wed, 27 Mar 2019 09:00:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190326` - linux; arm variant v7

```console
$ docker pull debian@sha256:bde59018f0a553ced0909e7719a2f1120adb9cc6a3e67df449700ec279c55a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45702445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338440dd0274a9e3c4e00c883e5fd1988c35cb43512b74a89f3097fa2efa442f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:12:27 GMT
ADD file:7b9720179a8ec8d84440d32634feaa32418132b21c6b617eabfceed4b8cd85dd in / 
# Tue, 05 Mar 2019 13:12:29 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:13:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1b62d14f03408d74c2e84f03e2cbc20e07cff425f8a442a9484c91dc144fc684`  
		Last Modified: Tue, 05 Mar 2019 13:19:30 GMT  
		Size: 45.7 MB (45702224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be90845e59bf2f4ef50db634d35b6f5340fd647962e761402aa9b815a78071ba`  
		Last Modified: Tue, 05 Mar 2019 13:20:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190326` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:50cfdf15299ae072be42b8b0527e6827be309a4e25a02c928f943c093bc04faa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49075927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09199539bdd091e552587c091d8da34ec302b3c495cffdb403964eb04c3975e5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:48:56 GMT
ADD file:d89a5139b8027ff64c45d9499beaab3061966ec0e939c69c079215191ebb2767 in / 
# Wed, 27 Mar 2019 08:48:57 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:49:28 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e58ae526e6c0bc01f3eded05a3d50167d04d5339e8f03c6ca7c7cfee7446302e`  
		Last Modified: Wed, 27 Mar 2019 08:54:03 GMT  
		Size: 49.1 MB (49075705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57ab5256f280bf402c6e888ce8b8762038e59a0245ca1808cefe1aafda4f0cd`  
		Last Modified: Wed, 27 Mar 2019 08:54:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190326` - linux; 386

```console
$ docker pull debian@sha256:9c7ab8aed5e236e5bf2da9ea26637020ea1d18b5410fa0653d35ad9dc2c0184f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51036510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2611781a1acfde9ad7058c5d2fac1c8fe799b18973af544888e2783f24e0ec`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:44:29 GMT
ADD file:555e0f3110cbbedb20d91ff8037a698276c44a123e10a429533c24eb7b2a7969 in / 
# Wed, 27 Mar 2019 10:44:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:44:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:83fe35c15556fda7c586e6d8f4c6c3d0d0effffb6a479b594bd2f341a6e3e79a`  
		Last Modified: Wed, 27 Mar 2019 10:50:21 GMT  
		Size: 51.0 MB (51036291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51985212e2fc1244788103deefbfabcaae311e2831b76d2cfa0009ddc6c96888`  
		Last Modified: Wed, 27 Mar 2019 10:50:37 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190326` - linux; ppc64le

```console
$ docker pull debian@sha256:7b005b2fc2b6571580909540f6880dd99b85bb09c6cf6360c48c10d0fabb28a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54028095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e598adf8496d448bf405ff5b84e9a80b7c8ea8440753aca647249981933d9c4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:26:19 GMT
ADD file:ab0e490de5e9d79abd44faa515a770a2eba9c0a16e41d4f337f1c7706b8e5ba1 in / 
# Wed, 27 Mar 2019 08:26:25 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:26:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:31c65563083166122e5a8d0fe715ed564ddb846ba9b95c04e40dd7fa5baf6e68`  
		Last Modified: Wed, 27 Mar 2019 08:34:09 GMT  
		Size: 54.0 MB (54027871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8047125c2de691dd0b8e60051436c67b31776b2a7bfe69d08f74b280ab2126d0`  
		Last Modified: Wed, 27 Mar 2019 08:34:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190326` - linux; s390x

```console
$ docker pull debian@sha256:b784714bb50fcd622ab127e62cedc7c0068599f0429fce245a742695bd8bf685
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48790249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7579333d4ecbcae8bab43be1546851d4ea8ca922799aa3e574ec4de69b13a77b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:38 GMT
ADD file:5eec8d65f9e3c4ac15072cd898edaa36658c626a50d4bd2a1b71d2e01cb77541 in / 
# Tue, 05 Mar 2019 12:43:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:43:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5a954fadc1726aa54af37ef342a0c96dca0e31b7c709f565ae3489b549085120`  
		Last Modified: Tue, 05 Mar 2019 12:46:20 GMT  
		Size: 48.8 MB (48790027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df026e8303744af2b9c129d148512e7bc0808a9cabbf1af69ce8b8182b40cd0d`  
		Last Modified: Tue, 05 Mar 2019 12:46:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
