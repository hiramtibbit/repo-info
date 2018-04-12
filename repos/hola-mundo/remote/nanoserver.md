## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:460edf0275a45fe5e74906ed7372b68f51729099d58754ba935d5659747d62bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull hola-mundo@sha256:9db5b54bbfc1afcd574975270411fb392fda0a6e181b1ac29be8eedd10d6d52c
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.9 MB (407946181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9167234fe8386d79a64133918109e1f8f376a90cc7d62a785b20b830b67e2838`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Thu, 12 Apr 2018 09:50:11 GMT
RUN cmd /S /C #(nop) COPY file:30c2f29ade1ee7efbfd09310655094eb71bc50476bba2ddd6f836c126778822b in C: 
# Thu, 12 Apr 2018 09:50:16 GMT
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
	-	`sha256:4db5cec3236d8b6a5e136610d8b7bef330ddd79ffb5041a5868ddc7d162effab`  
		Last Modified: Thu, 12 Apr 2018 09:51:27 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d41f9201a498ccc86a91f9e83f8efe900fd336715f2014edbb9369f2d7961f`  
		Last Modified: Thu, 12 Apr 2018 09:51:27 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hola-mundo:nanoserver` - windows version 10.0.16299.371; amd64

```console
$ docker pull hola-mundo@sha256:f5ffa37911157fa3900c08522093eee8605868725b25b13a28b67020d46e3610
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128507067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa6d9f07433452e7de9240fcc31bf7a09720493e013d359b2e1a6dedeac8d6c`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 17:06:42 GMT
RUN Install update 10.0.16299.371
# Thu, 12 Apr 2018 09:50:50 GMT
RUN cmd /S /C #(nop) COPY file:30c2f29ade1ee7efbfd09310655094eb71bc50476bba2ddd6f836c126778822b in C: 
# Thu, 12 Apr 2018 09:50:54 GMT
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
	-	`sha256:e517ab9e1093e38579cf2fc4639307cc87338fb354d7e1b11a614ea327ea9614`  
		Last Modified: Thu, 12 Apr 2018 09:51:35 GMT  
		Size: 1.6 KB (1627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cd9368602a642577a686520f9388359f1467039c64548b688436e61ee5bbfd`  
		Last Modified: Thu, 12 Apr 2018 09:51:34 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
