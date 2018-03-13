## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:406b16ee3cb1aa3b22235edd38b5fe5ff96cfcd9e915c7ea353b4c47155992ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64
	-	windows version 10.0.16299.309; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.2125; amd64

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

### `hello-seattle:nanoserver` - windows version 10.0.16299.309; amd64

```console
$ docker pull hello-seattle@sha256:25379645ec16fdcc8683c43a85f40a749d9f9cf0aaadd7db737f3044fdbcd7c3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127288359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5ef334f60838fbd7afc169b4b635935e6261460bd5970887e2351b0601d116`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 05 Mar 2018 01:53:57 GMT
RUN Install update 10.0.16299.309
# Tue, 13 Mar 2018 21:12:22 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Tue, 13 Mar 2018 21:12:23 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5ebc0041967d6ebf38de2a33ade241e7e7541b04ce12c5455452272e3bcaa08f`  
		Last Modified: Tue, 13 Mar 2018 01:07:25 GMT  
		Size: 46.2 MB (46246002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e27edb87136e873ac3433d1e9dee6f561925b39f7d3a1a81ef77efa54937266d`  
		Last Modified: Tue, 13 Mar 2018 21:12:41 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74b857b1e2052579644c100233cdbb12a6f099f575603966680b24ef4acf0d7`  
		Last Modified: Tue, 13 Mar 2018 21:12:41 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
