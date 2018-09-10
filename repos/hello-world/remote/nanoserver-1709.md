## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:b155ac59357cc09abcc5f96d49c9e22f4e7eea7a737f840e0444023eff00060d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull hello-world@sha256:2be344b1e25598202a3fb40486fa3ae3392314acef9d3defcede09bb002bcf63
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135627824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3c960ee07af01a332be8f11dd4a0d016a42c21068171177eedb2a12b3c7b672`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:02:10 GMT
RUN Install update 10.0.16299.611
# Sat, 08 Sep 2018 09:41:14 GMT
RUN cmd /S /C #(nop) COPY file:392f9ab81e9ba5e5d1b961a55715f2b667d30a82f8728afaa16cc24c979afef5 in C: 
# Sat, 08 Sep 2018 09:41:15 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10288d9444107391fbf14d7bcca60d7043fccf0fb52d8b726814ba29a88a33a3`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 54.6 MB (54585475 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:193d0a4adcb6770d2e7224e6c001f024d94cddb8e2181cf85fddbe9b826350ac`  
		Last Modified: Sat, 08 Sep 2018 09:41:41 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064bf71f4fc535740e581a736257444ee0e01289c410f079e645ac73f7887bb5`  
		Last Modified: Sat, 08 Sep 2018 09:41:40 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
