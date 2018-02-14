## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:1b70da413ff5aaee822b8aaedd7824646c7df2129f7ed13c83ab71255b414992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull hello-world@sha256:4e00a7951ad696af6aefc158b3835033ba43645cdaa453078cad8a5b4b194573
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126893854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f144310c8523828f7cee49c0c833c018af9213448fca0f39116d9d4af87b289`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 04:45:41 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 05:13:52 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Wed, 14 Feb 2018 05:13:53 GMT
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
	-	`sha256:d6f879db0fe0f053d798d02196b8d0370ce3216820ec6b74c9bbb6c7a18b5ac2`  
		Last Modified: Wed, 14 Feb 2018 05:14:10 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38257f2d38d87ec4602d90d825397f43af09da9ec51e4c520bfe665c0135111d`  
		Last Modified: Wed, 14 Feb 2018 05:14:09 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
