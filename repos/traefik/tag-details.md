<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.5`](#traefik175)
-	[`traefik:1.7.5-alpine`](#traefik175-alpine)
-	[`traefik:1.7.5-nanoserver`](#traefik175-nanoserver)
-	[`traefik:1.7.5-nanoserver-sac2016`](#traefik175-nanoserver-sac2016)
-	[`traefik:1.7-alpine`](#traefik17-alpine)
-	[`traefik:1.7-nanoserver`](#traefik17-nanoserver)
-	[`traefik:1.7-nanoserver-sac2016`](#traefik17-nanoserver-sac2016)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:maroilles`](#traefikmaroilles)
-	[`traefik:maroilles-alpine`](#traefikmaroilles-alpine)
-	[`traefik:maroilles-nanoserver`](#traefikmaroilles-nanoserver)
-	[`traefik:maroilles-nanoserver-sac2016`](#traefikmaroilles-nanoserver-sac2016)
-	[`traefik:nanoserver`](#traefiknanoserver)
-	[`traefik:nanoserver-sac2016`](#traefiknanoserver-sac2016)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.5`](#traefikv175)
-	[`traefik:v1.7.5-alpine`](#traefikv175-alpine)
-	[`traefik:v1.7.5-nanoserver`](#traefikv175-nanoserver)
-	[`traefik:v1.7.5-nanoserver-sac2016`](#traefikv175-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:4f6128e447e8cdfc3e6add19d6176449bde30d0cf70a5f1fbcd531c646bd2304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:d87053a0c6b2770007ed72ec3e7cd8e339400c456e5d8578fe79e85cd3c0d5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19665657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5980452df2ad1ada4700735b9f257ebc14870d04f1b31b9677c8268aa83f671f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 01:17:53 GMT
COPY file:2c486c38ec9954ced252ae97aeabebd00fb3d5680694957ce056f53c25199179 in / 
# Tue, 04 Dec 2018 01:17:54 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:18:08 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 01:18:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 01:18:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c2f7e0d3bff46a37eb18b33c51a7a4bc8508ee81e4ebd140720705728eea06`  
		Last Modified: Tue, 04 Dec 2018 01:19:41 GMT  
		Size: 19.5 MB (19530620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:09167b30cc58738b6d5b5d79da4957c0072255583248170a8abcd2dfa5cab24c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18470924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b94759c4a4379ef8f5037da8c8d9b3756041d4914fe6d50206058a844bd6be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 09:10:10 GMT
COPY file:bed88bf0ad32be778683acf04bbfd0cb70a1364513f1110e71e15518e0d0c1ed in / 
# Tue, 04 Dec 2018 09:10:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:11 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 09:10:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 09:10:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb5924b23ef9cb31d75f63813bbb9f78f87bbf945f5dd096fcb6975dbc60f26`  
		Last Modified: Tue, 04 Dec 2018 09:10:44 GMT  
		Size: 18.3 MB (18335846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.5`

```console
$ docker pull traefik@sha256:4f6128e447e8cdfc3e6add19d6176449bde30d0cf70a5f1fbcd531c646bd2304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.5` - linux; amd64

```console
$ docker pull traefik@sha256:d87053a0c6b2770007ed72ec3e7cd8e339400c456e5d8578fe79e85cd3c0d5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19665657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5980452df2ad1ada4700735b9f257ebc14870d04f1b31b9677c8268aa83f671f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 01:17:53 GMT
COPY file:2c486c38ec9954ced252ae97aeabebd00fb3d5680694957ce056f53c25199179 in / 
# Tue, 04 Dec 2018 01:17:54 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:18:08 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 01:18:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 01:18:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c2f7e0d3bff46a37eb18b33c51a7a4bc8508ee81e4ebd140720705728eea06`  
		Last Modified: Tue, 04 Dec 2018 01:19:41 GMT  
		Size: 19.5 MB (19530620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:09167b30cc58738b6d5b5d79da4957c0072255583248170a8abcd2dfa5cab24c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18470924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b94759c4a4379ef8f5037da8c8d9b3756041d4914fe6d50206058a844bd6be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 09:10:10 GMT
COPY file:bed88bf0ad32be778683acf04bbfd0cb70a1364513f1110e71e15518e0d0c1ed in / 
# Tue, 04 Dec 2018 09:10:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:11 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 09:10:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 09:10:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb5924b23ef9cb31d75f63813bbb9f78f87bbf945f5dd096fcb6975dbc60f26`  
		Last Modified: Tue, 04 Dec 2018 09:10:44 GMT  
		Size: 18.3 MB (18335846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.5-alpine`

```console
$ docker pull traefik@sha256:f38e0bde019225745188a13607ac04726d9ed17dc717fa3e8e22026ef0fd11d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c77e1743c66dc3939c9d38d79238d0211426d0b3d9ab90afd7aeffa7025ef3c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22046849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990385f35a14b309e02b7078c798c6680bbf5b24ad38e244f3ceaddc57c8194f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 01:18:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 01:19:10 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 01:19:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 01:19:11 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 01:19:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b53d941771778747140beb7f6fd90261c6bef9748b4bdda8184000b1b5de233`  
		Last Modified: Tue, 04 Dec 2018 01:22:01 GMT  
		Size: 19.5 MB (19530616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a62d94db1f5044347231e75cfd951be55e14987424391b243b880db2d7057`  
		Last Modified: Tue, 04 Dec 2018 01:21:56 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fab1798c7ec690e0e89ee71b9c2e7d39e2dfed613f66273e6d54083abe68acb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4429ec35756e9105204ae3f9ed76a0909cfee4b519cfe73024dfbc9d8a6c8e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 09:10:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 09:10:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 09:10:25 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 09:10:26 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 09:10:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0d7394b704264a940cac126f93461f1c79791daf177afcba4d333696967460`  
		Last Modified: Tue, 04 Dec 2018 09:11:15 GMT  
		Size: 18.3 MB (18336103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580132669f27c2b4c56f2a63bae7acff5b2e51ff3672ee453df076581d12b8e3`  
		Last Modified: Tue, 04 Dec 2018 09:11:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.5-nanoserver`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.5-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.5-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.5-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:f38e0bde019225745188a13607ac04726d9ed17dc717fa3e8e22026ef0fd11d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c77e1743c66dc3939c9d38d79238d0211426d0b3d9ab90afd7aeffa7025ef3c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22046849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990385f35a14b309e02b7078c798c6680bbf5b24ad38e244f3ceaddc57c8194f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 01:18:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 01:19:10 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 01:19:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 01:19:11 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 01:19:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b53d941771778747140beb7f6fd90261c6bef9748b4bdda8184000b1b5de233`  
		Last Modified: Tue, 04 Dec 2018 01:22:01 GMT  
		Size: 19.5 MB (19530616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a62d94db1f5044347231e75cfd951be55e14987424391b243b880db2d7057`  
		Last Modified: Tue, 04 Dec 2018 01:21:56 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fab1798c7ec690e0e89ee71b9c2e7d39e2dfed613f66273e6d54083abe68acb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4429ec35756e9105204ae3f9ed76a0909cfee4b519cfe73024dfbc9d8a6c8e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 09:10:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 09:10:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 09:10:25 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 09:10:26 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 09:10:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0d7394b704264a940cac126f93461f1c79791daf177afcba4d333696967460`  
		Last Modified: Tue, 04 Dec 2018 09:11:15 GMT  
		Size: 18.3 MB (18336103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580132669f27c2b4c56f2a63bae7acff5b2e51ff3672ee453df076581d12b8e3`  
		Last Modified: Tue, 04 Dec 2018 09:11:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:f38e0bde019225745188a13607ac04726d9ed17dc717fa3e8e22026ef0fd11d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c77e1743c66dc3939c9d38d79238d0211426d0b3d9ab90afd7aeffa7025ef3c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22046849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990385f35a14b309e02b7078c798c6680bbf5b24ad38e244f3ceaddc57c8194f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 01:18:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 01:19:10 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 01:19:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 01:19:11 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 01:19:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b53d941771778747140beb7f6fd90261c6bef9748b4bdda8184000b1b5de233`  
		Last Modified: Tue, 04 Dec 2018 01:22:01 GMT  
		Size: 19.5 MB (19530616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a62d94db1f5044347231e75cfd951be55e14987424391b243b880db2d7057`  
		Last Modified: Tue, 04 Dec 2018 01:21:56 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fab1798c7ec690e0e89ee71b9c2e7d39e2dfed613f66273e6d54083abe68acb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4429ec35756e9105204ae3f9ed76a0909cfee4b519cfe73024dfbc9d8a6c8e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 09:10:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 09:10:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 09:10:25 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 09:10:26 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 09:10:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0d7394b704264a940cac126f93461f1c79791daf177afcba4d333696967460`  
		Last Modified: Tue, 04 Dec 2018 09:11:15 GMT  
		Size: 18.3 MB (18336103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580132669f27c2b4c56f2a63bae7acff5b2e51ff3672ee453df076581d12b8e3`  
		Last Modified: Tue, 04 Dec 2018 09:11:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:4f6128e447e8cdfc3e6add19d6176449bde30d0cf70a5f1fbcd531c646bd2304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:d87053a0c6b2770007ed72ec3e7cd8e339400c456e5d8578fe79e85cd3c0d5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19665657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5980452df2ad1ada4700735b9f257ebc14870d04f1b31b9677c8268aa83f671f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 01:17:53 GMT
COPY file:2c486c38ec9954ced252ae97aeabebd00fb3d5680694957ce056f53c25199179 in / 
# Tue, 04 Dec 2018 01:17:54 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:18:08 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 01:18:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 01:18:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c2f7e0d3bff46a37eb18b33c51a7a4bc8508ee81e4ebd140720705728eea06`  
		Last Modified: Tue, 04 Dec 2018 01:19:41 GMT  
		Size: 19.5 MB (19530620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:09167b30cc58738b6d5b5d79da4957c0072255583248170a8abcd2dfa5cab24c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18470924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b94759c4a4379ef8f5037da8c8d9b3756041d4914fe6d50206058a844bd6be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 09:10:10 GMT
COPY file:bed88bf0ad32be778683acf04bbfd0cb70a1364513f1110e71e15518e0d0c1ed in / 
# Tue, 04 Dec 2018 09:10:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:11 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 09:10:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 09:10:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb5924b23ef9cb31d75f63813bbb9f78f87bbf945f5dd096fcb6975dbc60f26`  
		Last Modified: Tue, 04 Dec 2018 09:10:44 GMT  
		Size: 18.3 MB (18335846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:4f6128e447e8cdfc3e6add19d6176449bde30d0cf70a5f1fbcd531c646bd2304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:d87053a0c6b2770007ed72ec3e7cd8e339400c456e5d8578fe79e85cd3c0d5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19665657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5980452df2ad1ada4700735b9f257ebc14870d04f1b31b9677c8268aa83f671f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 01:17:53 GMT
COPY file:2c486c38ec9954ced252ae97aeabebd00fb3d5680694957ce056f53c25199179 in / 
# Tue, 04 Dec 2018 01:17:54 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:18:08 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 01:18:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 01:18:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c2f7e0d3bff46a37eb18b33c51a7a4bc8508ee81e4ebd140720705728eea06`  
		Last Modified: Tue, 04 Dec 2018 01:19:41 GMT  
		Size: 19.5 MB (19530620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:09167b30cc58738b6d5b5d79da4957c0072255583248170a8abcd2dfa5cab24c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18470924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b94759c4a4379ef8f5037da8c8d9b3756041d4914fe6d50206058a844bd6be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 09:10:10 GMT
COPY file:bed88bf0ad32be778683acf04bbfd0cb70a1364513f1110e71e15518e0d0c1ed in / 
# Tue, 04 Dec 2018 09:10:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:11 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 09:10:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 09:10:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb5924b23ef9cb31d75f63813bbb9f78f87bbf945f5dd096fcb6975dbc60f26`  
		Last Modified: Tue, 04 Dec 2018 09:10:44 GMT  
		Size: 18.3 MB (18335846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:f38e0bde019225745188a13607ac04726d9ed17dc717fa3e8e22026ef0fd11d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c77e1743c66dc3939c9d38d79238d0211426d0b3d9ab90afd7aeffa7025ef3c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22046849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990385f35a14b309e02b7078c798c6680bbf5b24ad38e244f3ceaddc57c8194f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 01:18:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 01:19:10 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 01:19:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 01:19:11 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 01:19:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b53d941771778747140beb7f6fd90261c6bef9748b4bdda8184000b1b5de233`  
		Last Modified: Tue, 04 Dec 2018 01:22:01 GMT  
		Size: 19.5 MB (19530616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a62d94db1f5044347231e75cfd951be55e14987424391b243b880db2d7057`  
		Last Modified: Tue, 04 Dec 2018 01:21:56 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fab1798c7ec690e0e89ee71b9c2e7d39e2dfed613f66273e6d54083abe68acb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4429ec35756e9105204ae3f9ed76a0909cfee4b519cfe73024dfbc9d8a6c8e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 09:10:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 09:10:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 09:10:25 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 09:10:26 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 09:10:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0d7394b704264a940cac126f93461f1c79791daf177afcba4d333696967460`  
		Last Modified: Tue, 04 Dec 2018 09:11:15 GMT  
		Size: 18.3 MB (18336103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580132669f27c2b4c56f2a63bae7acff5b2e51ff3672ee453df076581d12b8e3`  
		Last Modified: Tue, 04 Dec 2018 09:11:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:4f6128e447e8cdfc3e6add19d6176449bde30d0cf70a5f1fbcd531c646bd2304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:d87053a0c6b2770007ed72ec3e7cd8e339400c456e5d8578fe79e85cd3c0d5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19665657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5980452df2ad1ada4700735b9f257ebc14870d04f1b31b9677c8268aa83f671f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 01:17:53 GMT
COPY file:2c486c38ec9954ced252ae97aeabebd00fb3d5680694957ce056f53c25199179 in / 
# Tue, 04 Dec 2018 01:17:54 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:18:08 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 01:18:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 01:18:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c2f7e0d3bff46a37eb18b33c51a7a4bc8508ee81e4ebd140720705728eea06`  
		Last Modified: Tue, 04 Dec 2018 01:19:41 GMT  
		Size: 19.5 MB (19530620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:09167b30cc58738b6d5b5d79da4957c0072255583248170a8abcd2dfa5cab24c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18470924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b94759c4a4379ef8f5037da8c8d9b3756041d4914fe6d50206058a844bd6be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 09:10:10 GMT
COPY file:bed88bf0ad32be778683acf04bbfd0cb70a1364513f1110e71e15518e0d0c1ed in / 
# Tue, 04 Dec 2018 09:10:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:11 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 09:10:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 09:10:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb5924b23ef9cb31d75f63813bbb9f78f87bbf945f5dd096fcb6975dbc60f26`  
		Last Modified: Tue, 04 Dec 2018 09:10:44 GMT  
		Size: 18.3 MB (18335846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.5`

```console
$ docker pull traefik@sha256:4f6128e447e8cdfc3e6add19d6176449bde30d0cf70a5f1fbcd531c646bd2304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.5` - linux; amd64

```console
$ docker pull traefik@sha256:d87053a0c6b2770007ed72ec3e7cd8e339400c456e5d8578fe79e85cd3c0d5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19665657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5980452df2ad1ada4700735b9f257ebc14870d04f1b31b9677c8268aa83f671f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 01:17:53 GMT
COPY file:2c486c38ec9954ced252ae97aeabebd00fb3d5680694957ce056f53c25199179 in / 
# Tue, 04 Dec 2018 01:17:54 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:18:08 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 01:18:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 01:18:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c2f7e0d3bff46a37eb18b33c51a7a4bc8508ee81e4ebd140720705728eea06`  
		Last Modified: Tue, 04 Dec 2018 01:19:41 GMT  
		Size: 19.5 MB (19530620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:09167b30cc58738b6d5b5d79da4957c0072255583248170a8abcd2dfa5cab24c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18470924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b94759c4a4379ef8f5037da8c8d9b3756041d4914fe6d50206058a844bd6be`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 04 Dec 2018 09:10:10 GMT
COPY file:bed88bf0ad32be778683acf04bbfd0cb70a1364513f1110e71e15518e0d0c1ed in / 
# Tue, 04 Dec 2018 09:10:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:11 GMT
VOLUME [/tmp]
# Tue, 04 Dec 2018 09:10:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 09:10:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb5924b23ef9cb31d75f63813bbb9f78f87bbf945f5dd096fcb6975dbc60f26`  
		Last Modified: Tue, 04 Dec 2018 09:10:44 GMT  
		Size: 18.3 MB (18335846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.5-alpine`

```console
$ docker pull traefik@sha256:f38e0bde019225745188a13607ac04726d9ed17dc717fa3e8e22026ef0fd11d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c77e1743c66dc3939c9d38d79238d0211426d0b3d9ab90afd7aeffa7025ef3c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22046849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990385f35a14b309e02b7078c798c6680bbf5b24ad38e244f3ceaddc57c8194f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 01:18:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 01:19:10 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 01:19:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 01:19:11 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 01:19:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b53d941771778747140beb7f6fd90261c6bef9748b4bdda8184000b1b5de233`  
		Last Modified: Tue, 04 Dec 2018 01:22:01 GMT  
		Size: 19.5 MB (19530616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a62d94db1f5044347231e75cfd951be55e14987424391b243b880db2d7057`  
		Last Modified: Tue, 04 Dec 2018 01:21:56 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fab1798c7ec690e0e89ee71b9c2e7d39e2dfed613f66273e6d54083abe68acb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4429ec35756e9105204ae3f9ed76a0909cfee4b519cfe73024dfbc9d8a6c8e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 09:10:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 09:10:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 09:10:25 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 09:10:26 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 09:10:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0d7394b704264a940cac126f93461f1c79791daf177afcba4d333696967460`  
		Last Modified: Tue, 04 Dec 2018 09:11:15 GMT  
		Size: 18.3 MB (18336103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580132669f27c2b4c56f2a63bae7acff5b2e51ff3672ee453df076581d12b8e3`  
		Last Modified: Tue, 04 Dec 2018 09:11:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.5-nanoserver`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.5-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.5-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.5-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:f38e0bde019225745188a13607ac04726d9ed17dc717fa3e8e22026ef0fd11d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c77e1743c66dc3939c9d38d79238d0211426d0b3d9ab90afd7aeffa7025ef3c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22046849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990385f35a14b309e02b7078c798c6680bbf5b24ad38e244f3ceaddc57c8194f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:55 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 01:18:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 01:19:10 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 01:19:10 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 01:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 01:19:11 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 01:19:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9593d002f462333c2d2b049c0e43267d2f25e7031617d7951e483cfe6fceef`  
		Last Modified: Wed, 12 Sep 2018 03:38:22 GMT  
		Size: 309.0 KB (308983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b53d941771778747140beb7f6fd90261c6bef9748b4bdda8184000b1b5de233`  
		Last Modified: Tue, 04 Dec 2018 01:22:01 GMT  
		Size: 19.5 MB (19530616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a62d94db1f5044347231e75cfd951be55e14987424391b243b880db2d7057`  
		Last Modified: Tue, 04 Dec 2018 01:21:56 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fab1798c7ec690e0e89ee71b9c2e7d39e2dfed613f66273e6d54083abe68acb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20792117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4429ec35756e9105204ae3f9ed76a0909cfee4b519cfe73024dfbc9d8a6c8e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:31:22 GMT
RUN apk --no-cache add ca-certificates
# Tue, 04 Dec 2018 09:10:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.5/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 04 Dec 2018 09:10:25 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Tue, 04 Dec 2018 09:10:25 GMT
EXPOSE 80/tcp
# Tue, 04 Dec 2018 09:10:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 09:10:26 GMT
CMD ["traefik"]
# Tue, 04 Dec 2018 09:10:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a65db53aaa0cc4ab0232b1e179456b46fe0f6c04a77b387b9d4bdc2efd62c9`  
		Last Modified: Wed, 12 Sep 2018 08:31:52 GMT  
		Size: 309.1 KB (309068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0d7394b704264a940cac126f93461f1c79791daf177afcba4d333696967460`  
		Last Modified: Tue, 04 Dec 2018 09:11:15 GMT  
		Size: 18.3 MB (18336103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580132669f27c2b4c56f2a63bae7acff5b2e51ff3672ee453df076581d12b8e3`  
		Last Modified: Tue, 04 Dec 2018 09:11:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e8c6c34636fde2cead8d712ff8afad3a6b9ee44685b5971efd5d1370f4f78eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:54bba98ce5352d3523c04555111821a65c27a149401341a0d1fed79cf5ff0a3a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (454950357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe027acc1facc2930b0660ba76a62d4677ee642af9805745a40e9fb71d1913`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 04 Dec 2018 10:16:43 GMT
RUN cmd /S /C #(nop) COPY file:a020f2015bcfe8c58f54f0be98dbc5eaaf41b97e0ba0d76bd25f3470f6942341 in \traefik.exe 
# Tue, 04 Dec 2018 10:16:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 04 Dec 2018 10:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 04 Dec 2018 10:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:93180f9771c7bbc5c7e0f4183599cb66a97e5ea822aad145831cc1c5db03212d`  
		Last Modified: Tue, 04 Dec 2018 10:17:11 GMT  
		Size: 19.6 MB (19550696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f7ce1d4b56c64a46c72903f0d35f3ed8d4c7a80fd4e3faf55ebd9b06e7731`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2f75277397e9b442d2667789f81f372c12ebcb5d52910a8b8be7185dfd9019`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359cffbd679067270c5c8de03dc27c42278090f6580cd9c005cf196cb6e3acd`  
		Last Modified: Tue, 04 Dec 2018 10:17:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
