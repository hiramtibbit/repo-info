## `hello-seattle:nanoserver-1803`

```console
$ docker pull hello-seattle@sha256:ef24f02ec3a488273b78117f21696e7a06ecde706a23f950a0d507bba31f3e29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `hello-seattle:nanoserver-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull hello-seattle@sha256:19cefe926e2eb29a86f7350ccd3879d2f3169678aba722587b5a9024d6e3e261
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146427962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e65bb739a78e356a23b2fdaf0d282d92ee8099afd9d74afc1a7a8ec0098c405d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:28:32 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 21:15:53 GMT
RUN cmd /S /C #(nop) COPY file:e218c7332a963aa861bcd7430a109f3ab9867b0f05c961075cca941165e07407 in C: 
# Tue, 25 Dec 2018 21:15:54 GMT
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
	-	`sha256:a92440dc030c415d8c0f63f064997eb025e1813a8f781cd3d31786ccc01f1fb6`  
		Last Modified: Tue, 25 Dec 2018 21:16:21 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76370e9ae92562553396307ccd3639dd44a03d86f00685294c5a1770b03cd2a2`  
		Last Modified: Tue, 25 Dec 2018 21:16:21 GMT  
		Size: 828.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
