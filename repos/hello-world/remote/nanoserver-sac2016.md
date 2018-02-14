## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:89e3db5dcf19f13b0963e06401d58117e1d5e8280013d25a4c1a97f6a4a7954e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull hello-world@sha256:0354831313dd28bc2834b8d3471550e7f7fa58858ecfcdcdfe0a9826db7e997d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.5 MB (405496247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a62ac00602af0a2348399d685c159b2dc10b57e7ca4046555cbb37f4816b67`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 05:13:47 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Wed, 14 Feb 2018 05:13:47 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cb1aafb7147372cc64faa070b94a893b8cd2e3de3a0e8001dc225c627d991c58`  
		Last Modified: Tue, 13 Feb 2018 19:43:23 GMT  
		Size: 152.8 MB (152802641 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:383295a9a2881c5ef03b9bf8d3d800b3b96aefcd5e6017373d0198ce53e00dfe`  
		Last Modified: Wed, 14 Feb 2018 05:14:02 GMT  
		Size: 1.7 KB (1658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fa90677189476d0ebc57632c7e7b6b6d6b62b7205881a03b1fbb342f15ae76`  
		Last Modified: Wed, 14 Feb 2018 05:14:02 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
