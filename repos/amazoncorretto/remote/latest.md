## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:af4cc11e9c7447c3c7ebbab5b325ed67ea419e22777648061500a767e5a03d8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6488060349f21a0a0e5620c094efc2e1c6e7102035b8661d095931bd38721f26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200188615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e521884951c4fadbf3bedb29ce21f2cc00026ba7f5d21e86c09463194ee147`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:43:40 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_192.b12-1.amzn2  && yum clean all
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744524323d30625abea063346a83c3d760c272a27b450cfae85ddc7c2265440e`  
		Last Modified: Mon, 21 Jan 2019 20:44:06 GMT  
		Size: 138.9 MB (138906678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
