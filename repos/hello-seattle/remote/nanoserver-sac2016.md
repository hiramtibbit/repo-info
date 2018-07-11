## `hello-seattle:nanoserver-sac2016`

```console
$ docker pull hello-seattle@sha256:3a9307d0e5954ca1b36aa8cd2a4ec60b50e36f845b5034a33f932105ac7f9101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `hello-seattle:nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull hello-seattle@sha256:6ce6be0a9a4f1eb6e05ba3aa808f24507f26e8ddb8ec24cd8619b3a10a558549
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.5 MB (419523701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e11d0011abbd561e72e083582d62b75f5a0184f1014148f40249ca0cb6f2174`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:18:11 GMT
RUN cmd /S /C #(nop) COPY file:71a4424fdf5d6714230ce48d67ee2e783e7bc9cd59039720f3fc59507d0c4dcf in C: 
# Wed, 11 Jul 2018 09:18:12 GMT
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
	-	`sha256:2ec8a818dda158f3258167ba75d1554307e0c34cc92decc459513804f5818a30`  
		Last Modified: Wed, 11 Jul 2018 09:18:33 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea2946e8069e80c89651979ff0545f6d9232beb4d7a765dfb0939529932e23d`  
		Last Modified: Wed, 11 Jul 2018 09:18:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
