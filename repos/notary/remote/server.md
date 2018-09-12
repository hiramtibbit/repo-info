## `notary:server`

```console
$ docker pull notary@sha256:d59e4ecc20198447a9818e7f16d0a02ba1d9905de71e5354bc8ee0017304a244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:88bddb53072ae1b018b3b09ac1974be903800e3595ec31401fc3c73ffb66affd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6239608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b632e954ca01326ecc36ff0c7bb651baf9dcf92366b322b112f697193eb3d5`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:57:36 GMT
EXPOSE 4443/tcp
# Tue, 11 Sep 2018 23:57:36 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 11 Sep 2018 23:57:37 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 11 Sep 2018 23:57:37 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 11 Sep 2018 23:57:37 GMT
WORKDIR /notary/server
# Tue, 11 Sep 2018 23:57:38 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:57:38 GMT
USER [notary]
# Tue, 11 Sep 2018 23:57:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 11 Sep 2018 23:57:38 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:57:38 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176147d1183da92e05482a5560407bfc56af52bc61b1cb5bdb323d4c7d6a8867`  
		Last Modified: Tue, 11 Sep 2018 23:59:01 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504875b8162730788ff7df926b72bcbb2bae4690f5195b6d62ec961ffc12056`  
		Last Modified: Tue, 11 Sep 2018 23:59:02 GMT  
		Size: 4.0 MB (4030701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070baad58e0d2d397143ab9f03defb8b016fc8d57eab900d496727c0e2e00292`  
		Last Modified: Tue, 11 Sep 2018 23:59:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ff31535c882e16ca7c737f9b9852e6b03e10cd1cd3fdf653beecdedf3dffff`  
		Last Modified: Tue, 11 Sep 2018 23:59:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
