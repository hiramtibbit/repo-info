## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:cf0d1d7c2f4837b2d80d79916dfe6b97046e83e059e361cdac944f7c983ea9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull hola-mundo@sha256:7ea7b4a3a7472fa222430568d0eb6a3e8f4eab34b0bba493029de1465e4a926b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420477675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfec699ff9a40fbe2cab91e8defc4fc2c7d1231db25fc47e9d80aee4bb2db34c`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:39:40 GMT
RUN cmd /S /C #(nop) COPY file:5d6ddf2d1a4ac36058310cedc1d59c9d7824e748fdd9fad29d0fc6ce4e2f80a8 in C: 
# Sat, 08 Sep 2018 09:39:40 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0f49885c2b3f0788c420e3751e75d01ef5452949226f1ac6cddfb7f163ff0d6d`  
		Last Modified: Sat, 08 Sep 2018 09:40:02 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32942599643a8c02d4fc4e13006be397aa2c6dba0c93b1320657cba4ee175db4`  
		Last Modified: Sat, 08 Sep 2018 09:40:02 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
