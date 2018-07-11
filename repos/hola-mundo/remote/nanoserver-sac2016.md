## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:a7d60fbef45fae22ea7e33621d6620a8c2eea3fa5b7782dd8dcd90fce4f0a223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull hola-mundo@sha256:3c4f1f6a75663efb5bbd9974406059dcff6428b58a641e4a7092f0e062d561e4
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.5 MB (419523695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588cd2e75b39be215166853077f0890cdbff8a1574569d3bfa2cf4060942012e`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:16:49 GMT
RUN cmd /S /C #(nop) COPY file:b5c1b91e5007fac7c6a60292e1ac92c3730806271d91ad98297ad32b8962d8ed in C: 
# Wed, 11 Jul 2018 09:16:50 GMT
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
	-	`sha256:c77c521d8a77f344715a85bfec9a22c7ffe436277f1abb6170f3248ca7408c7f`  
		Last Modified: Wed, 11 Jul 2018 09:17:12 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f651bbb367d75de602b6d123832038c73faa7c87a094af19372197d0973b60bc`  
		Last Modified: Wed, 11 Jul 2018 09:17:11 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
