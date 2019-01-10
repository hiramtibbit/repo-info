## `amazoncorretto:8-al2-full`

```console
$ docker pull amazoncorretto@sha256:6e31deb2d475acf62d2e47e031356e20267f03de1abf72cd6e05c5ee000207fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1ccd39aec12c13d34a5d6d6d9054dca82fc74cb90039450de6eefdc09fd6d70a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200140108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfe2c06e776d67370657f0eb7e0b208c62dee843cd8c948ec51213ba6222a19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
# Wed, 09 Jan 2019 05:11:20 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_192.b12-1.amzn2  && yum clean all
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690eba6a2a6297afc4fca111ea613a400aee5e6f2534080a3fc1fe16d19548f9`  
		Last Modified: Wed, 09 Jan 2019 05:12:01 GMT  
		Size: 138.9 MB (138893483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
