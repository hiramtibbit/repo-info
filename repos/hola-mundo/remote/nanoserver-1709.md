## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:f6ba99e1fee44e645a10077871d91e00d6dbc53a267026076dde206d4e744bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull hola-mundo@sha256:39f51afedd3d027bdd4b24f5ee6b11f5970761b882328f70d924c3e232f357b9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134159597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a78946bda8e84ae1f1874b24c70923732ba84fdcfdda803dbd6dffa31c1de8`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 17:52:28 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:16:53 GMT
RUN cmd /S /C #(nop) COPY file:16b9fa2863488501617f76684bf74c91a3c2e5de59cb8ec66fe8caa6e2c034e4 in C: 
# Wed, 11 Jul 2018 09:16:54 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34fb1446c2c9d000074687309a5ee1c0d8e0d26e67ba03d9532c1aa139f9990a`  
		Last Modified: Tue, 10 Jul 2018 23:35:57 GMT  
		Size: 53.1 MB (53117210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:48465f47e6bf32b1517f723f3e85fe9b862fc317c4cea3b9831551625b402ab7`  
		Last Modified: Wed, 11 Jul 2018 09:17:21 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846db142ac4dc1eb14568434d3ac7b0f8c19f47b09be638d27eee831a4d65173`  
		Last Modified: Wed, 11 Jul 2018 09:17:20 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
