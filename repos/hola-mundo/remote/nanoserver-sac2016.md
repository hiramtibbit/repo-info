## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:e831712fc945590c879b0273ef96cbccb8024e24adbb8f0f63f1e5c3851b5eeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull hola-mundo@sha256:73615c092be1d95aa3b57bc0c05a2c44beadc60ba5ca4c85b346218c94e4efa4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.4 MB (435399423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa8a0a16fe3c9f338394ef7b47da6677a024a34d8c6bc9bded1c8e89a030a0c`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 04:39:46 GMT
RUN cmd /S /C #(nop) COPY file:e9dd225c57481eedf297c7607a32795cd13af44edb9e73acd5d01ea45caff209 in C: 
# Tue, 25 Dec 2018 04:39:47 GMT
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
	-	`sha256:da2357e726a734f78aad87e5da73e516dd05a6eb18d035c0a640d7b5af897a6a`  
		Last Modified: Tue, 25 Dec 2018 04:40:12 GMT  
		Size: 1.7 KB (1658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ff035eec6e5c8aea94aee7b46fd599fd1ea0a291ac9fbbb96e55a8836d5138`  
		Last Modified: Tue, 25 Dec 2018 04:40:13 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
