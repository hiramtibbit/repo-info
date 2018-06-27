## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:ca4a03a4f1e81923eef8cef269bee7c97e1103da109a276e64b85bb90d37d06a
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
$ docker pull debian@sha256:a07375b7ca44b22b146cff8a42623333bb2b58afedc75eea5375bb76629a6f87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54252273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b43b7b818fce58468a14a4949fb1f5414809bc512ed2af7ddc0601a249f9ba95`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:22:33 GMT
ADD file:fbb9ad61c9b463b415c98ebdea827716fe893547f36735cdb4380bdda9388f91 in / 
# Tue, 26 Jun 2018 21:22:34 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:22:43 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:152f09685d7c9590a78eefdba35658b001988c7e4a03ae427427ad28b4a37da6`  
		Last Modified: Tue, 26 Jun 2018 21:33:01 GMT  
		Size: 54.3 MB (54252049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccffbc18bf20affffda23ba241d9c189e32f1abb156834f81977741741caa2b`  
		Last Modified: Tue, 26 Jun 2018 21:33:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:775f1867c7f6112b039a22f7387183452b8b44ca6693e602a67abaeeec039319
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52448597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28350c5d4cacf364574261415a71e320e1776dec3becb4c1a396c17f1f30f5d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:51:09 GMT
ADD file:28a4ce21620779cdf394a5012d9fa529a97bd05464f516cb6198534be5b19ac3 in / 
# Wed, 27 Jun 2018 08:51:10 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:51:17 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:fb572254f44e702beb04655f11106d32bce38cbe0e2fbb21299c95ef6c6cb471`  
		Last Modified: Wed, 27 Jun 2018 09:00:13 GMT  
		Size: 52.4 MB (52448370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f815c04cc6169afac9648a92c622c044ed71dd16ba917ee6fbde2e404eff127`  
		Last Modified: Wed, 27 Jun 2018 09:00:25 GMT  
		Size: 227.0 B  
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
$ docker pull debian@sha256:547bbc4848d064950f3a63dbf97f9176b65ff574c5953ca7023c8741bf3a6d12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51436222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17af4d26628d766ff00b2239968d66330ccda0bd864878bacf54fcdd5f50bf43`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:43:36 GMT
ADD file:4d035792665042034f76aa0d8f0788294bffd4dc03ec7fb335b90701c4782edb in / 
# Wed, 27 Jun 2018 08:43:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:43:51 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e137ce2a7e23b94cdb44f87145fb490d5288fb87d4d137c3a9a36b13b9e84104`  
		Last Modified: Wed, 27 Jun 2018 08:54:04 GMT  
		Size: 51.4 MB (51435995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525b43b4d47d8b1c741b3fc96f78f1686a157058d8d8bf51ac909b64156aee4`  
		Last Modified: Wed, 27 Jun 2018 08:54:27 GMT  
		Size: 227.0 B  
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
$ docker pull debian@sha256:92d702c5f883b7744247f25d03cc21a7c746192eba294c85c31bd039372b0e89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53386731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d94fddff17f64e63e9a44f335ab1a2cbb1f219eaf27e6d4ab5ab286ea57ee7e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:18:28 GMT
ADD file:eb882b6aa555ce04dfe9eb499c18165a9d17764a4ddc02d5c07b02773417fd18 in / 
# Wed, 27 Jun 2018 08:18:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:18:41 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:196036f32853496734d406f4f83b10b946c1e43ef4d48e5fbdc1909988a82de4`  
		Last Modified: Wed, 27 Jun 2018 08:27:32 GMT  
		Size: 53.4 MB (53386504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b790e259da199f97024ae40c9b7abaf4f1494d60a9b42c83a037bb5fbcce332`  
		Last Modified: Wed, 27 Jun 2018 08:27:53 GMT  
		Size: 227.0 B  
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
