## `traefik:maroilles`

```console
$ docker pull traefik@sha256:3968a1e15d68061338a3d7b10004cb1fefd419f36c4c26646bc26744c59fbdd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:52ca0c364affd4dbc86438245e3f9b3c219992cab8072383b93fe6d56f327770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19118142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f911cf4afc17ff5942ca983d7721bf395da8c601d21f887cbf28a5db1ef0631`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 24 Sep 2018 22:27:39 GMT
COPY file:952ee64e1d1d497ebc2571d78a867d192aaff8e7df49ca293ea4b9edcd010e7a in / 
# Mon, 24 Sep 2018 22:27:39 GMT
EXPOSE 80/tcp
# Mon, 24 Sep 2018 22:27:39 GMT
ENTRYPOINT ["/traefik"]
# Mon, 24 Sep 2018 22:27:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ef1b776dc46d366f793affe8106601719a7976f0fc604b8657b1c2603eeffe`  
		Last Modified: Mon, 24 Sep 2018 22:28:08 GMT  
		Size: 19.0 MB (18983105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e5fc5115933761b2e1a1bed8c04b7bc2ef448f51cb9bf63934193308dcca5ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b6bff60c4809733b95f4286d35e44bbca534b2f2d863d47aa9897e070307de`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 25 Sep 2018 07:50:09 GMT
COPY file:15b2be162072fdb0fe13383a2fbb1a36d8b6040c045616f0989b2376e355cf0b in / 
# Tue, 25 Sep 2018 07:50:10 GMT
EXPOSE 80/tcp
# Tue, 25 Sep 2018 07:50:10 GMT
ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 07:50:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6574aee0ec1492797d795f0aec5c868497dce550b57b05003871fc054f654d2`  
		Last Modified: Tue, 25 Sep 2018 07:50:51 GMT  
		Size: 17.8 MB (17834190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
