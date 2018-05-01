## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:3269ebd4bf66b569f1d996417dfe24b7acd7c68cef34254bcd546540e1be52e1
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:ddbe2c60f1cd81b02827a97df73fcaf601f6d8ceaa7b9faf487ecda8e7d08637
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54262779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c61eda32fad5b630f8732b22f12d0e1b9b990f38bb3d1ff3d396bf482db4a1d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:48:03 GMT
ADD file:83bd7eb3b198b7d0f4119e9baebb32e1948ababcfde6552424bb478ea5a6bb5a in / 
# Sat, 28 Apr 2018 06:48:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 06:48:28 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0abc07726f0972e2019b666820eaaa376905507f116f702185cbfc9cf9ad81c3`  
		Last Modified: Sat, 28 Apr 2018 08:34:06 GMT  
		Size: 54.3 MB (54262552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397c03ab2620afe9b4dd4e7a23a091949709b1432d0fdca139421412fac9ce1b`  
		Last Modified: Sat, 28 Apr 2018 08:57:11 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:74ffdd049f9fa04e161879db34b94c284210d132556943cd0b6f36d946479c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52456245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699c2abd5a26782c58cf7117245430a2417ba404a198d5b598236a0a001d9389`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:50:54 GMT
ADD file:78a636a8a702e210557a5d892ab8d26e4c4f1edb2ebfea6f436ad50b62bd50ab in / 
# Sat, 28 Apr 2018 08:50:54 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:51:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4c870b2570a8f8d67ff9beda517183f6decb176f2a4f64af0f5de879f28c1772`  
		Last Modified: Sat, 28 Apr 2018 08:59:10 GMT  
		Size: 52.5 MB (52456020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90cd9d34e90f75595212e6f34955bf2f31bc2ab7813144878c5073c736a95ec`  
		Last Modified: Sat, 28 Apr 2018 08:59:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:9b93c584395c3d743ce06d14fb3b23327f42d235a82b4cf9faf89599fb348ef7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50195918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd385839bd4880427940bc399cbbf5c479a2d471e411b66dc57c3c881d21c44`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:01:09 GMT
ADD file:cec53323c2d4ca7b3facfe056a24f9780136ff8010802ce103f78c110f3a1a0e in / 
# Sat, 28 Apr 2018 12:01:11 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:01:29 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a1f70c97da918a0772c598fa29d497f61b060e2f89b0e0ca932898af5e35dec3`  
		Last Modified: Sat, 28 Apr 2018 12:12:51 GMT  
		Size: 50.2 MB (50195691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b584092b150d54957eee2e5f462376b8281231465bb414ddf97d5d6913057c3`  
		Last Modified: Sat, 28 Apr 2018 12:13:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:87528cc9225bb680af09c7ce93491cc766f5ff6feb8daa5c04a3659a48294351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51447064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f656b00f68d5a47549d721a4325cb1279ff29475d680bbc3ec9077c2ee131a1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:24:56 GMT
ADD file:1d420ad812eb7c7e2c6acff9693768efafd3483dc011b42c534efb26bf9a49a1 in / 
# Mon, 30 Apr 2018 23:24:58 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:25:35 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:37c3d25f69b9f30f50f0d6e17274211003db3afeff1787449411b1f58a07fb5a`  
		Last Modified: Mon, 30 Apr 2018 23:44:56 GMT  
		Size: 51.4 MB (51446840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3dabca7d49d2515e43437d5b1e7c96a5db023d12cc48088a97cc6e0e7cc710`  
		Last Modified: Mon, 30 Apr 2018 23:45:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:40138a77ce1b4dfee36b829f0f67f7bfe075c41d130073658ba2f3ccfcd58e6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54487002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7c87166bbc15e3c0c37b0d82a331eae66ce8f394ec36abc427a259c0c3f6ec`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:22 GMT
ADD file:70f4ebf28b630b51448247b7b9cc25c0ba4d7803246f0531dee7ae1cf7649393 in / 
# Sat, 28 Apr 2018 10:40:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:40:28 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1cd6ff73a4615a30f4d2b2c95df359eeec40e71515fdc4a40450550e633b9a83`  
		Last Modified: Sat, 28 Apr 2018 10:46:27 GMT  
		Size: 54.5 MB (54486777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5271f47cbcdb8dc7f676431da3ead4386c730a58da54d1f10e5e90b559cb6b06`  
		Last Modified: Sat, 28 Apr 2018 10:46:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:03ffa37d1be52a8bfa415a3270916b87b9c8c7f9319185a0d7f75943122c8d76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53393049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb38cf482877ffcecabd24e5bf8d9a09fce613f3372d1a79e0e4c56880b9c7ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:28 GMT
ADD file:a86d5e08aa2a53056ff9f7bccc8d2d52248513b0488bef5b449b1dacb286a492 in / 
# Sat, 28 Apr 2018 08:18:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:18:40 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:481b29418baa4938db00537f2383a7ccb7a91d3bf4d8a909c54cd7df9118f0a1`  
		Last Modified: Sat, 28 Apr 2018 08:26:32 GMT  
		Size: 53.4 MB (53392821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c25e5394aa9c42cb0b6a8d0c99a514bd5e4a217365d36b08e5a14e97225618`  
		Last Modified: Sat, 28 Apr 2018 08:26:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:56e04a6a76736aa0a6cef43c3e04ec08559c582915ae20c81d700958574b46d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54466126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a188dbd295ac952303366e321c42a603d2a77528d517324f57c7802e9fb97f5e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:43:11 GMT
ADD file:aabe318c49b7d5465183d70c39aaa070e20eba37b4531b7d66dc8d227236dc87 in / 
# Sat, 28 Apr 2018 11:43:11 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:43:19 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5c360269efbae2945d56ae870b85600be77a5344b9202767f03b4b29bd520986`  
		Last Modified: Sat, 28 Apr 2018 11:48:59 GMT  
		Size: 54.5 MB (54465902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e05eb043fa99210973d2871335074e1214a91271ec4c2380604194f955523a`  
		Last Modified: Sat, 28 Apr 2018 11:49:14 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
