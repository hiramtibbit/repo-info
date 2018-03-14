## `debian:experimental`

```console
$ docker pull debian@sha256:0e6acd12c129909c0d6b4f18b743c21432ff988573f99f2597672788776a2ef4
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:b121f2a2734f6324dbd27e8c2ab4e26588ba1628bbdeb0b88bf0ac233b8ddd28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48061641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49ce2411bc1e98f1c14e720a1641fa6c0aae21d959c9449d5d668993d04fc323`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:29:24 GMT
ADD file:c07b043f4bca74ab53ca313124d28104e17c8f4e55a2259ce5d27a81a9e7c575 in / 
# Tue, 13 Mar 2018 22:29:24 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 22:33:04 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a1cdb8f56afb36e8e16467e7c7bcd9197f85d183a5fdabe414aa6ba4c3f7a621`  
		Last Modified: Tue, 13 Mar 2018 22:56:56 GMT  
		Size: 48.1 MB (48061421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76991173d137d4b161c1bc50896a2182c6bf8c1d5058583baa1c47f01b8e3d5`  
		Last Modified: Tue, 13 Mar 2018 23:00:43 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:89e936c7f6f396ae6c64e33ab825a5f70636ccd86df8f0d0a047bee388cf7138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46118664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e1ab3a725b565ff1a3504c7e458197e5cb2696535481c6fb7c303ccb3288db`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 21:01:37 GMT
ADD file:14851e3a21fcb99363ea7866ad064e958d1c6e240c027610f8e62b47613a54bf in / 
# Thu, 15 Feb 2018 21:01:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:02:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:db62c7025babf250db45b4c149951b264cb43656c6d8eaf345f529a71ec73644`  
		Last Modified: Thu, 15 Feb 2018 21:12:43 GMT  
		Size: 46.1 MB (46118445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c390fdbf3470e9f89a70bff302871d98e552db8a4be2d4106d6c265fd94ab6`  
		Last Modified: Thu, 15 Feb 2018 21:14:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:42dcd2006d544ed561f6690ef91ee709a728b09730f26b7b3306ecc5ee5ae012
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43986746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419cfb1925ae8b0960483b94c55bfcaf8e00ae7a343473621559da15e5e883a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:34:45 GMT
ADD file:2b153a32457787d6ccb60feea36e1045b72c482e4df0a78bd00e8c0d8149cfbb in / 
# Wed, 14 Mar 2018 12:34:45 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:36:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:068bc5c11d62c3c7a7fbb38b097c857001622d5a41ba7d6b0a94e620ba8aa5fb`  
		Last Modified: Wed, 14 Mar 2018 12:46:49 GMT  
		Size: 44.0 MB (43986526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68b89c4bc38e66b9df86f6d34d0bfffe16e04b32a5c4cf13688a854c0179e1c`  
		Last Modified: Wed, 14 Mar 2018 12:49:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:83ee37c88b8005a8486eac04c13e11e678733cde12f732ad21ebd37b680d4c74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45441391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7c6537bceabe6fbb48d528a77e652d06263f5c6d742cef3deff9aa67d2c34c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:31:33 GMT
ADD file:2386f14ffea1b3b9df20232ef6924b0710301972a852e76b13d95db6392a81a6 in / 
# Thu, 15 Feb 2018 18:31:33 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:32:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6e1cfac1dc3ddc43ec24f452a675241c98704c0e09efe0c0727f8c91546441a2`  
		Last Modified: Thu, 15 Feb 2018 18:45:16 GMT  
		Size: 45.4 MB (45441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784ce35df42a4100f3442698b1ba3153c45708a3213c6d67fb54afeb04e1dc09`  
		Last Modified: Thu, 15 Feb 2018 18:46:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:cd378fa762910b10110cdc49bfb6aadf4cdf42bb6835205b7779d7bcd9ab3020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48836347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bae8817fb724e4be8527bbb2600c960280cfd3376537bb981319d421586f695`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 19:46:30 GMT
ADD file:97ce182549f290c880df7d73aaee02cc66fa57c2024b2808a7b4bc13376756c4 in / 
# Thu, 15 Feb 2018 19:55:23 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:10:08 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:675b0c5b6cae3dc2128898f853876abc672176d9bf7def7e631e696b2b6d281c`  
		Last Modified: Fri, 16 Feb 2018 02:54:44 GMT  
		Size: 48.8 MB (48836122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e4906e48c3ae8fd492cd4d3bb6836865304628eb96c6ecd10adfb77aece73`  
		Last Modified: Fri, 16 Feb 2018 04:39:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:c98e8d34818972792e6e1d7a7b588711a8f430b5b378a7554163a78aca6a686d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49453173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a376180d725957466f7d72e44e85ea8b7242b49dbd7b7bc5e8ab97c2883b777d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:39:36 GMT
ADD file:b611d7364c1d240674be77fde7ce15911eb798ae82dea1ff6f451aa9de01561a in / 
# Thu, 15 Feb 2018 01:39:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:40:12 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a6955ac6eeb0cf260cbbdbaf0c5db000a11d2a9fe7ea218d7e373c6352f7193a`  
		Last Modified: Thu, 15 Feb 2018 01:48:00 GMT  
		Size: 49.5 MB (49452948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d409c0d979aeb1fde8a69bc778f909daf2ef8bef8f890b1982af96a3aad344`  
		Last Modified: Thu, 15 Feb 2018 01:48:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:a05ac2e0d67f2a3778ffd95d16e530a1eb16aeea35dec39fa0b1f94249b74b3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47214933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f641d7c34f052c4618e0acff25ed49b221be4ccccf7adab29e5674dd15f105cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:46 GMT
ADD file:d7b8301c00b650ea94a7a5b7f1c23cff8a74ae77d54823691edba41e566df216 in / 
# Wed, 14 Mar 2018 05:24:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:25:05 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:dc398839c343b6cb8fae38856c48e8d97fe3a925de7a570d67a6a893b41f7d18`  
		Last Modified: Wed, 14 Mar 2018 05:29:53 GMT  
		Size: 47.2 MB (47214710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a2858adf5038889604f60566d10a78cbb11a893a818b682add937362333a59`  
		Last Modified: Wed, 14 Mar 2018 05:30:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
