## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:5933ca9c1087b630ee2cc65708139ae9571206a01ecbc8464d0ff6d426c2458e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64
	-	windows version 10.0.16299.492; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.2312; amd64

```console
$ docker pull hello-world@sha256:4cd5fc6fae454214ef0c270891d825bed7c4851fa8552f22dde29d1230d90a44
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.4 MB (418442709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a0c752f970a419aba39261958e13ad381a8192d424cb7815bcec268c2898af`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Mon, 02 Jul 2018 23:40:53 GMT
RUN cmd /S /C #(nop) COPY file:19018ab37dc27dc638e8a285323c17fba700589fa097293b8cf3bc77d2d350ac in C: 
# Mon, 02 Jul 2018 23:40:54 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f8dc00d6f6ec7cd3ec1b7250a7aabb77aec32c96c3e8a7d4ea8f832583be7e67`  
		Last Modified: Mon, 02 Jul 2018 23:41:09 GMT  
		Size: 1.7 KB (1659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37412baf5e4414692bb860df24c84aef1063134d84386196a6a20edc2151f567`  
		Last Modified: Mon, 02 Jul 2018 23:41:09 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.16299.492; amd64

```console
$ docker pull hello-world@sha256:d76ee3881c4d05ec90f71b6f021b729ce66eb41a115d704f4eaf136ff005bd2c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.6 MB (133580801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b4f2587dfd5bf205bfc617a22091449042b360d72c0ab28f3816fe1cc04a8d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:15:59 GMT
RUN Install update 10.0.16299.492
# Mon, 02 Jul 2018 23:40:57 GMT
RUN cmd /S /C #(nop) COPY file:19018ab37dc27dc638e8a285323c17fba700589fa097293b8cf3bc77d2d350ac in C: 
# Mon, 02 Jul 2018 23:40:58 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:85710d780d680cb5dfe03ec4bec5d928cf13de184c4adfa2ee56c7c7b6d33f8d`  
		Last Modified: Wed, 13 Jun 2018 01:11:25 GMT  
		Size: 52.5 MB (52538468 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9539f949462c015f5e86089aee65a8eba02b40b80b8d340d648f47693e05946c`  
		Last Modified: Mon, 02 Jul 2018 23:41:16 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0bc3d0315961e3296c0745694ddcfb92930991bb25642129ac09e04379bb46`  
		Last Modified: Mon, 02 Jul 2018 23:41:15 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
