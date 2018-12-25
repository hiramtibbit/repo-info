## `hello-world:nanoserver-1803`

```console
$ docker pull hello-world@sha256:e97be7b84834b3bdc2d03de94441274a658da29aa9afd6e2fb8ab56febb90aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `hello-world:nanoserver-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull hello-world@sha256:c59893682415373d0eecb8e4642ade5c398fff4d0687cacc40f6676c7a67a3ff
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146428065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b4c4ea179354f15b64b2fb59b8e5e2fd9c6cd6df8ebe8f01f66896bd23264a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:28:32 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 21:14:23 GMT
RUN cmd /S /C #(nop) COPY file:238fc2c731bb8dbe5d2260a7ab5a72d4bbad13fc7eb81ab15a5043c6be5f017c in C: 
# Tue, 25 Dec 2018 21:14:24 GMT
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
	-	`sha256:0bd68f9c86692f0bac955c11da4ceac9a1785e286936990aa71a51532366a43a`  
		Last Modified: Tue, 25 Dec 2018 21:14:51 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a25a888ce14493eb2e61db2d25550a19d99f80d7613473858c43cd6715953a1`  
		Last Modified: Tue, 25 Dec 2018 21:14:51 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
