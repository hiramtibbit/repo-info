## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:1d2986abd933c0c97799b34e6ce16f3a11f7429a93838c7033ccb2f7f0199790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1087; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.1087; amd64

```console
$ docker pull hello-world@sha256:08ca4f2c45316cb0b79faf8f07625046dbbc16f6f140b0c59da03f1323ada8a4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138618530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca7ef8e4f3abd70d44739c9379b20802236badde01170716080e819ceb3dfd0`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 1709-RTM-amd64
# Wed, 03 Apr 2019 23:55:33 GMT
RUN Install update 1709-amd64
# Fri, 12 Apr 2019 05:20:48 GMT
RUN cmd /S /C #(nop) COPY file:415eb109aac20c548c615bac3dfa9d6152d0a1ed3b56ea5739eb1b60accd8075 in C: 
# Fri, 12 Apr 2019 05:20:49 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Mon, 17 Sep 2018 20:22:04 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9ef95ce817eca24d68624fa7da4a7f807a2a26d58d490396c60139752def5f1a`  
		Last Modified: Tue, 09 Apr 2019 18:39:36 GMT  
		Size: 57.6 MB (57576174 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:16563ad15fce31a47e0814a34ad88369f6db790b0c127bb83e71c5a882dce8e8`  
		Last Modified: Fri, 12 Apr 2019 05:21:19 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236c8deeb295bd19a088730be7c5e27b33ecd85cdd9de400d1403ef62f09fc3c`  
		Last Modified: Fri, 12 Apr 2019 05:21:19 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
