## `nats:nanoserver`

```console
$ docker pull nats@sha256:8215195747cda4187b6fd6cf70c28e327f57b9f9aaa00ecd6c3185739d88cff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:nanoserver` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:f8227ac4a218e95fc229b249d6bf40fc8e390edab9275e9fbf620990354c802f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407978114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedca9f8aea59282971c777f3128cd486fff9c121618d34aedb64a32c85fa3a9`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 00:36:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Feb 2018 00:36:49 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Fri, 02 Mar 2018 22:13:30 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Fri, 02 Mar 2018 22:13:32 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 02 Mar 2018 22:13:34 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
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
	-	`sha256:519ff6e2ee5971b673c031efcb8024058dd88c0d995c3abf303def2652d3429a`  
		Last Modified: Wed, 14 Feb 2018 00:37:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca2b33537e2731b959493bccb10d6ef5c55122747a2f5cf7e79d2a574f9f93c`  
		Last Modified: Wed, 14 Feb 2018 00:37:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ac64810d5d8ca0b5305c4cd0bb8f7f54bb7dde285d389d61ed8346503f01e8`  
		Last Modified: Fri, 02 Mar 2018 22:13:58 GMT  
		Size: 2.5 MB (2477811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523fa9c5323d7e6f03ed5d880a412f987531781a091762389941d3d0ab05613e`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2506ed6526d7a00ed4d267cb4677bc020131ce3c1835f7251a94195eacce5f84`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaced3a03e782a3a007fa4fa2d71f514d4f83039c42e827f421a9749c2137a1`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705feb65e740d25598bffe0ad096851d43f723cf0c8ae3865d9f452bfc3b5398`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
