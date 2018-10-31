## `traefik:maroilles`

```console
$ docker pull traefik@sha256:79452ce773b11a63bcd12bfedbbd50f46feb6676431a8c90f6f7265e9ceca432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:832d581dfcb1bccf441af2b7390c41c124f41e603abbab9826b5d302c7ac9c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19504205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d048a102127b599eb8040b43892c2981e43b8b8177963a664094e1e4c3db17d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 01:10:58 GMT
COPY file:944c596ebf67e74e565799ab88fc0d009ff5faa7edfd3d6002672a9880959e23 in / 
# Wed, 31 Oct 2018 01:10:58 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 01:10:58 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 01:10:58 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 01:10:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4512f4e41a6a898aeea1195c05198b632b019469835cea7e58d22527cedd28`  
		Last Modified: Wed, 31 Oct 2018 01:12:08 GMT  
		Size: 19.4 MB (19369168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4bb27d01f21d153699c87873912b5a8840d5c8e093ed684203a80d4176af3c02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18326581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a61b657db34c5315db20de77fc60499e7ca65419a5bfcb68e2a1374faaaa58`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 08:11:36 GMT
COPY file:bc4832e403c5e1be509fe88b4fe018bd51f3c9429bb6f31b4dde0e20d7eee2a5 in / 
# Wed, 31 Oct 2018 08:11:36 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 08:11:37 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 08:11:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 08:11:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b1490a1a38628825ee1095c381c08361a9d04ae0c0858e49830cc16fb004b`  
		Last Modified: Wed, 31 Oct 2018 08:12:17 GMT  
		Size: 18.2 MB (18191503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b3a2fc8dd98f2cca0abaf05d57281b0723e585d04931443b55c05dc264f69865
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17878617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b9a0b5f22dcc081206a11e33bfd1a8dd28bfbf355f49aa04441efde49b8636`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 31 Oct 2018 10:07:49 GMT
COPY file:c9e4fbb3b20c47481d125252d478590f87c2d0a9184bed616c9e367de1668d19 in / 
# Wed, 31 Oct 2018 10:07:50 GMT
EXPOSE 80/tcp
# Wed, 31 Oct 2018 10:07:50 GMT
VOLUME [/tmp]
# Wed, 31 Oct 2018 10:07:51 GMT
ENTRYPOINT ["/traefik"]
# Wed, 31 Oct 2018 10:07:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1d3f38a9b70a07cf33cee2abb198c842d611248da55bc422c3007620eb176`  
		Last Modified: Wed, 31 Oct 2018 10:08:58 GMT  
		Size: 17.7 MB (17743578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
