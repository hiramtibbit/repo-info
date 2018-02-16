## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:4f3987eeb7d0c5a871d0e70ed573cae98dea1d92014a784938f0714e09e2d447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:1b5ce2a781a8091d956daec2884289c4a5819542f76a831b8cda17b5fe93490e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38110013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59760db03575bed8bc1e5f8aca80bb2874a9fdba40d3f7ca7f209f35a303d5ef`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:06:25 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621bd3002d5629638246ddb33bc4e77ebb61c69669f7263bf6858ababb9ff38e`  
		Last Modified: Thu, 15 Feb 2018 02:33:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:5e7f465319d8b2f42284b2ee82bc0d0b414204ac7c0fd83c5f3822c9bc25cc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36948756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e915d710409517283cc6bde0147466d648d437692c789731ddef58b302d627a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 21:02:18 GMT
ADD file:e3460ef36ebae417896a335577e126f2c0d24f4cb8198a71796ffe6c76a67112 in / 
# Thu, 15 Feb 2018 21:02:19 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:02:28 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d3ea6a702aef7af84624d9a907b843ad1ee298df0f9a10cb81e49c92219e5250`  
		Last Modified: Thu, 15 Feb 2018 21:13:31 GMT  
		Size: 36.9 MB (36948528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0514c84143b97e7e250743e5b3acbbbbc689218ce883f070932596ef70ee01c9`  
		Last Modified: Thu, 15 Feb 2018 21:14:05 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:05365f5639d3df3eceb424a4e0580b45d74cee86975d76f0683a2d4915ab8771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35662071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83845740df9b80f89e57c6a415f95b72293cc41a13134f7cfcedebb953222350`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:33:22 GMT
ADD file:a50a330be301772af9a57fd8a118d5d28183fb0a269c71582ad0b29f253e9324 in / 
# Thu, 15 Feb 2018 13:33:22 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:33:34 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:70b4dcd52c8138ab81006e9e28a6184f34d87223285221ed4735e7e9a66043b4`  
		Last Modified: Thu, 15 Feb 2018 13:44:04 GMT  
		Size: 35.7 MB (35661844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1c10abfa5efaa6c23bc861ef8f411dfd5753134a267adff9d99b70b931503`  
		Last Modified: Thu, 15 Feb 2018 13:44:39 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:dd97ca871609a5960f40783eb9ab681c01c59f18deb9be2456d8b399a1bbbd05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37439351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07cbc2d3f66831c00e849f358a54e9217fb0aea8c9fcaed651ec0c474a9a3f01`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:34:29 GMT
ADD file:b269dd25aa5a2b39f29e341376ca9f2b8aded8f1327c01024b96a2eaa5c3a142 in / 
# Thu, 15 Feb 2018 20:34:29 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:45:18 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f10fe2356c6af971fa6e4de75405f5f2c0a1b4dd473c5da5cca0dc476bf491f8`  
		Last Modified: Thu, 15 Feb 2018 01:29:03 GMT  
		Size: 37.4 MB (37439124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6b69930ee3d8034afbfaf470413ea0963bd3c89aa229b5a983c2c366f640c8`  
		Last Modified: Fri, 16 Feb 2018 03:54:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
