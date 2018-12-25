## `hola-mundo:nanoserver-1803`

```console
$ docker pull hola-mundo@sha256:186fa4b128efaa5e111facd551f3bba0abb9f16e0a73e614a29e5d10bb481eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `hola-mundo:nanoserver-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull hola-mundo@sha256:e2a34d0066ef9f8571e040b2234ea04c9782494611d4cb2cf14544a8bea0c624
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146428085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8179fabed9f0c6ec55514d2ab11251b290b1b311004cdf5cf9c177089499ac3f`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:28:32 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 04:39:56 GMT
RUN cmd /S /C #(nop) COPY file:9b863d14177c2b9b93c1d0e1cb09e05425927bfb27dc0d618954b743bf5ef3de in C: 
# Tue, 25 Dec 2018 04:39:58 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f493dc3e1d73855439ead197cc94d3bdac81372c5cb171f12b1f29ba58cdc9d9`  
		Last Modified: Tue, 11 Dec 2018 22:06:26 GMT  
		Size: 53.6 MB (53606566 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:225e1b870d02c86403bf88547b59678d835eea485bb80e306ae302c6bfef9da2`  
		Last Modified: Tue, 25 Dec 2018 04:40:26 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a42a57217548d148b95a89ffc62727e01ad1a543e3d91eeacd77c6681f2d265`  
		Last Modified: Tue, 25 Dec 2018 04:40:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
