## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:7e82f9ce197fe75a54d28f2f0c00ce64cb0f537eb137d1bb6e80a462c85b9f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5fe1482bdc62b647c9df73d31f353ca30cd9d6b00e4e6ffe9adee7a4ac3f2fc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232731183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6fa1e2d458835b1d304d40e1d1c1cf7bb097c17cb7de6fd675bd748f988c29`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:39:46 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_202.b08-1.amzn2  && yum clean all
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6717d8e0127ffa7ddb72f8edb809cecdc20d3c6b5fe56e2aadd087f96b372f6`  
		Last Modified: Fri, 01 Mar 2019 22:40:32 GMT  
		Size: 171.4 MB (171421438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
