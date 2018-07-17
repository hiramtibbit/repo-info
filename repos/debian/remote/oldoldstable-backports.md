## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:cac7a872b20fb06bb99348961d1613df9975708a731c3148666611e9b4bffa08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:77a5efe49901ce98ea8f052f71dd2e8003c26edf9e996148e292d7dfdb59ccc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14dd27cae8b1a951866dbd0b299125ea04beae7b757ad841441f05f4f984c0f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:22:12 GMT
ADD file:f62997cab09d220952bcd36db7649898d96679536f1b55c4123c104b7e0bc261 in / 
# Tue, 17 Jul 2018 00:22:13 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:22:29 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:57dffa0239bf0ff8ea8603b8fd80f1fc0f340e1000cfab5314035bbe8d9efdb8`  
		Last Modified: Tue, 17 Jul 2018 00:36:37 GMT  
		Size: 39.3 MB (39339291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053eaf7dd6e417f1b220fb7af8c52b4dd7ff69b3853e9670527b332d7e76a78c`  
		Last Modified: Tue, 17 Jul 2018 00:37:11 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:fb50dab4ecc64bc0d86276744064c3255cd5cbc5f5061bc64abc2fbf800d82fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742c857442aadfcd2c1136d939cf03a2f2d4ea3bc2c973f819a54cd364fe5eca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:51:31 GMT
ADD file:f6b139149a813b3b31da2117ca2b7ed61a000221f8916ef75c105d769362e196 in / 
# Tue, 17 Jul 2018 08:51:32 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:51:50 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:30079f6166bf8c34cc49c5d093a9aa41ef8161beea0ade9ee810937ae21c675b`  
		Last Modified: Tue, 17 Jul 2018 09:04:04 GMT  
		Size: 38.0 MB (37992739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84dd89a078961e3f7b296a1a58afd4f23b2b7a0d684183dbd595239e0ca6067`  
		Last Modified: Tue, 17 Jul 2018 09:04:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:7ab527f95d4934176e1ec7edc273773bb74bb24e29408b7e06a7900933ab31b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82977329c2419202d2d2e5a8a6ed599c200d6588d11f93eac62483c33c810de2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:47 GMT
ADD file:47b98435a13b6a9c0bcfdda0a3ce8cebec4bf81fa767ccca868ae736ca4e41fc in / 
# Wed, 27 Jun 2018 11:59:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:59:56 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3928f5a86fb87fbea5609e97004ada93e620f5282b98ed2bdac35788c52dabf8`  
		Last Modified: Wed, 27 Jun 2018 12:09:31 GMT  
		Size: 36.6 MB (36620251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811c8a13b8547fc02c0163ab7fa307aa0c40d03b95e1ba441c40e7fc9a1b027d`  
		Last Modified: Wed, 27 Jun 2018 12:09:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:e2e738ec664f14b5947a65c488b248a303496edbbcfdd8bc0511d0753affd4c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceeebd4aa5cdd6382c2b85ae7925df1198fa990d0e52dca8dd688899efbb00e4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:43:21 GMT
ADD file:e9c6d7a529afda08a65e48013e6b12b7a54d61d2c3dcb62182d966e638a6f622 in / 
# Tue, 17 Jul 2018 10:43:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:43:54 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:63d2b231bf65cdb8937f9518f0378e62769cdb9a2326fed129ddde09b7c84b46`  
		Last Modified: Tue, 17 Jul 2018 10:59:45 GMT  
		Size: 40.5 MB (40532137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3c49788252ddc5eed9f08a0bb8279aef5643111f72b72de35923ae917d5ef1`  
		Last Modified: Tue, 17 Jul 2018 11:00:24 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
