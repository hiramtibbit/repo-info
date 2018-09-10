## `hello-world:nanoserver-1803`

```console
$ docker pull hello-world@sha256:70b2cbcc43f7d4fd3c5d63a6fddbbc80b248af70938c7bedcaba364565e1ce33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `hello-world:nanoserver-1803` - windows version 10.0.17134.228; amd64

```console
$ docker pull hello-world@sha256:670f0dc439e4669bc602cc571af9f72271ea3b39002416fe2398feb36a7ac20d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141453608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe16c070a65267297b0550b0e0b3644e6c859199cb93f5badf899885bbed1fc`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:09:11 GMT
RUN Install update 10.0.17134.228
# Sat, 08 Sep 2018 09:41:20 GMT
RUN cmd /S /C #(nop) COPY file:bf420924ba66ea7ac6f5fb04d115f4ac136c4107a61acf4366cd14ce4cc2fae5 in C: 
# Sat, 08 Sep 2018 09:41:20 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1f7d468f830cb0ed4beb8edc9438f18096e8c682e56a35242f60e6c61b718b30`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 48.6 MB (48632111 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35655e48c5c5c1c21f19073b2594d74b5023ae2cd84bf7f7f45acb886e1b5e34`  
		Last Modified: Sat, 08 Sep 2018 09:41:48 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8159aad5f944a2967427ce18283248707fb15071b202e00de4ffd105e9ed6ace`  
		Last Modified: Sat, 08 Sep 2018 09:41:48 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
