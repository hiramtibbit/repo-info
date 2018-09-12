## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:cc3961c393e59658d16d795ed6eaee2054f95086aed099bdbfccc5a8db14c696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:d044334f2a6053137dfd9ea52899f9a34ffe84ebc5f4b5f792dc842c42a97810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6150493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1908f1af7ebde81b99dae3d97948d32c517c0a3ce9dffc9840c50e95c26c584a`
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
# Tue, 11 Sep 2018 23:57:55 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Tue, 11 Sep 2018 23:57:55 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 11 Sep 2018 23:57:55 GMT
WORKDIR /notary/server
# Tue, 11 Sep 2018 23:57:56 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:57:56 GMT
USER [notary]
# Tue, 11 Sep 2018 23:57:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 11 Sep 2018 23:57:56 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:57:56 GMT
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
	-	`sha256:459b39352c2d51648c733bd9bb79a78e96faff4dfcdb2c24cbd1b7f0850f4822`  
		Last Modified: Tue, 11 Sep 2018 23:59:28 GMT  
		Size: 3.9 MB (3941581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e030199fbc149f115a495b518c3047a98e3e6651beab45c4b0d091aaea071d6`  
		Last Modified: Tue, 11 Sep 2018 23:59:29 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cae25a91046db237473ff03a7fd50ec916c8f78ad37ec788b5f08e253d3b76`  
		Last Modified: Tue, 11 Sep 2018 23:59:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
