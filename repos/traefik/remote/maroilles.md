## `traefik:maroilles`

```console
$ docker pull traefik@sha256:dffc34eb70092fe566380e7ff13ef1fbe6892389306430d4e9427935f2fac21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:b576755c1a42dc2b8ca90a868b7a8647c5a050a2b1fe97dbbdbda75bb48a507a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19740419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836e9f6c9646af98f931775acf094accb60eb17151c17adc42991fb3080c267`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 08 Jan 2019 23:52:47 GMT
COPY file:23a51aad526bb41d3f6b944f54dd4742f125d1e04aa637f7170d84cd0709aba0 in / 
# Tue, 08 Jan 2019 23:52:47 GMT
EXPOSE 80
# Tue, 08 Jan 2019 23:52:48 GMT
VOLUME [/tmp]
# Tue, 08 Jan 2019 23:52:48 GMT
ENTRYPOINT ["/traefik"]
# Tue, 08 Jan 2019 23:52:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63ad623dc38e84c464215edd8c849abd451680b9df80445a204d1745b5364c`  
		Last Modified: Tue, 08 Jan 2019 23:53:14 GMT  
		Size: 19.6 MB (19605376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:afcaa9af39bc1e0abf599ea8261e29d3c5c456cba24cfb39a72df2334e72211d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18536407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7304d9d83bff55fd3f490176422727fb7ea54522e141e72866d01d62bf3469b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 08:57:40 GMT
COPY file:439260d797e62b82ff995d407d9b6df920243417283426dcf00bc125f27cd21c in / 
# Wed, 09 Jan 2019 08:57:41 GMT
EXPOSE 80
# Wed, 09 Jan 2019 08:57:42 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 08:57:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 08:57:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77de36fc580eb7bf895dc92d63e83b536c708f1c5a6e2782e26fd36e2a569915`  
		Last Modified: Wed, 09 Jan 2019 08:58:13 GMT  
		Size: 18.4 MB (18401369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:57835d3ec954ad58072dce55e778841a40e7aa5d75f10d110e03285bf99709bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18092705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f4e98982b27de33fded0e028d55ac09e1c87e0f1b9fa8ed9ea4ac9e52742f2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 09 Jan 2019 11:45:53 GMT
COPY file:7f5b3eb4282a5c47e5c6ada70ce065a5254fb162b6a8d24eaf89d0dea52fb2d5 in / 
# Wed, 09 Jan 2019 11:45:56 GMT
EXPOSE 80
# Wed, 09 Jan 2019 11:45:57 GMT
VOLUME [/tmp]
# Wed, 09 Jan 2019 11:45:59 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Jan 2019 11:46:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.7 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b928aac7083cda762a452dd65ce1b15a7a47bc1103882c7b734d8f282fdfe31`  
		Last Modified: Wed, 09 Jan 2019 11:46:57 GMT  
		Size: 18.0 MB (17957669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
