## `traefik:latest`

```console
$ docker pull traefik@sha256:bfdb516861ab9e54e4af3d151f5e25a04ea3d0e7147be2ce8a6f33723874413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:1ad308ad1bf633599ebc2083af47f4bf9d8ca40d4144d63f124d36de7ac0d75a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19119634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6dd75ac04756e1a94f16f4643a03a0218561111c6a381e26f16113c3b7aa17`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 01 Oct 2018 19:20:09 GMT
COPY file:fb54f3e478b7f28053f85c19581a65576d881edfbe24517582d390b0e92fbc1d in / 
# Mon, 01 Oct 2018 19:20:15 GMT
EXPOSE 80/tcp
# Mon, 01 Oct 2018 19:20:15 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Oct 2018 19:20:16 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2ae24fba36db0f766e9d854c22ad91fb1548da17db59ec78e7f9701ac7952`  
		Last Modified: Mon, 01 Oct 2018 19:20:50 GMT  
		Size: 19.0 MB (18984597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1af76ce94edb2c03564c6662444289da7a888a1091177b44b0d0b6a59e7bbaae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17969850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bcac16cae70d0f6bd328ac299999387fd82856ea6cb544f5c5c4f908f9f12b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 02 Oct 2018 07:50:30 GMT
COPY file:30f4b7a9b040953f993951ae6783c530a57eb379ef4ae907de11ce9034b76019 in / 
# Tue, 02 Oct 2018 07:50:31 GMT
EXPOSE 80/tcp
# Tue, 02 Oct 2018 07:50:31 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 07:50:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d583353367de518a9965980c7ade3262f055b561b54d5ac97b4d5b4ab2c25`  
		Last Modified: Tue, 02 Oct 2018 07:51:01 GMT  
		Size: 17.8 MB (17834772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
