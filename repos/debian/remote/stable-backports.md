## `debian:stable-backports`

```console
$ docker pull debian@sha256:dc6b3cf31d4c4a232f8a2e3039cb175ecc7fff6a98c0759b01ebacd94b6b061d
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:936ff7b02937e219eea696931c2f0c70c7668efca3bbeeaf2625fa3fe0c69587
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45319421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b496482e70a5541d5133c3cf5fb34372608884eba44d5edf62a350305a083c5b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:09 GMT
ADD file:6e6e8e82fdc4282e174ce08880a128a147f07a43df0648aa3a727418be3626e3 in / 
# Tue, 26 Jun 2018 21:24:09 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:24:19 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:31c6765cabf19cbc7d9aec4312ca75bc7b8ed9979a005bdc803b36146cd8e91f`  
		Last Modified: Tue, 26 Jun 2018 21:35:19 GMT  
		Size: 45.3 MB (45319196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef00bf3a22e0b580757e95bebc2f68bde60ace770983bd244ec855cae05d3ed1`  
		Last Modified: Tue, 26 Jun 2018 21:35:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:fa1a028b4de10704840398becb19a39bf0913f1da85d58e2c53f42f5fb315ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44040320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aeabce92c526b11f931086cc84a6373522ce417714b594985d17637d22e094e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:51 GMT
ADD file:bfb59380d0d227c68febf7be6e659557a05165fad2a2944bed89747eed065419 in / 
# Wed, 27 Jun 2018 08:52:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:53:01 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:570731446f888f87385974befa0683852fb78c8cbad269ce0c8d134e09cb5135`  
		Last Modified: Wed, 27 Jun 2018 09:01:48 GMT  
		Size: 44.0 MB (44040099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f38f207cda6c9f779cbe193ae2eea384802a3f9d409d75854f6b959320a946`  
		Last Modified: Wed, 27 Jun 2018 09:02:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8ad13385a22fb22f8c8bd7c4c0d0943c47e8c611f29b083d62b50c627d61838d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5052049017952185cf0ccb6d7b7c00dbc708782090402e4c1816996a79aca252`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:10 GMT
ADD file:d99fbcbe2ea5cd3393fcd6a64c29b3f487771d3ff7878045e7ffe06e61486437 in / 
# Sat, 28 Apr 2018 12:03:16 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:03:26 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:23857fb357475d6a217fadda1ec682a77fb91a08a96a519f84691ac9d7ddb98c`  
		Last Modified: Sat, 28 Apr 2018 12:14:28 GMT  
		Size: 42.1 MB (42063704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af10dcb73504e1f16d9cf7539a9ed104052ea2e39f44d302de4ddd3e54df0f`  
		Last Modified: Sat, 28 Apr 2018 12:14:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:5d1671922782ce420bc2fad7bb00834a3788c0896ffb1c449f291ab404c6fd82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43115990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5bb55abe0da34db5854e7183806282abe666dddba32d098e09840ced5a56751`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:45:49 GMT
ADD file:ca9fe408de140de013bc09da783641f42f17dc205c656f3a117e907be67c7ba7 in / 
# Wed, 27 Jun 2018 08:45:50 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:46:03 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a85bff8618d94cf081e53bf469d3776f92944b97880ac24304db9390bf997a76`  
		Last Modified: Wed, 27 Jun 2018 08:56:23 GMT  
		Size: 43.1 MB (43115768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf3c5c8312136fd8cf2ef8c2ad9532b22de3986ff2b2e2be9a01fe9b7831f39`  
		Last Modified: Wed, 27 Jun 2018 08:56:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:1ce2b869968e8702095cea5c269ad2153559d007a02659ca0ef7691763681ec9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46043747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f4ec957d00a2b3c47f4fd5f696ece9bbc7ed39a56cf84a1459d4ace6531603`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:45:06 GMT
ADD file:d7555ed873762dfba7b7e0ad7d5477ad5094821fe7b679839d92ee797b75230f in / 
# Wed, 27 Jun 2018 10:45:06 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:45:17 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b473c2282a56a9fc6a9b10ec8952882a5ed1398923868c3eb5e61480b46c114c`  
		Last Modified: Wed, 27 Jun 2018 11:08:56 GMT  
		Size: 46.0 MB (46043522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48db78d2dfc27523eb4d5ef5eafb9ad4d7f2fbb54715da894aa268789b973691`  
		Last Modified: Wed, 27 Jun 2018 11:09:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:adf1aab3429a08bb3cbeab61d783fc96135742e13e540b9441665d7b235269e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45587290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e714421381c6af16d4993ca864f25b5aba840d136bef883e9b056830a17601f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:20:05 GMT
ADD file:26ca3f7698124193e2e46f45266ff63edcbc5997802a42a42c37c57038d4fdec in / 
# Wed, 27 Jun 2018 08:20:06 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:20:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7b622dfe9e283580b1d0897f9d271f34ffd3ce32a8382ec200f43103a8fb7f09`  
		Last Modified: Wed, 27 Jun 2018 08:29:41 GMT  
		Size: 45.6 MB (45587064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acba81c063e4df644634c9d7820eac6865afe7c933bf80116a4640f055d3e88e`  
		Last Modified: Wed, 27 Jun 2018 08:30:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:979c85ae03401f9b6356a3a6c46eb3dbb44168e2e96569d4d5458a5ed57f3911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45185544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5df89248dc647f19fcf10d4637bcc13bc5f0cc1dfad75f7af82f7a2f72286c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:44:23 GMT
ADD file:8a3b87205831f166e01fac2fa0086161f7a284ae5cc5e2a7d727197dd64fcb2a in / 
# Sat, 28 Apr 2018 11:44:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:44:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e6dd9b46018d80d0f87d191ebe12dcea211b7a972681875c74d4bcfd34e60d99`  
		Last Modified: Sat, 28 Apr 2018 11:50:16 GMT  
		Size: 45.2 MB (45185319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39232ffa2cbd6c96e3933cecdc22559492d3127dadfc9aa891cc903c47690d5`  
		Last Modified: Sat, 28 Apr 2018 11:50:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
