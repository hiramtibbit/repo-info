## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:ccc957cc5b122854f27d93649fa1138b4994dc05381ab5887a8e672ac21148c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:1dadc4502bad605d0011ed9bc320978d3f2b85ad99713963c2bc863885cd071f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6150095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214d66e8b30dbf6dbac112bff8c92bb32e3a8201c33586c1695979d74cad139d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:45:57 GMT
EXPOSE 4443/tcp
# Fri, 06 Jul 2018 15:45:58 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 06 Jul 2018 15:46:22 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Fri, 06 Jul 2018 15:46:22 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 06 Jul 2018 15:46:22 GMT
WORKDIR /notary/server
# Fri, 06 Jul 2018 15:46:23 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:24 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 06 Jul 2018 15:46:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:24 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c43e30d64a03f2a2a81428395b8c15e6bab455cf66fbea2759377bca405a978`  
		Last Modified: Fri, 06 Jul 2018 15:47:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c0480c3730194c6ca8bb0045825331d73681f2af5f65667ea5ce9367b47dbd`  
		Last Modified: Fri, 06 Jul 2018 15:48:22 GMT  
		Size: 3.9 MB (3941573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769578715f302efd6589d9773e19a66178970e4d44aeed5f74690f8e5d14eb9f`  
		Last Modified: Fri, 06 Jul 2018 15:48:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6de957ef8a4a4de10cd32c7fed4530948aebc740899db36a5029e71ffb30456`  
		Last Modified: Fri, 06 Jul 2018 15:48:20 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
