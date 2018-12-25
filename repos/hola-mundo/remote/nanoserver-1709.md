## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:974eebd8b155e5ff70fa01a7ac50ae5faca31da2fed94d5266e138ee4faf446d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull hola-mundo@sha256:c5b8155d6a927e157f34cda9a8c73af04fd8d65f4b17ed2067385bfa716a8786
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137000412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e817da105adaee208a8ff5029bc5a2a8bb38c48abdc40bb97e0c55698fcfe4a6`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:27:28 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 04:39:51 GMT
RUN cmd /S /C #(nop) COPY file:46925a8f3965909da82385604615e6c84defec86a6d4c9ab5878987c55e1bc89 in C: 
# Tue, 25 Dec 2018 04:39:52 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Mon, 17 Sep 2018 20:22:04 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:59774a31bc8e61a8112b0be9d21f5210bded1bfc99ce63cea3dfc18f50e3c89d`  
		Last Modified: Tue, 11 Dec 2018 21:30:28 GMT  
		Size: 56.0 MB (55958054 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0bef6fdf5793da7c0371234a1a0e4f7db8e0f39898a5798d75c4f6f3cddf34bc`  
		Last Modified: Tue, 25 Dec 2018 04:40:19 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec413414c8c142a9a6fc22dda0743f488fe6a39b0c44d617194a23ea9b9861b0`  
		Last Modified: Tue, 25 Dec 2018 04:40:20 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
