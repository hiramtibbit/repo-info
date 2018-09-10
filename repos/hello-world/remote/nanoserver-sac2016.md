## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:bd88def1bfa5c3f2fa985a2da323614496f940105cb9a9fcea8263db97a45131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull hello-world@sha256:413f47f775b4553db0ce5de808b04cc4a0cb24e69ee38cfe78db1cda94532a33
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420477650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476f8d625669a65727545b9a764d25f7295694d3bd723c43794104d8573d3ba1`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:41:09 GMT
RUN cmd /S /C #(nop) COPY file:05086cbbb70ea04e820aa21ad19dee128bd0f4a4de39981f25b0b9d9c514e493 in C: 
# Sat, 08 Sep 2018 09:41:10 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:842bcbb9bd6ef9c166e1d5514d18dca0ebea929e131c4577d2d873bd4b2407f8`  
		Last Modified: Sat, 08 Sep 2018 09:41:32 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c15d2487d426f7985f58aa97dab4152d5f9c685d9941434130561f8437b96c8`  
		Last Modified: Sat, 08 Sep 2018 09:41:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
