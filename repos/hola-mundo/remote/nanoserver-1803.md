## `hola-mundo:nanoserver-1803`

```console
$ docker pull hola-mundo@sha256:c94174e3255892d1d1e142363889e42c888cf532cc13a201f9e8f8c4032176f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.165; amd64

### `hola-mundo:nanoserver-1803` - windows version 10.0.17134.165; amd64

```console
$ docker pull hola-mundo@sha256:e6671764da2b4913aa80e36a7ac7ae446a6309c459624aded4913169bd464d15
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137449887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a618af63dd3a307b8cff68555eebd64adbe8a1997c9a5341c2759c82953c7398`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Sat, 07 Jul 2018 22:36:31 GMT
RUN Install update 10.0.17134.165
# Wed, 11 Jul 2018 09:16:58 GMT
RUN cmd /S /C #(nop) COPY file:333330e753047a0c291ac8c9d273346153db6db4375ab17ef99505e86b78ed7a in C: 
# Wed, 11 Jul 2018 09:16:58 GMT
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
	-	`sha256:6debb97910dc5672580531611b3c4d3c531608d5d642f737206e7d8e8c99e939`  
		Last Modified: Wed, 11 Jul 2018 09:17:30 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6813603a7f8adf623cef5d23c876209052c72e216fada64dfd72f1c0821c85f`  
		Last Modified: Wed, 11 Jul 2018 09:17:30 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
