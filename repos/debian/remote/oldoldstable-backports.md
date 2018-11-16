## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:87fc8951edbc0ccae0c2f574e5674423a280be398158561710db6ee8fe8dc2da
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
$ docker pull debian@sha256:cfe095df875858503e1591179db112c823b72c8215d60f019567448eed1d6f61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4b83667b2961349ca2a02b35b16d21366ea6c43802d4003b4a2d9804ae15a3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:00:43 GMT
ADD file:dee96303cd0261a838eb90296606cf3d4e3965ab36c704efb2d6af3c37aff03e in / 
# Tue, 16 Oct 2018 12:00:45 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:00:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f22034384c63e2bca989b6dd0aa17925bd6829b8ae0dd21539d2f45b42c0599b`  
		Last Modified: Tue, 16 Oct 2018 12:12:49 GMT  
		Size: 36.6 MB (36620341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a2bdd4a2f9bcd289e7a723caa742959be619441458342137e289093a5ade25`  
		Last Modified: Tue, 16 Oct 2018 12:13:00 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:5b3c5c0dc2b85bbf291ff9dbcd85d45e7e3c72e7110a6ad4adb598158b45e4f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2168059bc8990d4c58410de14b65728173a6374aa6c82b3d4b87a5d9a420be0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:42:33 GMT
ADD file:f67718a071bec57fbadb9480ef8ddec3acedee633479ee93fbc3281dc6bfa53d in / 
# Tue, 16 Oct 2018 10:42:34 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:42:47 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6f85227b71465fce3d117eed22a587dba42053772e68f7b3dc304d0859e0c87f`  
		Last Modified: Tue, 16 Oct 2018 10:58:15 GMT  
		Size: 40.5 MB (40532896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f12a0602971e86996e15d58c083b22b5f3be595bf801f8a09703c8b004712`  
		Last Modified: Tue, 16 Oct 2018 10:58:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
