## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:166d7245d34e25d9555ddfdf080663908d545da6ca249e697c4eb041e6bcdb2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.2068; amd64

```console
$ docker pull hello-seattle@sha256:b9290412b2df729a6848efa487b66661d0eef877ae40a44dff382feb844863a9
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.5 MB (405496261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d67ac9f471320fefa7450b4519bd6f576072d35c607bc241486bd6452fc32816`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Tue, 13 Feb 2018 22:11:51 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Tue, 13 Feb 2018 22:11:52 GMT
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
	-	`sha256:66764c7eb1ead2771b4b5977b1e07bec78d622894bf07edd98e9ffbd2a53e197`  
		Last Modified: Tue, 13 Feb 2018 22:12:08 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad9f4e1fabe710c965d3ca502c0b53f50b8ddc3aa13e2ecf8998d463b2cf5bc`  
		Last Modified: Tue, 13 Feb 2018 22:12:08 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-seattle:nanoserver` - windows version 10.0.16299.248; amd64

```console
$ docker pull hello-seattle@sha256:54075f9474c5b8c1fa6df4359ce48d2237fd4ecf1d4d735f87619fd646bb01ac
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126893830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38832bf4ae4c86d84f8fa64bb846041ec843758a653d1c3cb568e7772be4716`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 04:45:41 GMT
RUN Install update 10.0.16299.248
# Tue, 13 Feb 2018 22:11:57 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Tue, 13 Feb 2018 22:11:57 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3cb15ab58a2cc15a45deb7d1a4f182a40834ebabfe895389c4a04b185d3cdcf9`  
		Last Modified: Tue, 13 Feb 2018 21:02:35 GMT  
		Size: 45.9 MB (45851493 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8b7062d32280c28bdee72ee5131b0459a92aa93d389b8dbcbdcbf0fa7649bcef`  
		Last Modified: Tue, 13 Feb 2018 22:12:18 GMT  
		Size: 1.7 KB (1651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96697c4af69b51dbf633f53ad43cd5fc77996a7cd1509d81b776f2f9f6875d`  
		Last Modified: Tue, 13 Feb 2018 22:12:16 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
