## `hello-seattle:nanoserver-1803`

```console
$ docker pull hello-seattle@sha256:4b43f27d2211e87471ee5939937044312166b7dea8477838bfda5cabba62a683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.165; amd64

### `hello-seattle:nanoserver-1803` - windows version 10.0.17134.165; amd64

```console
$ docker pull hello-seattle@sha256:a086b8994b3e7eb3ab50a0056a835b815e1b80d7633543801af98c728c228aad
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137449870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b57f4fe57f23d64e571d9afce6bfec16211b2b2e719985d5469f31bbac2999`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Sat, 07 Jul 2018 22:36:31 GMT
RUN Install update 10.0.17134.165
# Wed, 11 Jul 2018 09:18:19 GMT
RUN cmd /S /C #(nop) COPY file:82f213e1f9d82ec375c3e397b46fa3e880ce37e3d4fe890c6b6ac1b8708383e4 in C: 
# Wed, 11 Jul 2018 09:18:20 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 07 May 2018 21:17:40 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c012fa86f9e5cddd7348f95461791fec33dee91c4e56bafa448c80194c8bc8d4`  
		Last Modified: Tue, 10 Jul 2018 21:53:59 GMT  
		Size: 44.6 MB (44628354 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e86c20da49b05be8a91a1ff1ff7b7fe7681bee88020a0957e363239eba6ec8b7`  
		Last Modified: Wed, 11 Jul 2018 09:18:47 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801bcbecfcf9e8f8e7e35b3f75ce66d70cef5ab385dfa2bcd8a92a537a350efb`  
		Last Modified: Wed, 11 Jul 2018 09:18:47 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
