## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:f6dc37a21159466f8d1a5dfd4833b10b67c8f7e5baa1d2e9b61fcd5d0fef2951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3efdce8a1da808c4bfc3189bddc1804c05a5ba9deb2ba466b86ddc779058f970
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410750872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae211d83d3609948a140e51b034f9d6e78a272b24436e4523cb5979d946d41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:19:44 GMT
ADD file:b91e6aa2e14a5b94c06cdf05085b4e613ed65daf7da829ce5e46aa31ba76be8f in / 
# Fri, 08 Feb 2019 00:19:44 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 00:20:01 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-706502614691a67a409d283302e1d1b5af9cb5511f58e39e3b66fd16d043ce84.tar.gz"  && echo "a6434df3b1dce89d3e10f273b1e81f11be6735698c6517b90751d35bb4addfb0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f1087751193a0b6a0cb74ec605641fefe4793bf6273748a13acec288182e2402`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 61.3 MB (61287959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece32bdfe8cdeb6aed9b5206c3f929bbd5fe8cf7c874706027f1a3f3b30f53b`  
		Last Modified: Fri, 08 Feb 2019 00:21:17 GMT  
		Size: 349.5 MB (349462913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
