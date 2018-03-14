## `debian:rc-buggy`

```console
$ docker pull debian@sha256:e5557b91e40e73bf59e12fc0b9982283631b3e115ab4d662148329b4520de726
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:874366e51488ab171a76de86effd1b4eb6d5770a252f5a4527d1e50cb1581720
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48061714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2f1d4bc72f424146c2fba3cdca717f9a1b811a9865a62d4c23f1fc3eff4520`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 22:33:43 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96e6344c1375efb2c06a47f45a7c6fb0b6fdb6d75696d2254523b98db16eff7`  
		Last Modified: Tue, 13 Mar 2018 23:01:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:01ab92f4b3f12bbfca086e1fc717d89cb15c778f34a370eba6bb2620253a0e54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46118603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e4d2dd755e3bda9aa20ef63c8462d896d21fff486eb936b86658ee7d2b7940`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:33 GMT
ADD file:107983e3364b7c4bbc033bbf794c7e00825550acf2bbe9841c4b84c7c881eccd in / 
# Thu, 15 Feb 2018 20:58:33 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:03:05 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:d01625705202408c94c6dcf3ed17d16b9856be2b48b91c3e700101a2fa56684b`  
		Last Modified: Thu, 15 Feb 2018 21:08:15 GMT  
		Size: 46.1 MB (46118378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a059aaddbedb7f73591b6bad1924d91c249ce2f7d04c3cb60133e2a1fb1162`  
		Last Modified: Thu, 15 Feb 2018 21:15:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:9149eb3fb3a7c064c248bf569ad3c2f849332a332adcb133a7ece04f961c8775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43986785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf181ea0387d426ff6235b618a2dbdda643e5effabf22ac09f90c19b3b5fbaad`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:24 GMT
ADD file:cf4220476786ea80d7a6f84bd9dc94b6d6ac8945750c25c3bfaacd81d179ad18 in / 
# Wed, 14 Mar 2018 12:30:25 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:36:49 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4bebe725acb1248d8ff52284d58dd16fdca68548a367bc396431ad7bc5d34cdd`  
		Last Modified: Wed, 14 Mar 2018 12:42:11 GMT  
		Size: 44.0 MB (43986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b16e8dfe220057c6a544b00214cc02be3cdf7871bee77e53bbfb211861614e6`  
		Last Modified: Wed, 14 Mar 2018 12:49:34 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:a8bc4bf1a3ff728f96cd683bc20579810228f0b83a29c26a0730e87111b0cdc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45374758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:532e75e95019efdb750a9e3e6a176ac734bc9291612f11db0e0701ed3b0879e8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:27:51 GMT
ADD file:c8a410dfd7a3136f565a9b629d0a835719a68ad80b782a9281d1759c6eb8f4ef in / 
# Wed, 14 Mar 2018 17:27:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:35:26 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:885529e16b447a9a1d0e77e83ee5f3a4ded117a603fc735a386b40c6af050fd4`  
		Last Modified: Wed, 14 Mar 2018 17:42:26 GMT  
		Size: 45.4 MB (45374529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f719d4701598dd4ccebcb36f2cb91f2fe500eb7673ab246734bc332daa6a11`  
		Last Modified: Wed, 14 Mar 2018 17:51:15 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:5d3c4e62b260fa265c876dae24c73191b1f6f04332a09fdb54c88431a6f031c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48836394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7da833d829031722ac2879d005bf18d9ac6ecfeba834691c399baa094309691`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 16:36:13 GMT
ADD file:cf035e5110d165962eb9d4449482cb8d6b0f7749539aa1e8fc6e6a66531d2106 in / 
# Thu, 15 Feb 2018 16:36:13 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:17:18 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:313ea93a0d5246207e1ed7ff3833d7115bb13cbbbdfbb9fe6209ae0aca4de0da`  
		Last Modified: Thu, 15 Feb 2018 01:08:34 GMT  
		Size: 48.8 MB (48836165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa10bad1134f6f51c16adfcaef2ed71eee2c6d1ecd511d30ec1cb492cb35416e`  
		Last Modified: Fri, 16 Feb 2018 04:49:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:0d1b3333d5b2a0ec6e9e952aa7f2a707421fd242d1bf2a94ab5b3750c66cee18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49453225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8936ec285bd9a7f8a5613dafa52bc30f04759eaa8ccd6585d35fbbbde3728a5`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:35:38 GMT
ADD file:47880b96018a20d461394bfee9f42022392b5a715ce6caa05668c81d22bd4348 in / 
# Thu, 15 Feb 2018 01:35:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:40:21 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:bb0115828b7c31e86fe8af9c575640d37b7fda139063b888abc6d9e3918927cb`  
		Last Modified: Thu, 15 Feb 2018 01:44:12 GMT  
		Size: 49.5 MB (49452997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5aef78f7cf787d0a222908dc5a69f1948d5de0487ab34cf973ca7720afd702`  
		Last Modified: Thu, 15 Feb 2018 01:48:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:7b8036594d66bc5c78bac82f6f547c20e02bb27cb6757ea58ab4aa7e22847dc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47214896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbcf83740bc6e60809af5ee4ee856d05f21bdbcd2d21c77760d779cbaabcc8d4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:56 GMT
ADD file:5a60fa1a91bb2b727d8bfee18b5c3fe6523121a4b58861a0ba668058347acd7d in / 
# Wed, 14 Mar 2018 05:22:56 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:86f40742baf992f423224f64973e576104b2523ae049a44d7574dda9869d0735`  
		Last Modified: Wed, 14 Mar 2018 05:27:34 GMT  
		Size: 47.2 MB (47214668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8948a1fdcc79a4d4dfa49765b880480ec19169241785af10b74b1aca36ab47`  
		Last Modified: Wed, 14 Mar 2018 05:30:22 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
