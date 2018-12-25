## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:a2a0f0fca607f0d793634c3844aa09951da4b58d1f62b02fde528b2258db595b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull hello-world@sha256:93b51bb2ea44b973dc1c5d946509a6f597d5c9cc51071afb6ea41a2ffc417142
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.4 MB (435399433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fb9ad791753e9f5fa46f343632d7074f56c5b4abe74791017da9cd5ebb6d7b`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 21:14:12 GMT
RUN cmd /S /C #(nop) COPY file:bf1940063ff2bd72b7cce2864c7f1f06929b67ea8e10de35360ba460ae1f5345 in C: 
# Tue, 25 Dec 2018 21:14:13 GMT
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
	-	`sha256:9ce75b533f1b56d69b283d10a9eb54348f30c29a7fb2c955817b133a81430580`  
		Last Modified: Tue, 25 Dec 2018 21:14:37 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110a3193dacb2a96568c8c9408da550b57d511fcda8cb2573e8c255643d38cc`  
		Last Modified: Tue, 25 Dec 2018 21:14:38 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
