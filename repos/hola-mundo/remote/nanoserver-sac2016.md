## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:eae8c19b52fb8f44a201f65741814d5c71a9423f1a6ccc2afd2b4893cae98110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull hola-mundo@sha256:8b42f5cefcd285d0601f9a4cd175e18d7e87d1aa35d9189aea0ac1b9eeae2226
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.5 MB (405496265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2485050d4531886178cf7a654e8a0171fee30cb26f86b6a075a17d5775c0de8f`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 11:45:46 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Wed, 14 Feb 2018 11:45:46 GMT
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
	-	`sha256:77aa587bb45e4f7a7a9797213611adcc254dac4e24b53db9815db656b4809f3d`  
		Last Modified: Wed, 14 Feb 2018 11:46:01 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b669292c290842ec60242abc2ebca041507f306f80aad1ee9d16ba8102f0c9`  
		Last Modified: Wed, 14 Feb 2018 11:46:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
