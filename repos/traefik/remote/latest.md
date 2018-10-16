## `traefik:latest`

```console
$ docker pull traefik@sha256:c25ac3c2736dc41b08c6f40ef3393d03dd7640a037cd53d681af459ccfa95c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:75cdc64272cf0e3ad372342c8809b582ea56ffec454e3a4b80265440bc1f11cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19456632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99dafcf4b2ebf5ed540bb87561de8737a4c6361d19e4240f853736310096fda0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 15 Oct 2018 21:13:19 GMT
COPY file:c6a86b500008e2d52fe1b5dfafc3bb5e804b696d37a678643eba9677495cc2c4 in / 
# Mon, 15 Oct 2018 21:13:20 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 21:13:20 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Oct 2018 21:13:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f01398393ece48f0eb7fe996782e1b015778623abda9f445d36ea870238767`  
		Last Modified: Mon, 15 Oct 2018 21:13:50 GMT  
		Size: 19.3 MB (19321595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:50963e8bf32003047ac68774a093a2fdf7683f9e697aba3d1e469c0bd2f10757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18284454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4267a45adb290eeb64443e0bb9234b61c7a6bb8e652be58a6f19b0a37dd5e8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 07:54:01 GMT
COPY file:cda2b7429933ff91216f008b18e9a3c499b5a9df8b751c1798491d9626160d9f in / 
# Tue, 16 Oct 2018 07:54:01 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 07:54:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 07:54:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee2168f4f23cf35481a4dbe5827346eb3a1efe68cd11c521e4e042da8224b02`  
		Last Modified: Tue, 16 Oct 2018 07:54:34 GMT  
		Size: 18.1 MB (18149376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:cb16ca0ab45a34af2f8911626e28ac7fbb11e6f5a52ef38a4367bd0106c0b410
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17838456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523d027a2417c4c435619f18f9fd511418f4c55901e6b1f8464ea8904cac7e22`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 16 Oct 2018 11:33:05 GMT
COPY file:2a7af6054106d6ba72db7de73673215d94ed7e6f631217b7a3270887b824d6cd in / 
# Tue, 16 Oct 2018 11:33:06 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:33:07 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Oct 2018 11:33:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c42773cc6b31dddc1d05d4637699c67b838f0c5198cc6c9520dcebdd76b4235`  
		Last Modified: Tue, 16 Oct 2018 11:34:14 GMT  
		Size: 17.7 MB (17703417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
