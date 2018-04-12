## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:73727ebeab97d4e67d35a67d510b3a3062317abf09ff69814591ec34e2579a35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

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
