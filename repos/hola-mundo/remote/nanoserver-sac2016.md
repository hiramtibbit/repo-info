## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:da109db55e9d6a44ce0f9558423cc5e4b85e6d8a3dc0e8575efe8a96b68a1190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull hola-mundo@sha256:94ed7b4663c11dfae0171c328b3bcf503510fb0ed9045b374de3dd3bea2734cb
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.7 MB (408696944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c207313f35143efae80e80bad41a0ed6855afaa078333819c79b1ed86811afd`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 10:46:52 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Wed, 14 Mar 2018 10:46:53 GMT
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
	-	`sha256:e900ef789fc0cf2fc07f4a43466617fbfb7036ca258766be0c2ef632ae5b58b1`  
		Last Modified: Wed, 14 Mar 2018 10:47:09 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dad529587c26cb4ccc527c1dd0461d9ad10f2138876eeb24382aeafb474cfd`  
		Last Modified: Wed, 14 Mar 2018 10:47:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
