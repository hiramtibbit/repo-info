## `debian:stable-backports`

```console
$ docker pull debian@sha256:194299d5bba74b181c2de4fc8caed55cc66b47df3bdc666e76ee964ddfbdb0c0
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
$ docker pull debian@sha256:8bd6f9ca5c63a32b241888e0d15856c6e2975759b50b643ee351882b1b713ab4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46045143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1f15910b77798ee8310e481be36a74f2e68edc1b25a9e1e9d3a13d4eff6b57`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:10 GMT
ADD file:87fa2e564ca4ff3677fe57aa99f1058194628fd388e1db3f38013033ebd983a6 in / 
# Sat, 28 Apr 2018 10:41:10 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:41:15 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a628288d8ce4b9fca815d58196a21bc7317e1ba1d274e9c12f4dd7af1bc392ee`  
		Last Modified: Sat, 28 Apr 2018 10:48:07 GMT  
		Size: 46.0 MB (46044920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4413ea917998b1bdef4673615a685483e13b8cad0f0186e4aae591218130471a`  
		Last Modified: Sat, 28 Apr 2018 10:48:19 GMT  
		Size: 223.0 B  
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
