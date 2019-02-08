## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:a0194348f8b7302b89fc1563b8530c152c3494d15a45f9ac8a82751f8eece992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2-with-sources` - linux; amd64

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

### `amazonlinux:2-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:d87e771dafa72a73d8c25ba4d9f09578ad5507b96edb3fbf3f25d1c69407854d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.1 MB (433092702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d01d4d1a7843b2e9a463c20a510f325c27184e6ac82194a9dc4a18a435db656`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 09:40:24 GMT
ADD file:472c130064cb85df56a1b1ccb16c8bfcf4913ccf37588ee121c7814681f7237b in / 
# Fri, 08 Feb 2019 09:40:26 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 09:41:05 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-706502614691a67a409d283302e1d1b5af9cb5511f58e39e3b66fd16d043ce84.tar.gz"  && echo "a6434df3b1dce89d3e10f273b1e81f11be6735698c6517b90751d35bb4addfb0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:8337939a0aa76124f49a9b23fc873cabe47dbb0d56e7c88736d453ed0aee03e8`  
		Last Modified: Fri, 08 Feb 2019 09:41:51 GMT  
		Size: 83.6 MB (83629782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5468cfe033924d5362bb067cc0d3f83097b3f0d25dc349800efb8ac4f61db95f`  
		Last Modified: Fri, 08 Feb 2019 09:42:46 GMT  
		Size: 349.5 MB (349462920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
