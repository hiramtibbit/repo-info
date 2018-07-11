## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:4a7e4881bb081a2cef8cfbb537d8882526a319ddf65e294dc53bc536c161a2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull hello-world@sha256:f0fd1f23ca98aa4f6a031f742f74b2ff9c778abe66e029fc0b11e9c9918380b1
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134159534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df35c04435102c4c7a808c2aed465ec9cd369dd3fe7949980bf2b78d90367b62`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 17:52:28 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 10:00:31 GMT
RUN cmd /S /C #(nop) COPY file:6ebdd64359775512c62720c78d667d7432e3748318839ec104672b361db90378 in C: 
# Wed, 11 Jul 2018 10:00:32 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34fb1446c2c9d000074687309a5ee1c0d8e0d26e67ba03d9532c1aa139f9990a`  
		Last Modified: Tue, 10 Jul 2018 23:35:57 GMT  
		Size: 53.1 MB (53117210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34a83c114126c762962dbd1b7769c5c75d3e335c00b00a529092278b70b88cad`  
		Last Modified: Wed, 11 Jul 2018 10:00:54 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433cb7bd2a1b07fa5ecc8a2e93f36c19b32ffbca61d86f2de2043e0d2fe210bd`  
		Last Modified: Wed, 11 Jul 2018 10:00:54 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
