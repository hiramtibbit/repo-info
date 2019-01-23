## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:56893ed4fa01c7ce4a6c0326b88fe8dcf64d68f6bb387e77970aa47e4beaab89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:531ea1c48609931c1434eb782af62b5683232b96eaad00b5188ad8d1ebad3837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39340124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2ddad93dbbfc8650e8150baf3281361a974841fbdf994095a16e02cb48330c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:58 GMT
ADD file:ec03145d2cf8c637e8733ce03701058ddfe1076a93bef99b70b01962b089cdd0 in / 
# Tue, 22 Jan 2019 19:32:58 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:33:01 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8f07b832660bdbddf1cb2b72bf063629d3fe541abfe3fb0d89248c478acdb242`  
		Last Modified: Tue, 22 Jan 2019 19:38:04 GMT  
		Size: 39.3 MB (39339901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46c8cd8b375d4f4c5c7216d48178ddb74f18d7246589e53a8e7051803ac9b95`  
		Last Modified: Tue, 22 Jan 2019 19:38:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:a603c5f5f3a4fbd950545e07943794ea6088a6867da2b832b1d513cd779cbc0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e937e320d9c59fdacab83aecef2d73bc12bb88377b3f20e1338ded028315a29`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:57:11 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e710a1b73c13b39d594feb17d5149ef9ff275e44ddb47d1d6b009f01d20a8b33`  
		Last Modified: Wed, 23 Jan 2019 10:03:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:07c95e7fc49858519a9c5729fc7263b1f00371da131a4d90fb7fe6ab43a97a3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba573b8cd2adf6d27c676db9773d6f36fbcd2937d6a5626f0d7163a272b28f7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:07:23 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210acdf7c5c675af3e31bedc775353365c9a1b5fde9d78d276e054d0dde1de51`  
		Last Modified: Wed, 23 Jan 2019 13:13:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:96026461f358a3e7712d0751138b7845113c48d39cd3a85ded25bb495e7ef846
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b49aeae3dc422dd75a80f711bc3f5ace841d5d757cf34c11e3209eb793f25c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:56:51 GMT
ADD file:6fb64a330e16c04281ff0d182cd3a933035277c01665b4dd09df1edb0e717c6f in / 
# Wed, 23 Jan 2019 11:56:52 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:56:58 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ee259baed8684a3f7be46aeb2b4e464f70718300b1769fd30c56196bc0ce3050`  
		Last Modified: Wed, 23 Jan 2019 12:04:09 GMT  
		Size: 40.5 MB (40533275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fd05f122c7eeed52568a55a522bcd77267606ee46d845c127f45583e912844`  
		Last Modified: Wed, 23 Jan 2019 12:04:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
