## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:62238cc6b14b1d25e5b9ce97b8678a588e83c2d57ae9530b684577a1adaad828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.2189; amd64

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

### `hello-seattle:nanoserver` - windows version 10.0.16299.371; amd64

```console
$ docker pull hello-seattle@sha256:d39e53a9920a0202c586b18162b500d3d501117e31bb6b874650d0ae60bdd3cf
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128507129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b898d42839e95072d85867bf6591c56c8fb75769820f7e8f87df5616b20ac5`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 17:06:42 GMT
RUN Install update 10.0.16299.371
# Thu, 12 Apr 2018 09:40:10 GMT
RUN cmd /S /C #(nop) COPY file:a04f617b384e418c261b5fa30ceb089a22f57b91ac80d8a5cc51f96d6ff98037 in C: 
# Thu, 12 Apr 2018 09:40:18 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:09d5497005b498201371f0568d85a140f5349d3ea1ce7e336f5c5ccbad8195f0`  
		Last Modified: Tue, 10 Apr 2018 16:33:37 GMT  
		Size: 47.5 MB (47464738 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4e0becf6120be727ce0df34b2576326b6da6de44fea4b3ae502c18b6883febca`  
		Last Modified: Thu, 12 Apr 2018 09:41:25 GMT  
		Size: 1.7 KB (1701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3df569dab845fff596d7e20fffeb4a1636407480a64fcac24e7598194eed965`  
		Last Modified: Thu, 12 Apr 2018 09:41:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
