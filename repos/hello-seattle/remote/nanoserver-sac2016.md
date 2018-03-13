## `hello-seattle:nanoserver-sac2016`

```console
$ docker pull hello-seattle@sha256:eeb1b2aeaf147e04296eb6873187f94a71c14281a96c2836c8a2f04b3f5e898f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `hello-seattle:nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull hello-seattle@sha256:5ce9bbf911943c8d13bb98e7f09310efb569438fb66b802cd5e33fc4843459b4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.7 MB (408696931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9752fbefda5503da20ce985eb4f150207a552d9b17323afa020e0dfd7ea4a46d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Tue, 13 Mar 2018 21:12:16 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Tue, 13 Mar 2018 21:12:16 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35df3b5f6689db3e7facf25c7faad8d1094d9c360b4ab99a4ca391b3424868eb`  
		Last Modified: Tue, 13 Mar 2018 21:12:34 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfc2c75370c5cf45b29b6485a38b8225eeae9be9007c01c64e15ab93d354442`  
		Last Modified: Tue, 13 Mar 2018 21:12:34 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
