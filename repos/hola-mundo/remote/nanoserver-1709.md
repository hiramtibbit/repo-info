## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:854492978c007f63e6f1e87ac98e788659998a50d21576306454a7b4be4cb4e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull hola-mundo@sha256:f5ffa37911157fa3900c08522093eee8605868725b25b13a28b67020d46e3610
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128507067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa6d9f07433452e7de9240fcc31bf7a09720493e013d359b2e1a6dedeac8d6c`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 17:06:42 GMT
RUN Install update 10.0.16299.371
# Thu, 12 Apr 2018 09:50:50 GMT
RUN cmd /S /C #(nop) COPY file:30c2f29ade1ee7efbfd09310655094eb71bc50476bba2ddd6f836c126778822b in C: 
# Thu, 12 Apr 2018 09:50:54 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:09d5497005b498201371f0568d85a140f5349d3ea1ce7e336f5c5ccbad8195f0`  
		Last Modified: Tue, 10 Apr 2018 16:33:37 GMT  
		Size: 47.5 MB (47464738 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e517ab9e1093e38579cf2fc4639307cc87338fb354d7e1b11a614ea327ea9614`  
		Last Modified: Thu, 12 Apr 2018 09:51:35 GMT  
		Size: 1.6 KB (1627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cd9368602a642577a686520f9388359f1467039c64548b688436e61ee5bbfd`  
		Last Modified: Thu, 12 Apr 2018 09:51:34 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
