## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:2a90174a658c34ceeb1049908431f7ca768e6fe067bb97972cac3460cce51ef1
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
$ docker pull debian@sha256:8732798aafa91fa1eeba6076b988397b93b8d2ac742d921ff30e2952187b1f22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36619736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4e721b4377d8d0040b4def954a2e9de1bf3c5b29317494eceb3f1cb760eeb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:01:00 GMT
ADD file:70b35bde072817a39bc343f739fa99de28330063c0a75688be8817a672f9588e in / 
# Tue, 17 Jul 2018 12:01:00 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:01:18 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:77ac042c2470d63ccc6b36d14982700b030e5dfcf28c32d49818eab44f4bf684`  
		Last Modified: Tue, 17 Jul 2018 12:13:02 GMT  
		Size: 36.6 MB (36619510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a349530a8957338a64b9121317b0957ee0296b7ebc711f520d45479540f38f43`  
		Last Modified: Tue, 17 Jul 2018 12:13:28 GMT  
		Size: 226.0 B  
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
