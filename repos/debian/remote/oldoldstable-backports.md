## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:5f2d388381ce36fc9277d2e23b17666c8eb2dd0214f6151c7dfe132fc55fb9a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:788314713013d66f3886bdcdb557aea442e4f377cab596e9c3c635dbd262202c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3914a8579410f0199dca57ea0c8759a22dc0d311622a176fe3cd56b8b0e02e4b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:58 GMT
ADD file:d2fef8aab342362aca023e27ca5a13cd5ad7a42e986116218efc65e080203bdf in / 
# Thu, 15 Nov 2018 22:34:58 GMT
CMD ["bash"]
# Thu, 15 Nov 2018 22:35:21 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d09fd19c5117ff86f40791a80f9a465f1cd929bf4e45080ae30689727cfc7702`  
		Last Modified: Thu, 15 Nov 2018 22:58:54 GMT  
		Size: 39.3 MB (39339730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2eb6eda655ac3f76320db2a31cc69712e4e6fb35707b9abf7967ee0ee3b01`  
		Last Modified: Thu, 15 Nov 2018 22:59:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:605bdcd8708202813f0bb23513e766bf9f53dd1c46b0f9822d67f5ffda565d20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906fc25536c6362b0138db525b950261570fa91b54d4f84d396e53222796acfe`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:52:07 GMT
ADD file:3b46a268c4c5f579dececc01479fdab608388902052ae8a4d6161cfb39c63ccc in / 
# Fri, 16 Nov 2018 09:52:08 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:52:22 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ebf27eb124182f174583296d0f83658a73b90313eefb1a28aba8dd9dc07f084f`  
		Last Modified: Fri, 16 Nov 2018 10:07:27 GMT  
		Size: 38.0 MB (37993549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4645da8a9b1af279ae11afc9b3e62edb29c2e9a97f92a3cbac1b1944aa335dd9`  
		Last Modified: Fri, 16 Nov 2018 10:07:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:7ba2fbc11c86961f453dbaf6dc111e94b46018611aaf981426207343165c38e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4649a99e7fe2453dc40673c509a0364d7a95c26fd1cb87648b62f6e4c10f83aa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:03:27 GMT
ADD file:2140a6ed89dd267a7615b3961dcebe84a525e36ad77b912cef5752e67cf828eb in / 
# Fri, 16 Nov 2018 13:03:28 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:03:42 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2b2bc63fc0854e7b2e16e9bfd8cf96193512c10b9fb75494de94979a0cdbc8ad`  
		Last Modified: Fri, 16 Nov 2018 13:16:48 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3925089cac17769aa863d08de21b19771d351f88d2244c459b62dd437a50dd1`  
		Last Modified: Fri, 16 Nov 2018 13:17:08 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:ec49b24886806a6fdf79450a671fe68511e0774782d4683fba1b7250e43659c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef60cdf598fcca5e5cc3e1f793d2f6135edd2682c3e019078779b74314e5d7ae`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:28:04 GMT
ADD file:4ba3f4b307d7c591f1db6d926c3f775d5730b2124c3d7450bfc228aab843c9cd in / 
# Fri, 16 Nov 2018 12:28:05 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:28:30 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b042a90e50fd2be4a76460896a9d96598376543501c1e6ba76e354bdf823f80e`  
		Last Modified: Fri, 16 Nov 2018 12:49:40 GMT  
		Size: 40.5 MB (40532773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f527eb4251b3f6f3b60f8d2e5d6c89849bd6b0d594e654096cdb75a4c3a3d7d3`  
		Last Modified: Fri, 16 Nov 2018 12:50:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
