## `hello-world:nanoserver-1803`

```console
$ docker pull hello-world@sha256:0f464250efa1901d8382dd3a353c243c7157f0eee00fddf8309d240531079ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `hello-world:nanoserver-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull hello-world@sha256:318b5ff947acc631fadaacf23eae890806f0e5219a0d85802877f619874e1a37
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146428033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb68d2e2f59a9e5ea880ccc5715672ba5238c3f03d0ad596689564c675a986b4`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:28:32 GMT
RUN Install update 10.0.17134.469
# Tue, 01 Jan 2019 10:20:25 GMT
RUN cmd /S /C #(nop) COPY file:7b1666bf57eab9af43a34ac3bff0f0d60d153096912881d488e2dd82ff129a57 in C: 
# Tue, 01 Jan 2019 10:20:27 GMT
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
	-	`sha256:d2dd05621072711d90e0ca1ae4bac0f201edcf4ed8c120d5e5d35d0de570c736`  
		Last Modified: Tue, 01 Jan 2019 10:21:00 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcb489a87baede63d00535be023ca8ab2e4291d081e2d6cdd037d23cefbae89`  
		Last Modified: Tue, 01 Jan 2019 10:21:00 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
