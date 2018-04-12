## `hello-seattle:nanoserver-sac2016`

```console
$ docker pull hello-seattle@sha256:fcf1c9c38ee0a582bae1629f6cf1d6ab5e132ab2ed51a3b4700f98297cd8b54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `hello-seattle:nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull hello-seattle@sha256:cd2aa90f836580d5613acc6736d0db6bd658d74a4b24f1fb77a07f75e646acbe
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.9 MB (407946041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca31f575c3bc4a8a04e621328d1e10ba252abd316a4152946ee8ed7685fe659`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Thu, 12 Apr 2018 09:39:36 GMT
RUN cmd /S /C #(nop) COPY file:a04f617b384e418c261b5fa30ceb089a22f57b91ac80d8a5cc51f96d6ff98037 in C: 
# Thu, 12 Apr 2018 09:39:40 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:32e7fb1c173abce7f9e986e497607fc4bff40a55a576fa833e83266866d6f16a`  
		Last Modified: Thu, 12 Apr 2018 09:41:12 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9eb64644410ede30a6719890379e6dfa3ab482427f42d7b9e721a85990587c`  
		Last Modified: Thu, 12 Apr 2018 09:41:11 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
