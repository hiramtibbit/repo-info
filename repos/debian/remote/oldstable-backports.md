## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:a947d54f53513565bf12df3ca46aaa08b12952f94a004a1d55e83cfdd1628856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:e5a936342e173c234c16cdb7a7a4013d9e426f52dbbdb444ea972775052c9d23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54252352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2e0441c9d4c2a2eec9b5f2ac7f5131a6a2412781d16031bc3f807e32bbee6a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:04 GMT
ADD file:3cfd55f403eff05dd6724557ad4af4b84f2595476db9afb37e6ba48448930b8d in / 
# Mon, 15 Oct 2018 23:22:04 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:22:13 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:59b514710d777b99f7e451812f59069c06e5f9c698cbbd431fb1be7d730e48ea`  
		Last Modified: Mon, 15 Oct 2018 23:31:01 GMT  
		Size: 54.3 MB (54252126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2141a46cf287ab142c000e159c0e2cd77c568952f6e39bb610e3af0f384925e`  
		Last Modified: Mon, 15 Oct 2018 23:31:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:7052e7f423df490ea0623536917373fe5a9ac10835a9a2fef6e6f63950367c6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52448179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4fa9543a7ecf88a06b0056cc24b91eac799e359aed1a3249d6dfae7acd8301`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:52:14 GMT
ADD file:ece7db5d675024fb19b6f85f6cf8fef14ba3263d0b9ed5ae78cc314a560618c6 in / 
# Tue, 16 Oct 2018 08:52:15 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:52:21 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7270a63277db81e6fa1e8f6354ee3c4dfef3f0008bd1d574721a5eaa82efa454`  
		Last Modified: Tue, 16 Oct 2018 09:01:35 GMT  
		Size: 52.4 MB (52447954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcd78407163b2e954bf11d98943c74e2714012ef86ade742fc6ee64132d0b8a`  
		Last Modified: Tue, 16 Oct 2018 09:01:46 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:cbf0542b040d8092abca769c5d7c805d0abb8dbd81321fd404a0335822526be7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50188892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec9b5c8d4657215c176fbae178f8df534d2093f8ee0aad8af06c5c9d46bef00`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:01:50 GMT
ADD file:750d6bbd03fd31238e0e867ac5e312b8ef48bfe48f4c88254de96d2b26feb2e6 in / 
# Tue, 16 Oct 2018 12:01:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:02:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:649387d29af0ef3e2bb98eb17cf4afc3e5fdd666dc3911e7e64e3ce586408d24`  
		Last Modified: Tue, 16 Oct 2018 12:13:38 GMT  
		Size: 50.2 MB (50188665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4090ebcefafa28fec035d91d3bb816f97c41d8c6cfce781b7b98f2164297e93f`  
		Last Modified: Tue, 16 Oct 2018 12:13:51 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:ab18f6bb318284642c71dfbca44542a0c34d43f341b03f58711a5bd120330e3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54484515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335e47d990f2a028e5d108e7d127d43035ba0d4633fd6665e98d9765d0a74714`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:44:00 GMT
ADD file:64b01829602cda0cfa499c0330e63a5a67f66c7dceb0b71035a0c8032a18e3d7 in / 
# Tue, 16 Oct 2018 10:44:01 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:44:17 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:07cc3889f2f5a5f8652778559684e2f0b51ddc22f704d0a942d3bdfe3d97deec`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 54.5 MB (54484291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c908bb227e4af8bcab50e4ea14f9498b9cbf94f1a79cda9a53847b65929db3`  
		Last Modified: Tue, 16 Oct 2018 11:00:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
