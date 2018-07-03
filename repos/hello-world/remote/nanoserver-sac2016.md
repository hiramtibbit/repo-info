## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:096b8b45a3a43f68b1913d49b1748ea634414c7ab7ce1c1b78f28a94856b2b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2312; amd64

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
