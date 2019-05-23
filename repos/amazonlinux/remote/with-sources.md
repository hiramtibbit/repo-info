## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:4c0f29089428d1a2b1225e226eadf8c8684e7a01914fee149352b3c1fd26c983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fcd73965625b9c0de8400ab8b8c31b20595c545374b64689240c4a2894e8ca58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410960103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eaaa89c4223d2027c8dd9a1a4e265f15a168d5fde6b2aa89192a1aa4e2aad2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:20:34 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-ad69d19055549443625cfbf1bb083d60f6d5648578856ca22e3741eca92decbc.tar.gz"  && echo "5f117ceb75e376f975baa4c495e5cf2422c551fabd0f9262261e781daf550d95  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5ca75c90568489ab3b9bb13a4ed227fa53b57acad2ab63205c676d617373d`  
		Last Modified: Thu, 23 May 2019 22:22:55 GMT  
		Size: 349.7 MB (349674926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:39b64ce3215b789dd17885e354bd2a4db2e78814044512e3e209b6a68e98c3af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412128109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee7d92cc78e07acd5622053f052a5a5c26b419db75eb8a4f53daff9c7cf76f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:39:34 GMT
ADD file:358a4a50e1cb5e7181b9cc49d23e60d7b0ba5ca2ce18ced74be5843836d54004 in / 
# Thu, 23 May 2019 22:39:35 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:57 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-ad69d19055549443625cfbf1bb083d60f6d5648578856ca22e3741eca92decbc.tar.gz"  && echo "5f117ceb75e376f975baa4c495e5cf2422c551fabd0f9262261e781daf550d95  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0c8ee56cea53bee75dce23897c1c0f77aa13a698e7b49d9f20c788cef45fadea`  
		Last Modified: Thu, 23 May 2019 22:40:27 GMT  
		Size: 62.5 MB (62453151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29df043f931d0e06fff848237e2c171c2d803f1aab63eb0be968bdc2abacddad`  
		Last Modified: Thu, 23 May 2019 22:41:10 GMT  
		Size: 349.7 MB (349674958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
