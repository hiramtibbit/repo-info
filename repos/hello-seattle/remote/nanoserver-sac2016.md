## `hello-seattle:nanoserver-sac2016`

```console
$ docker pull hello-seattle@sha256:8789b569ff1fd6cb3216443b5b5dc4898b0d38e0300eba07378d683bfb436d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `hello-seattle:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull hello-seattle@sha256:cd796bc16e6c606260d7630c41eed79a7c958a6a7863cc17c7670134968daba2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.4 MB (435399447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63e4627cf6b05fc51f9974076398173e7af3f7e69d3abd0dded00f337c6f12b`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 21:15:41 GMT
RUN cmd /S /C #(nop) COPY file:f78833f862b33d4431d393ad6c558b194b6a569e6e786b1e81d109537bf46850 in C: 
# Tue, 25 Dec 2018 21:15:43 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6b948d13d3b12ff1c26b185e52430b612d420489e4bc15f22d9ed52b6e6b0a28`  
		Last Modified: Tue, 25 Dec 2018 21:16:07 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603c9f583de7da1ad2d91f4a501cca8dee82b4ef5d635f4d103a864d442ca537`  
		Last Modified: Tue, 25 Dec 2018 21:16:08 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
