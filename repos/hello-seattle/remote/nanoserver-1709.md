## `hello-seattle:nanoserver-1709`

```console
$ docker pull hello-seattle@sha256:af3ae5080c65ea859211e64019cb5a8ccbf551a31bb0cd1d221c134f2c5afcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `hello-seattle:nanoserver-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull hello-seattle@sha256:d39e53a9920a0202c586b18162b500d3d501117e31bb6b874650d0ae60bdd3cf
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128507129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b898d42839e95072d85867bf6591c56c8fb75769820f7e8f87df5616b20ac5`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 17:06:42 GMT
RUN Install update 10.0.16299.371
# Thu, 12 Apr 2018 09:40:10 GMT
RUN cmd /S /C #(nop) COPY file:a04f617b384e418c261b5fa30ceb089a22f57b91ac80d8a5cc51f96d6ff98037 in C: 
# Thu, 12 Apr 2018 09:40:18 GMT
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
	-	`sha256:4e0becf6120be727ce0df34b2576326b6da6de44fea4b3ae502c18b6883febca`  
		Last Modified: Thu, 12 Apr 2018 09:41:25 GMT  
		Size: 1.7 KB (1701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3df569dab845fff596d7e20fffeb4a1636407480a64fcac24e7598194eed965`  
		Last Modified: Thu, 12 Apr 2018 09:41:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
