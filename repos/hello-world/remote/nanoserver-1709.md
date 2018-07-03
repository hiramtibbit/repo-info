## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:423e857afe0564531bc3c60a41af1e87e50188e9a442c00f1af95519149de37d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.492; amd64

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
