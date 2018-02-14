## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:fb7e13766314ceddc04622870b379d98c2bf810980256e06a43abddd0591b151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull hola-mundo@sha256:41ff69491a396ae071c37999d3f7aa7b5002522b24fd84816d63ff6384b362ab
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126893864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17517c98281b873249087cffd2e720c39b84354581bda58108a5295eeb90b0`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 04:45:41 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 11:45:51 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Wed, 14 Feb 2018 11:45:51 GMT
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
	-	`sha256:62d2e240ead71e9e63a5615824f477f919b83a0fa0cd229e1ff40944550ee07f`  
		Last Modified: Wed, 14 Feb 2018 11:46:08 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca593d37d3c5e29f39d48298997f8533dbadb8afa640a4c3aa446f7d8b5b3f05`  
		Last Modified: Wed, 14 Feb 2018 11:46:09 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
