## `hello-seattle:nanoserver-1709`

```console
$ docker pull hello-seattle@sha256:25aac0e4bc4c8082f2849b54d037544c8bdd4fd1fbfe8f4a4447d808537b3d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `hello-seattle:nanoserver-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull hello-seattle@sha256:27a23634225f7058d21283e8c7ea9078914e75a5ee46898d1f39e766806d95d3
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135627851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86de7122bd89d6420ad619c7d45815d66e59c9cc4710e4fe8f4bb79edf08f7e`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:02:10 GMT
RUN Install update 10.0.16299.611
# Sat, 08 Sep 2018 09:16:46 GMT
RUN cmd /S /C #(nop) COPY file:e98427c22bcd4801f82c7a6bf55a02c144df3b1c6ebd6688900b74fd59119471 in C: 
# Sat, 08 Sep 2018 09:16:46 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Mon, 17 Sep 2018 20:22:04 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10288d9444107391fbf14d7bcca60d7043fccf0fb52d8b726814ba29a88a33a3`  
		Last Modified: Mon, 13 Aug 2018 18:28:19 GMT  
		Size: 54.6 MB (54585475 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:672760237dea310d0198d1a8249cee35bfbe528389b162832345ba419a0b0f91`  
		Last Modified: Sat, 08 Sep 2018 09:17:14 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce9b48d34c3719dc6e9e86edae74fdcef4103cb466b65bdc92c88b0b81f1fc6`  
		Last Modified: Sat, 08 Sep 2018 09:17:15 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
