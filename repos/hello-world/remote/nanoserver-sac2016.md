## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:60b73cdcece76068266592c0a8a7c7f76c7e7e3bd81807f10ac701dc805ff5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull hello-world@sha256:19ca085d102046ef4e0f6bc4dc1424264118add1ad1ae37bfb72edfcc7bf37d7
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.5 MB (419523674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98162eca839f0f7edc6ce3f2afd7a935b8f9a1d6f9b53f9b1f4d442262a457a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 10:00:27 GMT
RUN cmd /S /C #(nop) COPY file:1bbca6fcc0632c9b102065e0f53ba4b9c976ce89fd299f8626e559236544791a in C: 
# Wed, 11 Jul 2018 10:00:28 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5a6000eb1a8cd7cc0cfa9d5c570bc254967b4eefaa152e1d63085cb78cf53205`  
		Last Modified: Wed, 11 Jul 2018 10:00:47 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d4d021521dc9dd5131da3f2f09127dcdb5f12667ed32e7517af8c7c0bb0a86`  
		Last Modified: Wed, 11 Jul 2018 10:00:47 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
