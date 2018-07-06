<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.2.0`](#notaryserver-020)
-	[`notary:server-0.3.0`](#notaryserver-030)
-	[`notary:server-0.4.2`](#notaryserver-042)
-	[`notary:server-0.5.0`](#notaryserver-050)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.2.0`](#notarysigner-020)
-	[`notary:signer-0.3.0`](#notarysigner-030)
-	[`notary:signer-0.4.2`](#notarysigner-042)
-	[`notary:signer-0.5.0`](#notarysigner-050)

## `notary:server`

```console
$ docker pull notary@sha256:11ec105aaaa92ebcdfacf6ec121308915716ce2855662016472637b75e81d3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:2c11a43ddb1a2428d9a4f0ccbb306bbeabbdfc9e8c8e6538a65d7347de0545a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6239221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf29868595cb94a800973bb87b17bab853fbeddc9f65fca7203bbed2f4689834`
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
# Fri, 06 Jul 2018 15:45:58 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 06 Jul 2018 15:45:59 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 06 Jul 2018 15:45:59 GMT
WORKDIR /notary/server
# Fri, 06 Jul 2018 15:46:00 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:00 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 06 Jul 2018 15:46:00 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:00 GMT
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
	-	`sha256:f65e4c7129f856bab100e5f889b1c636664079cfa34ca0f38e7e768444d96e25`  
		Last Modified: Fri, 06 Jul 2018 15:47:35 GMT  
		Size: 4.0 MB (4030702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3328f8e9ad2cb80e0bbb79e766c4653eaf4a8486779145443d0d2fceb227c52`  
		Last Modified: Fri, 06 Jul 2018 15:47:34 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfbcddf98334594584b5b1152095ea1cd064d34754a5f2f42cd4ce0a9f34028`  
		Last Modified: Fri, 06 Jul 2018 15:47:34 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:27b6fa05f0f11fd9132db8be0de27088ffa49081d08dac7c720b8aa64e35165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:a3cab2360d5524f408483cc0239da1ff34f5d209d291aa55bb3dcb6fa5905078
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7987643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaa836250037d5b117b853749afddbd33607a4d24b0bf25d846d2c8ee818ed3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:45:57 GMT
EXPOSE 4443/tcp
# Fri, 06 Jul 2018 15:46:43 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 06 Jul 2018 15:47:05 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Fri, 06 Jul 2018 15:47:06 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 06 Jul 2018 15:47:06 GMT
WORKDIR /notary/server
# Fri, 06 Jul 2018 15:47:07 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:47:07 GMT
USER [notary]
# Fri, 06 Jul 2018 15:47:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 06 Jul 2018 15:47:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:47:08 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d08aa0ee6374c81f6c03bd464873a916802e2ce67acce091d3a20036585038`  
		Last Modified: Fri, 06 Jul 2018 15:48:51 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5433a55d03df909a57d38eee80af055800a8862a9fb0676e91ec1d150e2d007`  
		Last Modified: Fri, 06 Jul 2018 15:49:27 GMT  
		Size: 5.8 MB (5779113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3282b4ffc8751a007406e03367a8f6afc082cd6935c8ebe2b998dcdff9b40ff1`  
		Last Modified: Fri, 06 Jul 2018 15:49:26 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463002e35c473bfa450061fec1656f7bae27ba61b0884c9beae17291859173ea`  
		Last Modified: Fri, 06 Jul 2018 15:49:26 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:09014eb4f73eee1fd162e52ce3691eeead087b256715937f1231a741e63892f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:a0ad7593568d77b1065cd44010653ae851ee6e5abfe6b04a30d8829bca41f6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48781792239c57532370a612078a64cfd39e8f52262a06af7d5a6ccbc7cd575`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:45:57 GMT
EXPOSE 4443/tcp
# Fri, 06 Jul 2018 15:46:43 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 06 Jul 2018 15:46:43 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 06 Jul 2018 15:46:44 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 06 Jul 2018 15:46:44 GMT
WORKDIR /notary/server
# Fri, 06 Jul 2018 15:46:45 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:45 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 06 Jul 2018 15:46:46 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:46 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d08aa0ee6374c81f6c03bd464873a916802e2ce67acce091d3a20036585038`  
		Last Modified: Fri, 06 Jul 2018 15:48:51 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9881088aaff2489ffd6df082e26c4d7f3160a43b1be8fcc3b4cf282aefad9150`  
		Last Modified: Fri, 06 Jul 2018 15:48:52 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318df04f923afa52287d81c1daa793b555498f2388e4f047b9d0413b2d8871aa`  
		Last Modified: Fri, 06 Jul 2018 15:48:51 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed9ab9f98f429c709a4698fdb4c23689b0ffcef129dc32e76bbc7139565c252`  
		Last Modified: Fri, 06 Jul 2018 15:48:51 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:11ec105aaaa92ebcdfacf6ec121308915716ce2855662016472637b75e81d3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:2c11a43ddb1a2428d9a4f0ccbb306bbeabbdfc9e8c8e6538a65d7347de0545a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6239221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf29868595cb94a800973bb87b17bab853fbeddc9f65fca7203bbed2f4689834`
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
# Fri, 06 Jul 2018 15:45:58 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 06 Jul 2018 15:45:59 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 06 Jul 2018 15:45:59 GMT
WORKDIR /notary/server
# Fri, 06 Jul 2018 15:46:00 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:00 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 06 Jul 2018 15:46:00 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:00 GMT
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
	-	`sha256:f65e4c7129f856bab100e5f889b1c636664079cfa34ca0f38e7e768444d96e25`  
		Last Modified: Fri, 06 Jul 2018 15:47:35 GMT  
		Size: 4.0 MB (4030702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3328f8e9ad2cb80e0bbb79e766c4653eaf4a8486779145443d0d2fceb227c52`  
		Last Modified: Fri, 06 Jul 2018 15:47:34 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfbcddf98334594584b5b1152095ea1cd064d34754a5f2f42cd4ce0a9f34028`  
		Last Modified: Fri, 06 Jul 2018 15:47:34 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:3689d92974e78fb178bd6dd617f9caccdc5a1e1d33290dc8f8699b2c56eccf14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:24a9357b712ac94e2913a4c2b81e4beedbf7926b47ad82159674fa4e6b711c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5859457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1349baab22d7417cdbe75ff99dee3fdc87691a48dbf48f2be6cadebd2fe4524`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 4444/tcp
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 7899/tcp
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:11 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:46:12 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:12 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:46:13 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:13 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8c4456962017d880e78dbf88dfd869ec21ac3ecb3aaf3bffdbf65ac00ff8c`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bf171576b2f417a4a81e86f8971e5b2085b80a269ee88cfc5df48dc2c731fa`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a751cf976625db716022a3b3ed6e6df2c7784a2d01774eb4bff4a6d41c74bec7`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6e13ad9a6df52a233d8889a31a814ad5365d27b7f80d3db394c29eba1c444c`  
		Last Modified: Fri, 06 Jul 2018 15:47:57 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:0225f85e2f69dffa9cb68fdc03bceffb63e2f7502f5f7fd0d857007bce36c86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:ffa4262c4b18924c6da3347da193172cbd6f44c925edd4078925955d3917e937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7751729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca351d42787c99126584d9067bfe581ac21a334153de853ee66afe32a711c432`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 4444/tcp
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 7899/tcp
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 06 Jul 2018 15:47:16 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Fri, 06 Jul 2018 15:47:16 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:47:17 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:47:18 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:47:18 GMT
USER [notary]
# Fri, 06 Jul 2018 15:47:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:47:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:47:19 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8c4456962017d880e78dbf88dfd869ec21ac3ecb3aaf3bffdbf65ac00ff8c`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cf27297d41fcf53fcdd820816600e84900ef686da901395a01b728b98256fe`  
		Last Modified: Fri, 06 Jul 2018 15:49:42 GMT  
		Size: 5.5 MB (5543267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e399aef8851e1a7c82307b2386ad80f797aa98bffcf566dc1ab050450867c`  
		Last Modified: Fri, 06 Jul 2018 15:49:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890112ef8214364913ddbc334ed5f3cb0e5fdde005d2da9e7e616818f95cef79`  
		Last Modified: Fri, 06 Jul 2018 15:49:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:c96f68fce52bd7756895981b25082cd7b0febbbadfcbb90684db8b1449ce751a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:68dee31d15a1d1093ead7693c18910a55374dbda54899635acfb555818f2ae84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6784422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee69d0a9816594f52ba78231340816108076939ba5d42b17543d06b25945547`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 4444/tcp
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 7899/tcp
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:55 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:55 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:55 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:46:56 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:57 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:46:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:57 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8c4456962017d880e78dbf88dfd869ec21ac3ecb3aaf3bffdbf65ac00ff8c`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb149c0e60d919aec8f4b36bded2cc6e15f121a47bf66727590f91d489e243e`  
		Last Modified: Fri, 06 Jul 2018 15:49:12 GMT  
		Size: 4.6 MB (4575961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c464424fab1d9250788c36ad243bce35e159fe860c7353b499bc700a228da7`  
		Last Modified: Fri, 06 Jul 2018 15:49:11 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9486fd6e868d9e377392582a5d4e3c681d4119d1aefd9a44ff096c5811f98938`  
		Last Modified: Fri, 06 Jul 2018 15:49:11 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:24b0a3c4cbe601d1d4b896fb0676043878bcb14589ef65ce8b5e58616e9a9ddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:2ab20d3fdf61fd9119533341e1248ec3d4cd2bb0c7dcc47b5ae8e0dbaa08a275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5778012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57e9aefc8376a1f78216fd63c6b820da235207422617c4617d814847179e1cd`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 4444/tcp
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 7899/tcp
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:32 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:33 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:33 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:46:34 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:34 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:46:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:35 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8c4456962017d880e78dbf88dfd869ec21ac3ecb3aaf3bffdbf65ac00ff8c`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37be4d5caa6d31990604af4e65e7a3010a46b76eebf508b12d0df824fd3a2a6a`  
		Last Modified: Fri, 06 Jul 2018 15:48:37 GMT  
		Size: 3.6 MB (3569554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a61a2f6156df8aaec82e1f691b89d64d9764ac520c3058ecf3deb5b92bdb78e`  
		Last Modified: Fri, 06 Jul 2018 15:48:36 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c97aa81da56f466042307f9c76950ddede059704f9c0e766704312e537931c`  
		Last Modified: Fri, 06 Jul 2018 15:48:36 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:3689d92974e78fb178bd6dd617f9caccdc5a1e1d33290dc8f8699b2c56eccf14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:24a9357b712ac94e2913a4c2b81e4beedbf7926b47ad82159674fa4e6b711c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5859457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1349baab22d7417cdbe75ff99dee3fdc87691a48dbf48f2be6cadebd2fe4524`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 4444/tcp
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 7899/tcp
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:11 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:46:12 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:12 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:46:13 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:13 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8c4456962017d880e78dbf88dfd869ec21ac3ecb3aaf3bffdbf65ac00ff8c`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bf171576b2f417a4a81e86f8971e5b2085b80a269ee88cfc5df48dc2c731fa`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a751cf976625db716022a3b3ed6e6df2c7784a2d01774eb4bff4a6d41c74bec7`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6e13ad9a6df52a233d8889a31a814ad5365d27b7f80d3db394c29eba1c444c`  
		Last Modified: Fri, 06 Jul 2018 15:47:57 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
