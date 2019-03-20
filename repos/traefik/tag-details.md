<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.9`](#traefik179)
-	[`traefik:1.7.9-alpine`](#traefik179-alpine)
-	[`traefik:1.7.9-nanoserver`](#traefik179-nanoserver)
-	[`traefik:1.7.9-nanoserver-sac2016`](#traefik179-nanoserver-sac2016)
-	[`traefik:1.7-alpine`](#traefik17-alpine)
-	[`traefik:1.7-nanoserver`](#traefik17-nanoserver)
-	[`traefik:1.7-nanoserver-sac2016`](#traefik17-nanoserver-sac2016)
-	[`traefik:2.0`](#traefik20)
-	[`traefik:2.0.0-alpha2`](#traefik200-alpha2)
-	[`traefik:2.0.0-alpha2-alpine`](#traefik200-alpha2-alpine)
-	[`traefik:2.0.0-alpha2-nanoserver`](#traefik200-alpha2-nanoserver)
-	[`traefik:2.0.0-alpha2-nanoserver-sac2016`](#traefik200-alpha2-nanoserver-sac2016)
-	[`traefik:2.0-alpine`](#traefik20-alpine)
-	[`traefik:2.0-nanoserver`](#traefik20-nanoserver)
-	[`traefik:2.0-nanoserver-sac2016`](#traefik20-nanoserver-sac2016)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:faisselle`](#traefikfaisselle)
-	[`traefik:faisselle-alpine`](#traefikfaisselle-alpine)
-	[`traefik:faisselle-nanoserver`](#traefikfaisselle-nanoserver)
-	[`traefik:faisselle-nanoserver-sac2016`](#traefikfaisselle-nanoserver-sac2016)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:maroilles`](#traefikmaroilles)
-	[`traefik:maroilles-alpine`](#traefikmaroilles-alpine)
-	[`traefik:maroilles-nanoserver`](#traefikmaroilles-nanoserver)
-	[`traefik:maroilles-nanoserver-sac2016`](#traefikmaroilles-nanoserver-sac2016)
-	[`traefik:nanoserver`](#traefiknanoserver)
-	[`traefik:nanoserver-sac2016`](#traefiknanoserver-sac2016)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.9`](#traefikv179)
-	[`traefik:v1.7.9-alpine`](#traefikv179-alpine)
-	[`traefik:v1.7.9-nanoserver`](#traefikv179-nanoserver)
-	[`traefik:v1.7.9-nanoserver-sac2016`](#traefikv179-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)
-	[`traefik:v2.0`](#traefikv20)
-	[`traefik:v2.0.0-alpha2`](#traefikv200-alpha2)
-	[`traefik:v2.0.0-alpha2-alpine`](#traefikv200-alpha2-alpine)
-	[`traefik:v2.0.0-alpha2-nanoserver`](#traefikv200-alpha2-nanoserver)
-	[`traefik:v2.0.0-alpha2-nanoserver-sac2016`](#traefikv200-alpha2-nanoserver-sac2016)
-	[`traefik:v2.0-alpine`](#traefikv20-alpine)
-	[`traefik:v2.0-nanoserver`](#traefikv20-nanoserver)
-	[`traefik:v2.0-nanoserver-sac2016`](#traefikv20-nanoserver-sac2016)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:6348d14975b683a2783cc8dbaa76efe5367a1d67bd3e9e2ee812da7da012224b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:c801a5ee540f24a08397b92c62d82541f05e872acde052e7ad6ceb68c36c62d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19943303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98768a8bf3fed22fc50cd21c3e5c93240d994d6231ce1cf3fbaa0643a27562ab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 12 Feb 2019 21:58:02 GMT
COPY file:50a45dea242dcb99fede841b4e860404160afd02d2a0760882e8776672be2ff7 in / 
# Tue, 12 Feb 2019 21:58:02 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:02 GMT
VOLUME [/tmp]
# Tue, 12 Feb 2019 21:58:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 12 Feb 2019 21:58:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d759fcb7fc9bad9aa7e46760e1c303bd03a643a4ad436cfb0c2108183354f541`  
		Last Modified: Tue, 12 Feb 2019 21:58:25 GMT  
		Size: 19.8 MB (19808260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6ee17c22d75757e4f7e0dd7f77ffe59402fe93d82959e11be909cf20414fe7b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18730211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676baac154713572f4dbbcb86eaf1f0400a4d37d941c514a2a053e7f54be0f2c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 09:17:41 GMT
COPY file:17b85a6e3edde98a246126d651c138624134e0b8258c8c6af348b4a027e1f3b0 in / 
# Wed, 13 Feb 2019 09:17:42 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:42 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 09:17:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 09:17:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0f8727fc34ce66f5bea1c5a8a00154b7224e7abbfe85be277a32954d5cd2e6`  
		Last Modified: Wed, 13 Feb 2019 09:18:15 GMT  
		Size: 18.6 MB (18595173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:917444e807edd21cb02a979e7d805391c5f6edfc3c02b393f0cc70f84e19578f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18288856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f43a0cc585e85e7996059da02bca222d51d196f2e82e09fb1fa0c70204f20`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 13:18:22 GMT
COPY file:d6cea6d36dd3def2b9353e4e79d6170abad6ba1943479c8c17cd96e86a48c140 in / 
# Wed, 13 Feb 2019 13:18:23 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:24 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 13:18:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:18:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c241b0d66a69b3ec102f32817f86914bf0107a8a378fd6da3d26b3ca2e0cb45`  
		Last Modified: Wed, 13 Feb 2019 13:19:09 GMT  
		Size: 18.2 MB (18153820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.9`

```console
$ docker pull traefik@sha256:6348d14975b683a2783cc8dbaa76efe5367a1d67bd3e9e2ee812da7da012224b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.9` - linux; amd64

```console
$ docker pull traefik@sha256:c801a5ee540f24a08397b92c62d82541f05e872acde052e7ad6ceb68c36c62d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19943303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98768a8bf3fed22fc50cd21c3e5c93240d994d6231ce1cf3fbaa0643a27562ab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 12 Feb 2019 21:58:02 GMT
COPY file:50a45dea242dcb99fede841b4e860404160afd02d2a0760882e8776672be2ff7 in / 
# Tue, 12 Feb 2019 21:58:02 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:02 GMT
VOLUME [/tmp]
# Tue, 12 Feb 2019 21:58:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 12 Feb 2019 21:58:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d759fcb7fc9bad9aa7e46760e1c303bd03a643a4ad436cfb0c2108183354f541`  
		Last Modified: Tue, 12 Feb 2019 21:58:25 GMT  
		Size: 19.8 MB (19808260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.9` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6ee17c22d75757e4f7e0dd7f77ffe59402fe93d82959e11be909cf20414fe7b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18730211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676baac154713572f4dbbcb86eaf1f0400a4d37d941c514a2a053e7f54be0f2c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 09:17:41 GMT
COPY file:17b85a6e3edde98a246126d651c138624134e0b8258c8c6af348b4a027e1f3b0 in / 
# Wed, 13 Feb 2019 09:17:42 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:42 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 09:17:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 09:17:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0f8727fc34ce66f5bea1c5a8a00154b7224e7abbfe85be277a32954d5cd2e6`  
		Last Modified: Wed, 13 Feb 2019 09:18:15 GMT  
		Size: 18.6 MB (18595173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.9` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:917444e807edd21cb02a979e7d805391c5f6edfc3c02b393f0cc70f84e19578f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18288856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f43a0cc585e85e7996059da02bca222d51d196f2e82e09fb1fa0c70204f20`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 13:18:22 GMT
COPY file:d6cea6d36dd3def2b9353e4e79d6170abad6ba1943479c8c17cd96e86a48c140 in / 
# Wed, 13 Feb 2019 13:18:23 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:24 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 13:18:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:18:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c241b0d66a69b3ec102f32817f86914bf0107a8a378fd6da3d26b3ca2e0cb45`  
		Last Modified: Wed, 13 Feb 2019 13:19:09 GMT  
		Size: 18.2 MB (18153820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.9-alpine`

```console
$ docker pull traefik@sha256:55c0d005fb9292091a00e1cfad0a23eef043d85b74980d9bc8466f602837f858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.9-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5c2449c2b67a7472b813744273e37e7be226f737d3f9f3afaca3427b6ac1a3fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a4798bf02ca4bcaea6da4c843dbfc7a3009981c07d7313d2d095f390074121`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:03:38 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:03:40 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:03:41 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:03:41 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:03:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:41 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:03:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c2ce8cd8042e67b10b3c192426543e697234a88c140c9848357fa4e878407e`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3c9241eb849698d75f08937ce58b0a63924712435f17566d2b700412f10349`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 19.8 MB (19808273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6896473f359f93af9e5dc3a5d7bc3997b492e85d7708f1cddc9829a52c07b25`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.9-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e6b1bc6249210dd0a8c664b0ef238cd10ad210253c10814f0339a3f94e6d976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fa05fe84bff3c885c77b2ec1434f067aa0596d7195f65a665c79789ffe1c44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:03 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:39:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:39:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:39:09 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:39:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:39:10 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:39:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba65bf488489c8bbe96a8499012391bdb2abece647546b294eedb3bd845938`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 309.2 KB (309244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bb31e20cfd1d0c2d10d9c39325124424b3fc966342f4be3d491712fd6cffc2`  
		Last Modified: Fri, 08 Mar 2019 04:39:31 GMT  
		Size: 18.6 MB (18595224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8021281140489bdfd99c7a68e0f4ad5a41f1cd4b0fca8f90e0830062a5b2dcd4`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.9-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b8154bf9c5b8feeff33259258398205e5cbc585b14c1bcc3959209ae0d659fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **20.6 MB (20562674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `18dc31b7831585d9cee12aa787baabbd928381e46e833f4b9488a0c1af77a06e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:14:09 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 12:14:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 12:14:20 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 12:14:21 GMT
EXPOSE 80
# Fri, 08 Mar 2019 12:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:22 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 12:14:23 GMT
RUN ["\/bin\/sh","-c","#(nop) ","LABEL org.label-schema.vendor=Containous org.label-schema.url=https:\/\/traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:ad679f272f5891392085f8c80f62a3e85b200d0df26098dd6205e43b47788aaf`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 322.0 B  
		MIME: application/octet-stream
	-	`sha256:9fd154df784594ff40300295f5eec597f69c2ad81d47eaa9983b66eefa0ee7ca`  
		Last Modified: Fri, 08 Mar 2019 12:14:48 GMT  
		Size: 18.2 MB (18153680 bytes)  
		MIME: application/octet-stream
	-	`sha256:e2d46331cc9f552c83f97b410c3c45d9bb11ab6c488eeb33d4b90aa0acf77059`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 308.7 KB (308678 bytes)  
		MIME: application/octet-stream
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/octet-stream

## `traefik:1.7.9-nanoserver`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.9-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.9-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7.9-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:55c0d005fb9292091a00e1cfad0a23eef043d85b74980d9bc8466f602837f858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5c2449c2b67a7472b813744273e37e7be226f737d3f9f3afaca3427b6ac1a3fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a4798bf02ca4bcaea6da4c843dbfc7a3009981c07d7313d2d095f390074121`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:03:38 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:03:40 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:03:41 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:03:41 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:03:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:41 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:03:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c2ce8cd8042e67b10b3c192426543e697234a88c140c9848357fa4e878407e`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3c9241eb849698d75f08937ce58b0a63924712435f17566d2b700412f10349`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 19.8 MB (19808273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6896473f359f93af9e5dc3a5d7bc3997b492e85d7708f1cddc9829a52c07b25`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e6b1bc6249210dd0a8c664b0ef238cd10ad210253c10814f0339a3f94e6d976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fa05fe84bff3c885c77b2ec1434f067aa0596d7195f65a665c79789ffe1c44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:03 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:39:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:39:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:39:09 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:39:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:39:10 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:39:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba65bf488489c8bbe96a8499012391bdb2abece647546b294eedb3bd845938`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 309.2 KB (309244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bb31e20cfd1d0c2d10d9c39325124424b3fc966342f4be3d491712fd6cffc2`  
		Last Modified: Fri, 08 Mar 2019 04:39:31 GMT  
		Size: 18.6 MB (18595224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8021281140489bdfd99c7a68e0f4ad5a41f1cd4b0fca8f90e0830062a5b2dcd4`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b8154bf9c5b8feeff33259258398205e5cbc585b14c1bcc3959209ae0d659fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **20.6 MB (20562674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `18dc31b7831585d9cee12aa787baabbd928381e46e833f4b9488a0c1af77a06e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:14:09 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 12:14:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 12:14:20 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 12:14:21 GMT
EXPOSE 80
# Fri, 08 Mar 2019 12:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:22 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 12:14:23 GMT
RUN ["\/bin\/sh","-c","#(nop) ","LABEL org.label-schema.vendor=Containous org.label-schema.url=https:\/\/traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:ad679f272f5891392085f8c80f62a3e85b200d0df26098dd6205e43b47788aaf`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 322.0 B  
		MIME: application/octet-stream
	-	`sha256:9fd154df784594ff40300295f5eec597f69c2ad81d47eaa9983b66eefa0ee7ca`  
		Last Modified: Fri, 08 Mar 2019 12:14:48 GMT  
		Size: 18.2 MB (18153680 bytes)  
		MIME: application/octet-stream
	-	`sha256:e2d46331cc9f552c83f97b410c3c45d9bb11ab6c488eeb33d4b90aa0acf77059`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 308.7 KB (308678 bytes)  
		MIME: application/octet-stream
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/octet-stream

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0`

```console
$ docker pull traefik@sha256:abd7f3d6a5c0ccf600699a3f237e95d8a581774bb9bf9ed535a4d51d4f18701a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0` - linux; amd64

```console
$ docker pull traefik@sha256:d1b6870bf1a7c4f85ebb5bd1bbdbe82fbb6709c2721b90d1cd3396fbccd250c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17364314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f634816a536aadcef24be2165cb02557d651cc9a98c266d4b50c17ceeb3218`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:5d781ba0287ba20eeb6f28ae7bc1c096ebb81679c94f9af1040ccbbe349e5747 in / 
# Tue, 19 Mar 2019 21:34:26 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:27 GMT
VOLUME [/tmp]
# Tue, 19 Mar 2019 21:34:27 GMT
ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 21:34:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e38e6210e163695fdf9ad1448fd934b75b8659cc75c2a1f4281ca838187c7e`  
		Last Modified: Tue, 19 Mar 2019 21:35:10 GMT  
		Size: 17.2 MB (17232292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6762478eaffe9d4a8c1f44f07d31ab527ec1b192abbff79006ec76e676eac656
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16251267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcea16f8535023c2321d7bee16b1298a63d477822bc38e5f91280eda4be7e1d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 08:11:09 GMT
COPY file:8df50cb371169ceab7bc725cfc1bdb1eb432167a4e9b675dbddb7db388a6eee8 in / 
# Wed, 20 Mar 2019 08:11:10 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:10 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 08:11:11 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 08:11:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d787045f843797d15b4439878306a3783d052a9ed8c7048756905e36f0e61985`  
		Last Modified: Wed, 20 Mar 2019 08:11:56 GMT  
		Size: 16.1 MB (16119245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:04ec6908573a6d4e9420db821d4305d09b3cdcaf15799483a561c23b35f7b56a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75f9ebf2966b7dec236a5788be50561af5297fa238e7a15ba75f3799038ffff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 10:26:03 GMT
COPY file:1ad14eab219a07804e8cce8e0e36c8ae656fc597af9bc9ffc28c2859874e51bb in / 
# Wed, 20 Mar 2019 10:26:03 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:04 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 10:26:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 10:26:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29afd21933d8b959bb174a0735f28b9b9a2e85f9ed7788a554888eca7afa807d`  
		Last Modified: Wed, 20 Mar 2019 10:27:41 GMT  
		Size: 15.8 MB (15848685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha2`

```console
$ docker pull traefik@sha256:abd7f3d6a5c0ccf600699a3f237e95d8a581774bb9bf9ed535a4d51d4f18701a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha2` - linux; amd64

```console
$ docker pull traefik@sha256:d1b6870bf1a7c4f85ebb5bd1bbdbe82fbb6709c2721b90d1cd3396fbccd250c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17364314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f634816a536aadcef24be2165cb02557d651cc9a98c266d4b50c17ceeb3218`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:5d781ba0287ba20eeb6f28ae7bc1c096ebb81679c94f9af1040ccbbe349e5747 in / 
# Tue, 19 Mar 2019 21:34:26 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:27 GMT
VOLUME [/tmp]
# Tue, 19 Mar 2019 21:34:27 GMT
ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 21:34:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e38e6210e163695fdf9ad1448fd934b75b8659cc75c2a1f4281ca838187c7e`  
		Last Modified: Tue, 19 Mar 2019 21:35:10 GMT  
		Size: 17.2 MB (17232292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6762478eaffe9d4a8c1f44f07d31ab527ec1b192abbff79006ec76e676eac656
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16251267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcea16f8535023c2321d7bee16b1298a63d477822bc38e5f91280eda4be7e1d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 08:11:09 GMT
COPY file:8df50cb371169ceab7bc725cfc1bdb1eb432167a4e9b675dbddb7db388a6eee8 in / 
# Wed, 20 Mar 2019 08:11:10 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:10 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 08:11:11 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 08:11:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d787045f843797d15b4439878306a3783d052a9ed8c7048756905e36f0e61985`  
		Last Modified: Wed, 20 Mar 2019 08:11:56 GMT  
		Size: 16.1 MB (16119245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha2` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:04ec6908573a6d4e9420db821d4305d09b3cdcaf15799483a561c23b35f7b56a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75f9ebf2966b7dec236a5788be50561af5297fa238e7a15ba75f3799038ffff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 10:26:03 GMT
COPY file:1ad14eab219a07804e8cce8e0e36c8ae656fc597af9bc9ffc28c2859874e51bb in / 
# Wed, 20 Mar 2019 10:26:03 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:04 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 10:26:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 10:26:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29afd21933d8b959bb174a0735f28b9b9a2e85f9ed7788a554888eca7afa807d`  
		Last Modified: Wed, 20 Mar 2019 10:27:41 GMT  
		Size: 15.8 MB (15848685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha2-alpine`

```console
$ docker pull traefik@sha256:5c5c3a43591259af3ea64b51145db21f62614478d58ae1802d69fd5968b6f9af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0.0-alpha2-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b31bcb3da5c15bf316bbd4313d7807fa12eae33d9caa08105bde847f1aaab4e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf96cd141e98e72bc529ba50f5b8ecdeed360b1c01f92859b31a26998ce98fc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Tue, 19 Mar 2019 21:34:34 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 19 Mar 2019 21:34:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 19 Mar 2019 21:34:37 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 19 Mar 2019 21:34:37 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Mar 2019 21:34:38 GMT
CMD ["traefik"]
# Tue, 19 Mar 2019 21:34:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da730c0fd9c0e8b204f2894f8ab1293199077d88c42212eb16ae90e49e567e56`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 695.6 KB (695639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25079ef375e646c2467d2f59d70e35466cea5b8cbfae0f45b5bab43001a593bf`  
		Last Modified: Tue, 19 Mar 2019 21:35:18 GMT  
		Size: 17.2 MB (17232427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce634305937fac4f1cac91c7d6f417e9a2ad348be01e0c3430a083ae1ef36724`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha2-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c1e08e7439acee2e1cb1ee80384c7f5a36db67c1b1d62f8022594b4db3971683
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19358188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d49ef91c1ede430f3a4e07cd66515bc9d894ff4fed5c68791b7fb62a51f1702`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 08:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 08:11:25 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 08:11:25 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 08:11:26 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 08:11:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b814925ea262b38a3e962b1fb24509a485af2b900709d19f8c83b26b366e4c7`  
		Last Modified: Wed, 20 Mar 2019 08:12:10 GMT  
		Size: 16.1 MB (16119345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66c2660c43e788ff725dc182836bad32d3b5bf1743c563b62572fa1ce1c998b`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0.0-alpha2-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:bc928fa60f17b7934e2b8e6de1c7a38f224bf8c7701c65ea8a6514fdf0a41f78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19234805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a166876eb9946d971c7eda0c4afb0425385cbcd2c9a6f546a7c2f4302bf595`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 10:26:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 10:26:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 10:26:39 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 10:26:40 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 10:26:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaa947e95667ed012fcd91bc879273dba3927bdf9d164620ba870dc57dbd6df`  
		Last Modified: Wed, 20 Mar 2019 10:28:03 GMT  
		Size: 15.8 MB (15848825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fed4d7603bd90f3f3131c81b03bd1f89e5221553543b14ee10d4e15d2edb79b`  
		Last Modified: Wed, 20 Mar 2019 10:27:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0.0-alpha2-nanoserver`

**does not exist** (yet?)

## `traefik:2.0.0-alpha2-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:2.0-alpine`

```console
$ docker pull traefik@sha256:5c5c3a43591259af3ea64b51145db21f62614478d58ae1802d69fd5968b6f9af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b31bcb3da5c15bf316bbd4313d7807fa12eae33d9caa08105bde847f1aaab4e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf96cd141e98e72bc529ba50f5b8ecdeed360b1c01f92859b31a26998ce98fc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Tue, 19 Mar 2019 21:34:34 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 19 Mar 2019 21:34:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 19 Mar 2019 21:34:37 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 19 Mar 2019 21:34:37 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Mar 2019 21:34:38 GMT
CMD ["traefik"]
# Tue, 19 Mar 2019 21:34:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da730c0fd9c0e8b204f2894f8ab1293199077d88c42212eb16ae90e49e567e56`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 695.6 KB (695639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25079ef375e646c2467d2f59d70e35466cea5b8cbfae0f45b5bab43001a593bf`  
		Last Modified: Tue, 19 Mar 2019 21:35:18 GMT  
		Size: 17.2 MB (17232427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce634305937fac4f1cac91c7d6f417e9a2ad348be01e0c3430a083ae1ef36724`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c1e08e7439acee2e1cb1ee80384c7f5a36db67c1b1d62f8022594b4db3971683
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19358188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d49ef91c1ede430f3a4e07cd66515bc9d894ff4fed5c68791b7fb62a51f1702`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 08:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 08:11:25 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 08:11:25 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 08:11:26 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 08:11:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b814925ea262b38a3e962b1fb24509a485af2b900709d19f8c83b26b366e4c7`  
		Last Modified: Wed, 20 Mar 2019 08:12:10 GMT  
		Size: 16.1 MB (16119345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66c2660c43e788ff725dc182836bad32d3b5bf1743c563b62572fa1ce1c998b`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:bc928fa60f17b7934e2b8e6de1c7a38f224bf8c7701c65ea8a6514fdf0a41f78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19234805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a166876eb9946d971c7eda0c4afb0425385cbcd2c9a6f546a7c2f4302bf595`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 10:26:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 10:26:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 10:26:39 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 10:26:40 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 10:26:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaa947e95667ed012fcd91bc879273dba3927bdf9d164620ba870dc57dbd6df`  
		Last Modified: Wed, 20 Mar 2019 10:28:03 GMT  
		Size: 15.8 MB (15848825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fed4d7603bd90f3f3131c81b03bd1f89e5221553543b14ee10d4e15d2edb79b`  
		Last Modified: Wed, 20 Mar 2019 10:27:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver`

```console
$ docker pull traefik@sha256:c66a4b51da43af19c9e63af6e2a67e290a744476cb96e0103ab5a198433ca7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:7a6ce273888c16dfa852299fb94cc6d2d12d59c303510bae0413d9229667c078
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452615371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698c531e08442364c2764bf2d1cf5aa4b23cf8809b24ae97c3521978426906f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 19 Mar 2019 09:16:39 GMT
RUN cmd /S /C #(nop) COPY file:200d8de5309334486efe06739239ea8729a5d7aa34871757cecba196a26932cb in \traefik.exe 
# Tue, 19 Mar 2019 09:16:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 19 Mar 2019 09:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 09:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e1d68b67c6abf693aa9c90e4b3a1bdf02d9ca385aa54f73ebc1af3da0066979b`  
		Last Modified: Tue, 19 Mar 2019 09:17:33 GMT  
		Size: 17.2 MB (17215718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460840a1b75fdf399bf3a95866c25a027aee4d2c24186d0b6d91e6d2360c7ad`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac0b618026e86b9a8238eacc8e1d471824d883608b16b5d20f522867429459`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e519736374ab5808c662862dfd050ff43c45ac6f749c2c7f66dac2a29f6d0b`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:c66a4b51da43af19c9e63af6e2a67e290a744476cb96e0103ab5a198433ca7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:7a6ce273888c16dfa852299fb94cc6d2d12d59c303510bae0413d9229667c078
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452615371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698c531e08442364c2764bf2d1cf5aa4b23cf8809b24ae97c3521978426906f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 19 Mar 2019 09:16:39 GMT
RUN cmd /S /C #(nop) COPY file:200d8de5309334486efe06739239ea8729a5d7aa34871757cecba196a26932cb in \traefik.exe 
# Tue, 19 Mar 2019 09:16:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 19 Mar 2019 09:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 09:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e1d68b67c6abf693aa9c90e4b3a1bdf02d9ca385aa54f73ebc1af3da0066979b`  
		Last Modified: Tue, 19 Mar 2019 09:17:33 GMT  
		Size: 17.2 MB (17215718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460840a1b75fdf399bf3a95866c25a027aee4d2c24186d0b6d91e6d2360c7ad`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac0b618026e86b9a8238eacc8e1d471824d883608b16b5d20f522867429459`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e519736374ab5808c662862dfd050ff43c45ac6f749c2c7f66dac2a29f6d0b`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:55c0d005fb9292091a00e1cfad0a23eef043d85b74980d9bc8466f602837f858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5c2449c2b67a7472b813744273e37e7be226f737d3f9f3afaca3427b6ac1a3fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a4798bf02ca4bcaea6da4c843dbfc7a3009981c07d7313d2d095f390074121`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:03:38 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:03:40 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:03:41 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:03:41 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:03:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:41 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:03:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c2ce8cd8042e67b10b3c192426543e697234a88c140c9848357fa4e878407e`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3c9241eb849698d75f08937ce58b0a63924712435f17566d2b700412f10349`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 19.8 MB (19808273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6896473f359f93af9e5dc3a5d7bc3997b492e85d7708f1cddc9829a52c07b25`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e6b1bc6249210dd0a8c664b0ef238cd10ad210253c10814f0339a3f94e6d976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fa05fe84bff3c885c77b2ec1434f067aa0596d7195f65a665c79789ffe1c44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:03 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:39:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:39:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:39:09 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:39:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:39:10 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:39:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba65bf488489c8bbe96a8499012391bdb2abece647546b294eedb3bd845938`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 309.2 KB (309244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bb31e20cfd1d0c2d10d9c39325124424b3fc966342f4be3d491712fd6cffc2`  
		Last Modified: Fri, 08 Mar 2019 04:39:31 GMT  
		Size: 18.6 MB (18595224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8021281140489bdfd99c7a68e0f4ad5a41f1cd4b0fca8f90e0830062a5b2dcd4`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b8154bf9c5b8feeff33259258398205e5cbc585b14c1bcc3959209ae0d659fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **20.6 MB (20562674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `18dc31b7831585d9cee12aa787baabbd928381e46e833f4b9488a0c1af77a06e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:14:09 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 12:14:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 12:14:20 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 12:14:21 GMT
EXPOSE 80
# Fri, 08 Mar 2019 12:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:22 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 12:14:23 GMT
RUN ["\/bin\/sh","-c","#(nop) ","LABEL org.label-schema.vendor=Containous org.label-schema.url=https:\/\/traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:ad679f272f5891392085f8c80f62a3e85b200d0df26098dd6205e43b47788aaf`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 322.0 B  
		MIME: application/octet-stream
	-	`sha256:9fd154df784594ff40300295f5eec597f69c2ad81d47eaa9983b66eefa0ee7ca`  
		Last Modified: Fri, 08 Mar 2019 12:14:48 GMT  
		Size: 18.2 MB (18153680 bytes)  
		MIME: application/octet-stream
	-	`sha256:e2d46331cc9f552c83f97b410c3c45d9bb11ab6c488eeb33d4b90aa0acf77059`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 308.7 KB (308678 bytes)  
		MIME: application/octet-stream
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/octet-stream

## `traefik:faisselle`

```console
$ docker pull traefik@sha256:abd7f3d6a5c0ccf600699a3f237e95d8a581774bb9bf9ed535a4d51d4f18701a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle` - linux; amd64

```console
$ docker pull traefik@sha256:d1b6870bf1a7c4f85ebb5bd1bbdbe82fbb6709c2721b90d1cd3396fbccd250c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17364314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f634816a536aadcef24be2165cb02557d651cc9a98c266d4b50c17ceeb3218`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:5d781ba0287ba20eeb6f28ae7bc1c096ebb81679c94f9af1040ccbbe349e5747 in / 
# Tue, 19 Mar 2019 21:34:26 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:27 GMT
VOLUME [/tmp]
# Tue, 19 Mar 2019 21:34:27 GMT
ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 21:34:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e38e6210e163695fdf9ad1448fd934b75b8659cc75c2a1f4281ca838187c7e`  
		Last Modified: Tue, 19 Mar 2019 21:35:10 GMT  
		Size: 17.2 MB (17232292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6762478eaffe9d4a8c1f44f07d31ab527ec1b192abbff79006ec76e676eac656
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16251267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcea16f8535023c2321d7bee16b1298a63d477822bc38e5f91280eda4be7e1d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 08:11:09 GMT
COPY file:8df50cb371169ceab7bc725cfc1bdb1eb432167a4e9b675dbddb7db388a6eee8 in / 
# Wed, 20 Mar 2019 08:11:10 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:10 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 08:11:11 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 08:11:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d787045f843797d15b4439878306a3783d052a9ed8c7048756905e36f0e61985`  
		Last Modified: Wed, 20 Mar 2019 08:11:56 GMT  
		Size: 16.1 MB (16119245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:04ec6908573a6d4e9420db821d4305d09b3cdcaf15799483a561c23b35f7b56a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75f9ebf2966b7dec236a5788be50561af5297fa238e7a15ba75f3799038ffff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 10:26:03 GMT
COPY file:1ad14eab219a07804e8cce8e0e36c8ae656fc597af9bc9ffc28c2859874e51bb in / 
# Wed, 20 Mar 2019 10:26:03 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:04 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 10:26:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 10:26:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29afd21933d8b959bb174a0735f28b9b9a2e85f9ed7788a554888eca7afa807d`  
		Last Modified: Wed, 20 Mar 2019 10:27:41 GMT  
		Size: 15.8 MB (15848685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-alpine`

```console
$ docker pull traefik@sha256:5c5c3a43591259af3ea64b51145db21f62614478d58ae1802d69fd5968b6f9af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:faisselle-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b31bcb3da5c15bf316bbd4313d7807fa12eae33d9caa08105bde847f1aaab4e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf96cd141e98e72bc529ba50f5b8ecdeed360b1c01f92859b31a26998ce98fc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Tue, 19 Mar 2019 21:34:34 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 19 Mar 2019 21:34:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 19 Mar 2019 21:34:37 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 19 Mar 2019 21:34:37 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Mar 2019 21:34:38 GMT
CMD ["traefik"]
# Tue, 19 Mar 2019 21:34:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da730c0fd9c0e8b204f2894f8ab1293199077d88c42212eb16ae90e49e567e56`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 695.6 KB (695639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25079ef375e646c2467d2f59d70e35466cea5b8cbfae0f45b5bab43001a593bf`  
		Last Modified: Tue, 19 Mar 2019 21:35:18 GMT  
		Size: 17.2 MB (17232427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce634305937fac4f1cac91c7d6f417e9a2ad348be01e0c3430a083ae1ef36724`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c1e08e7439acee2e1cb1ee80384c7f5a36db67c1b1d62f8022594b4db3971683
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19358188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d49ef91c1ede430f3a4e07cd66515bc9d894ff4fed5c68791b7fb62a51f1702`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 08:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 08:11:25 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 08:11:25 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 08:11:26 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 08:11:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b814925ea262b38a3e962b1fb24509a485af2b900709d19f8c83b26b366e4c7`  
		Last Modified: Wed, 20 Mar 2019 08:12:10 GMT  
		Size: 16.1 MB (16119345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66c2660c43e788ff725dc182836bad32d3b5bf1743c563b62572fa1ce1c998b`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:faisselle-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:bc928fa60f17b7934e2b8e6de1c7a38f224bf8c7701c65ea8a6514fdf0a41f78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19234805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a166876eb9946d971c7eda0c4afb0425385cbcd2c9a6f546a7c2f4302bf595`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 10:26:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 10:26:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 10:26:39 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 10:26:40 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 10:26:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaa947e95667ed012fcd91bc879273dba3927bdf9d164620ba870dc57dbd6df`  
		Last Modified: Wed, 20 Mar 2019 10:28:03 GMT  
		Size: 15.8 MB (15848825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fed4d7603bd90f3f3131c81b03bd1f89e5221553543b14ee10d4e15d2edb79b`  
		Last Modified: Wed, 20 Mar 2019 10:27:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver`

```console
$ docker pull traefik@sha256:c66a4b51da43af19c9e63af6e2a67e290a744476cb96e0103ab5a198433ca7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:7a6ce273888c16dfa852299fb94cc6d2d12d59c303510bae0413d9229667c078
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452615371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698c531e08442364c2764bf2d1cf5aa4b23cf8809b24ae97c3521978426906f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 19 Mar 2019 09:16:39 GMT
RUN cmd /S /C #(nop) COPY file:200d8de5309334486efe06739239ea8729a5d7aa34871757cecba196a26932cb in \traefik.exe 
# Tue, 19 Mar 2019 09:16:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 19 Mar 2019 09:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 09:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e1d68b67c6abf693aa9c90e4b3a1bdf02d9ca385aa54f73ebc1af3da0066979b`  
		Last Modified: Tue, 19 Mar 2019 09:17:33 GMT  
		Size: 17.2 MB (17215718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460840a1b75fdf399bf3a95866c25a027aee4d2c24186d0b6d91e6d2360c7ad`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac0b618026e86b9a8238eacc8e1d471824d883608b16b5d20f522867429459`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e519736374ab5808c662862dfd050ff43c45ac6f749c2c7f66dac2a29f6d0b`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:faisselle-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:c66a4b51da43af19c9e63af6e2a67e290a744476cb96e0103ab5a198433ca7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:7a6ce273888c16dfa852299fb94cc6d2d12d59c303510bae0413d9229667c078
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452615371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698c531e08442364c2764bf2d1cf5aa4b23cf8809b24ae97c3521978426906f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 19 Mar 2019 09:16:39 GMT
RUN cmd /S /C #(nop) COPY file:200d8de5309334486efe06739239ea8729a5d7aa34871757cecba196a26932cb in \traefik.exe 
# Tue, 19 Mar 2019 09:16:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 19 Mar 2019 09:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 09:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e1d68b67c6abf693aa9c90e4b3a1bdf02d9ca385aa54f73ebc1af3da0066979b`  
		Last Modified: Tue, 19 Mar 2019 09:17:33 GMT  
		Size: 17.2 MB (17215718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460840a1b75fdf399bf3a95866c25a027aee4d2c24186d0b6d91e6d2360c7ad`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac0b618026e86b9a8238eacc8e1d471824d883608b16b5d20f522867429459`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e519736374ab5808c662862dfd050ff43c45ac6f749c2c7f66dac2a29f6d0b`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:6348d14975b683a2783cc8dbaa76efe5367a1d67bd3e9e2ee812da7da012224b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:c801a5ee540f24a08397b92c62d82541f05e872acde052e7ad6ceb68c36c62d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19943303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98768a8bf3fed22fc50cd21c3e5c93240d994d6231ce1cf3fbaa0643a27562ab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 12 Feb 2019 21:58:02 GMT
COPY file:50a45dea242dcb99fede841b4e860404160afd02d2a0760882e8776672be2ff7 in / 
# Tue, 12 Feb 2019 21:58:02 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:02 GMT
VOLUME [/tmp]
# Tue, 12 Feb 2019 21:58:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 12 Feb 2019 21:58:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d759fcb7fc9bad9aa7e46760e1c303bd03a643a4ad436cfb0c2108183354f541`  
		Last Modified: Tue, 12 Feb 2019 21:58:25 GMT  
		Size: 19.8 MB (19808260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6ee17c22d75757e4f7e0dd7f77ffe59402fe93d82959e11be909cf20414fe7b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18730211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676baac154713572f4dbbcb86eaf1f0400a4d37d941c514a2a053e7f54be0f2c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 09:17:41 GMT
COPY file:17b85a6e3edde98a246126d651c138624134e0b8258c8c6af348b4a027e1f3b0 in / 
# Wed, 13 Feb 2019 09:17:42 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:42 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 09:17:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 09:17:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0f8727fc34ce66f5bea1c5a8a00154b7224e7abbfe85be277a32954d5cd2e6`  
		Last Modified: Wed, 13 Feb 2019 09:18:15 GMT  
		Size: 18.6 MB (18595173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:917444e807edd21cb02a979e7d805391c5f6edfc3c02b393f0cc70f84e19578f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18288856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f43a0cc585e85e7996059da02bca222d51d196f2e82e09fb1fa0c70204f20`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 13:18:22 GMT
COPY file:d6cea6d36dd3def2b9353e4e79d6170abad6ba1943479c8c17cd96e86a48c140 in / 
# Wed, 13 Feb 2019 13:18:23 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:24 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 13:18:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:18:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c241b0d66a69b3ec102f32817f86914bf0107a8a378fd6da3d26b3ca2e0cb45`  
		Last Modified: Wed, 13 Feb 2019 13:19:09 GMT  
		Size: 18.2 MB (18153820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:6348d14975b683a2783cc8dbaa76efe5367a1d67bd3e9e2ee812da7da012224b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:c801a5ee540f24a08397b92c62d82541f05e872acde052e7ad6ceb68c36c62d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19943303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98768a8bf3fed22fc50cd21c3e5c93240d994d6231ce1cf3fbaa0643a27562ab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 12 Feb 2019 21:58:02 GMT
COPY file:50a45dea242dcb99fede841b4e860404160afd02d2a0760882e8776672be2ff7 in / 
# Tue, 12 Feb 2019 21:58:02 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:02 GMT
VOLUME [/tmp]
# Tue, 12 Feb 2019 21:58:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 12 Feb 2019 21:58:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d759fcb7fc9bad9aa7e46760e1c303bd03a643a4ad436cfb0c2108183354f541`  
		Last Modified: Tue, 12 Feb 2019 21:58:25 GMT  
		Size: 19.8 MB (19808260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6ee17c22d75757e4f7e0dd7f77ffe59402fe93d82959e11be909cf20414fe7b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18730211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676baac154713572f4dbbcb86eaf1f0400a4d37d941c514a2a053e7f54be0f2c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 09:17:41 GMT
COPY file:17b85a6e3edde98a246126d651c138624134e0b8258c8c6af348b4a027e1f3b0 in / 
# Wed, 13 Feb 2019 09:17:42 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:42 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 09:17:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 09:17:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0f8727fc34ce66f5bea1c5a8a00154b7224e7abbfe85be277a32954d5cd2e6`  
		Last Modified: Wed, 13 Feb 2019 09:18:15 GMT  
		Size: 18.6 MB (18595173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:917444e807edd21cb02a979e7d805391c5f6edfc3c02b393f0cc70f84e19578f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18288856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f43a0cc585e85e7996059da02bca222d51d196f2e82e09fb1fa0c70204f20`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 13:18:22 GMT
COPY file:d6cea6d36dd3def2b9353e4e79d6170abad6ba1943479c8c17cd96e86a48c140 in / 
# Wed, 13 Feb 2019 13:18:23 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:24 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 13:18:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:18:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c241b0d66a69b3ec102f32817f86914bf0107a8a378fd6da3d26b3ca2e0cb45`  
		Last Modified: Wed, 13 Feb 2019 13:19:09 GMT  
		Size: 18.2 MB (18153820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:55c0d005fb9292091a00e1cfad0a23eef043d85b74980d9bc8466f602837f858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5c2449c2b67a7472b813744273e37e7be226f737d3f9f3afaca3427b6ac1a3fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a4798bf02ca4bcaea6da4c843dbfc7a3009981c07d7313d2d095f390074121`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:03:38 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:03:40 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:03:41 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:03:41 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:03:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:41 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:03:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c2ce8cd8042e67b10b3c192426543e697234a88c140c9848357fa4e878407e`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3c9241eb849698d75f08937ce58b0a63924712435f17566d2b700412f10349`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 19.8 MB (19808273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6896473f359f93af9e5dc3a5d7bc3997b492e85d7708f1cddc9829a52c07b25`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e6b1bc6249210dd0a8c664b0ef238cd10ad210253c10814f0339a3f94e6d976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fa05fe84bff3c885c77b2ec1434f067aa0596d7195f65a665c79789ffe1c44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:03 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:39:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:39:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:39:09 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:39:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:39:10 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:39:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba65bf488489c8bbe96a8499012391bdb2abece647546b294eedb3bd845938`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 309.2 KB (309244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bb31e20cfd1d0c2d10d9c39325124424b3fc966342f4be3d491712fd6cffc2`  
		Last Modified: Fri, 08 Mar 2019 04:39:31 GMT  
		Size: 18.6 MB (18595224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8021281140489bdfd99c7a68e0f4ad5a41f1cd4b0fca8f90e0830062a5b2dcd4`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b8154bf9c5b8feeff33259258398205e5cbc585b14c1bcc3959209ae0d659fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **20.6 MB (20562674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `18dc31b7831585d9cee12aa787baabbd928381e46e833f4b9488a0c1af77a06e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:14:09 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 12:14:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 12:14:20 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 12:14:21 GMT
EXPOSE 80
# Fri, 08 Mar 2019 12:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:22 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 12:14:23 GMT
RUN ["\/bin\/sh","-c","#(nop) ","LABEL org.label-schema.vendor=Containous org.label-schema.url=https:\/\/traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:ad679f272f5891392085f8c80f62a3e85b200d0df26098dd6205e43b47788aaf`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 322.0 B  
		MIME: application/octet-stream
	-	`sha256:9fd154df784594ff40300295f5eec597f69c2ad81d47eaa9983b66eefa0ee7ca`  
		Last Modified: Fri, 08 Mar 2019 12:14:48 GMT  
		Size: 18.2 MB (18153680 bytes)  
		MIME: application/octet-stream
	-	`sha256:e2d46331cc9f552c83f97b410c3c45d9bb11ab6c488eeb33d4b90aa0acf77059`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 308.7 KB (308678 bytes)  
		MIME: application/octet-stream
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/octet-stream

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:6348d14975b683a2783cc8dbaa76efe5367a1d67bd3e9e2ee812da7da012224b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:c801a5ee540f24a08397b92c62d82541f05e872acde052e7ad6ceb68c36c62d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19943303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98768a8bf3fed22fc50cd21c3e5c93240d994d6231ce1cf3fbaa0643a27562ab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 12 Feb 2019 21:58:02 GMT
COPY file:50a45dea242dcb99fede841b4e860404160afd02d2a0760882e8776672be2ff7 in / 
# Tue, 12 Feb 2019 21:58:02 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:02 GMT
VOLUME [/tmp]
# Tue, 12 Feb 2019 21:58:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 12 Feb 2019 21:58:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d759fcb7fc9bad9aa7e46760e1c303bd03a643a4ad436cfb0c2108183354f541`  
		Last Modified: Tue, 12 Feb 2019 21:58:25 GMT  
		Size: 19.8 MB (19808260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6ee17c22d75757e4f7e0dd7f77ffe59402fe93d82959e11be909cf20414fe7b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18730211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676baac154713572f4dbbcb86eaf1f0400a4d37d941c514a2a053e7f54be0f2c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 09:17:41 GMT
COPY file:17b85a6e3edde98a246126d651c138624134e0b8258c8c6af348b4a027e1f3b0 in / 
# Wed, 13 Feb 2019 09:17:42 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:42 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 09:17:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 09:17:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0f8727fc34ce66f5bea1c5a8a00154b7224e7abbfe85be277a32954d5cd2e6`  
		Last Modified: Wed, 13 Feb 2019 09:18:15 GMT  
		Size: 18.6 MB (18595173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:917444e807edd21cb02a979e7d805391c5f6edfc3c02b393f0cc70f84e19578f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18288856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f43a0cc585e85e7996059da02bca222d51d196f2e82e09fb1fa0c70204f20`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 13:18:22 GMT
COPY file:d6cea6d36dd3def2b9353e4e79d6170abad6ba1943479c8c17cd96e86a48c140 in / 
# Wed, 13 Feb 2019 13:18:23 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:24 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 13:18:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:18:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c241b0d66a69b3ec102f32817f86914bf0107a8a378fd6da3d26b3ca2e0cb45`  
		Last Modified: Wed, 13 Feb 2019 13:19:09 GMT  
		Size: 18.2 MB (18153820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.9`

```console
$ docker pull traefik@sha256:6348d14975b683a2783cc8dbaa76efe5367a1d67bd3e9e2ee812da7da012224b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.9` - linux; amd64

```console
$ docker pull traefik@sha256:c801a5ee540f24a08397b92c62d82541f05e872acde052e7ad6ceb68c36c62d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19943303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98768a8bf3fed22fc50cd21c3e5c93240d994d6231ce1cf3fbaa0643a27562ab`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 14 Dec 2018 18:21:56 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Tue, 12 Feb 2019 21:58:02 GMT
COPY file:50a45dea242dcb99fede841b4e860404160afd02d2a0760882e8776672be2ff7 in / 
# Tue, 12 Feb 2019 21:58:02 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:02 GMT
VOLUME [/tmp]
# Tue, 12 Feb 2019 21:58:02 GMT
ENTRYPOINT ["/traefik"]
# Tue, 12 Feb 2019 21:58:03 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7a433ecdf92bfc5080060a97efa862edf0deca55fcfa76a6a01b911c431695fd`  
		Last Modified: Fri, 14 Dec 2018 18:22:18 GMT  
		Size: 135.0 KB (135043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d759fcb7fc9bad9aa7e46760e1c303bd03a643a4ad436cfb0c2108183354f541`  
		Last Modified: Tue, 12 Feb 2019 21:58:25 GMT  
		Size: 19.8 MB (19808260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.9` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6ee17c22d75757e4f7e0dd7f77ffe59402fe93d82959e11be909cf20414fe7b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18730211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676baac154713572f4dbbcb86eaf1f0400a4d37d941c514a2a053e7f54be0f2c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 15 Dec 2018 08:49:55 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 09:17:41 GMT
COPY file:17b85a6e3edde98a246126d651c138624134e0b8258c8c6af348b4a027e1f3b0 in / 
# Wed, 13 Feb 2019 09:17:42 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:42 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 09:17:43 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 09:17:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5527833b12791749e5c8242af5e3795dc1e6b2fe58811c452979252cf978fce9`  
		Last Modified: Sat, 15 Dec 2018 08:50:23 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0f8727fc34ce66f5bea1c5a8a00154b7224e7abbfe85be277a32954d5cd2e6`  
		Last Modified: Wed, 13 Feb 2019 09:18:15 GMT  
		Size: 18.6 MB (18595173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.9` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:917444e807edd21cb02a979e7d805391c5f6edfc3c02b393f0cc70f84e19578f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18288856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f43a0cc585e85e7996059da02bca222d51d196f2e82e09fb1fa0c70204f20`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 18 Dec 2018 10:37:13 GMT
COPY file:2732abb2983d2fed9e64e35eaeabff12421299c1e36e6c0c34abf3b33f84d17f in /etc/ssl/certs/ 
# Wed, 13 Feb 2019 13:18:22 GMT
COPY file:d6cea6d36dd3def2b9353e4e79d6170abad6ba1943479c8c17cd96e86a48c140 in / 
# Wed, 13 Feb 2019 13:18:23 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:24 GMT
VOLUME [/tmp]
# Wed, 13 Feb 2019 13:18:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:18:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:93231411b7777ed5066dad65f929b35b680bfac1ea1fc2ff0c9fb935cc83d75a`  
		Last Modified: Tue, 18 Dec 2018 10:37:58 GMT  
		Size: 135.0 KB (135036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c241b0d66a69b3ec102f32817f86914bf0107a8a378fd6da3d26b3ca2e0cb45`  
		Last Modified: Wed, 13 Feb 2019 13:19:09 GMT  
		Size: 18.2 MB (18153820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.9-alpine`

```console
$ docker pull traefik@sha256:55c0d005fb9292091a00e1cfad0a23eef043d85b74980d9bc8466f602837f858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.9-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5c2449c2b67a7472b813744273e37e7be226f737d3f9f3afaca3427b6ac1a3fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a4798bf02ca4bcaea6da4c843dbfc7a3009981c07d7313d2d095f390074121`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:03:38 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:03:40 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:03:41 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:03:41 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:03:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:41 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:03:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c2ce8cd8042e67b10b3c192426543e697234a88c140c9848357fa4e878407e`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3c9241eb849698d75f08937ce58b0a63924712435f17566d2b700412f10349`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 19.8 MB (19808273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6896473f359f93af9e5dc3a5d7bc3997b492e85d7708f1cddc9829a52c07b25`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.9-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e6b1bc6249210dd0a8c664b0ef238cd10ad210253c10814f0339a3f94e6d976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fa05fe84bff3c885c77b2ec1434f067aa0596d7195f65a665c79789ffe1c44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:03 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:39:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:39:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:39:09 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:39:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:39:10 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:39:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba65bf488489c8bbe96a8499012391bdb2abece647546b294eedb3bd845938`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 309.2 KB (309244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bb31e20cfd1d0c2d10d9c39325124424b3fc966342f4be3d491712fd6cffc2`  
		Last Modified: Fri, 08 Mar 2019 04:39:31 GMT  
		Size: 18.6 MB (18595224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8021281140489bdfd99c7a68e0f4ad5a41f1cd4b0fca8f90e0830062a5b2dcd4`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.9-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b8154bf9c5b8feeff33259258398205e5cbc585b14c1bcc3959209ae0d659fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **20.6 MB (20562674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `18dc31b7831585d9cee12aa787baabbd928381e46e833f4b9488a0c1af77a06e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:14:09 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 12:14:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 12:14:20 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 12:14:21 GMT
EXPOSE 80
# Fri, 08 Mar 2019 12:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:22 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 12:14:23 GMT
RUN ["\/bin\/sh","-c","#(nop) ","LABEL org.label-schema.vendor=Containous org.label-schema.url=https:\/\/traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:ad679f272f5891392085f8c80f62a3e85b200d0df26098dd6205e43b47788aaf`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 322.0 B  
		MIME: application/octet-stream
	-	`sha256:9fd154df784594ff40300295f5eec597f69c2ad81d47eaa9983b66eefa0ee7ca`  
		Last Modified: Fri, 08 Mar 2019 12:14:48 GMT  
		Size: 18.2 MB (18153680 bytes)  
		MIME: application/octet-stream
	-	`sha256:e2d46331cc9f552c83f97b410c3c45d9bb11ab6c488eeb33d4b90aa0acf77059`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 308.7 KB (308678 bytes)  
		MIME: application/octet-stream
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/octet-stream

## `traefik:v1.7.9-nanoserver`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.9-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.9-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7.9-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:55c0d005fb9292091a00e1cfad0a23eef043d85b74980d9bc8466f602837f858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5c2449c2b67a7472b813744273e37e7be226f737d3f9f3afaca3427b6ac1a3fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a4798bf02ca4bcaea6da4c843dbfc7a3009981c07d7313d2d095f390074121`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:03:38 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:03:40 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:03:41 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:03:41 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:03:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:41 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:03:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c2ce8cd8042e67b10b3c192426543e697234a88c140c9848357fa4e878407e`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3c9241eb849698d75f08937ce58b0a63924712435f17566d2b700412f10349`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 19.8 MB (19808273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6896473f359f93af9e5dc3a5d7bc3997b492e85d7708f1cddc9829a52c07b25`  
		Last Modified: Fri, 08 Mar 2019 04:03:53 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6e6b1bc6249210dd0a8c664b0ef238cd10ad210253c10814f0339a3f94e6d976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fa05fe84bff3c885c77b2ec1434f067aa0596d7195f65a665c79789ffe1c44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:03 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 04:39:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 04:39:09 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 04:39:09 GMT
EXPOSE 80
# Fri, 08 Mar 2019 04:39:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 04:39:10 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 04:39:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba65bf488489c8bbe96a8499012391bdb2abece647546b294eedb3bd845938`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 309.2 KB (309244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bb31e20cfd1d0c2d10d9c39325124424b3fc966342f4be3d491712fd6cffc2`  
		Last Modified: Fri, 08 Mar 2019 04:39:31 GMT  
		Size: 18.6 MB (18595224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8021281140489bdfd99c7a68e0f4ad5a41f1cd4b0fca8f90e0830062a5b2dcd4`  
		Last Modified: Fri, 08 Mar 2019 04:39:24 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:b8154bf9c5b8feeff33259258398205e5cbc585b14c1bcc3959209ae0d659fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **20.6 MB (20562674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `18dc31b7831585d9cee12aa787baabbd928381e46e833f4b9488a0c1af77a06e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:14:09 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Mar 2019 12:14:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Mar 2019 12:14:20 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Fri, 08 Mar 2019 12:14:21 GMT
EXPOSE 80
# Fri, 08 Mar 2019 12:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:22 GMT
CMD ["traefik"]
# Fri, 08 Mar 2019 12:14:23 GMT
RUN ["\/bin\/sh","-c","#(nop) ","LABEL org.label-schema.vendor=Containous org.label-schema.url=https:\/\/traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:ad679f272f5891392085f8c80f62a3e85b200d0df26098dd6205e43b47788aaf`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 322.0 B  
		MIME: application/octet-stream
	-	`sha256:9fd154df784594ff40300295f5eec597f69c2ad81d47eaa9983b66eefa0ee7ca`  
		Last Modified: Fri, 08 Mar 2019 12:14:48 GMT  
		Size: 18.2 MB (18153680 bytes)  
		MIME: application/octet-stream
	-	`sha256:e2d46331cc9f552c83f97b410c3c45d9bb11ab6c488eeb33d4b90aa0acf77059`  
		Last Modified: Fri, 08 Mar 2019 12:14:40 GMT  
		Size: 308.7 KB (308678 bytes)  
		MIME: application/octet-stream
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/octet-stream

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:54aad8a6140d74a811df930b89be270f1aaac9478aaf9be8b9281c024bfe7130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:382adba28b015c1aaedfd9df1a0cb95c020dda0049eb9c5da066e2ec3adb3222
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.2 MB (455216564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968f1a41de689976385bcf1fe27e79d1c0125b3c0031d4ba05ef6a117094f5d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 13 Feb 2019 13:10:10 GMT
RUN cmd /S /C #(nop) COPY file:e092a6fbb0a65056dd33e725e4856a1275febf346f9f0fa94099f8e27f5b82b8 in \traefik.exe 
# Wed, 13 Feb 2019 13:10:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 13 Feb 2019 13:10:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 13 Feb 2019 13:10:18 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:300ad4cbc60d3ca105d31887b3bdfc9031f0da4f410d5d54c5c6155f19165fe9`  
		Last Modified: Wed, 13 Feb 2019 13:10:39 GMT  
		Size: 19.8 MB (19816892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0a4db375c20e3233fd797b3e814963ec75db6fc6fa420efd541abceee2c70`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a538fa4adf3b8f6be87e1f3417f8d35f209e64e15bb9b138f07e2d96aa8d7286`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d7e6a6af717f8c8a3200760e5451dc96662049aaf96b95fa5a7df041e1cb35`  
		Last Modified: Wed, 13 Feb 2019 13:10:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0`

```console
$ docker pull traefik@sha256:abd7f3d6a5c0ccf600699a3f237e95d8a581774bb9bf9ed535a4d51d4f18701a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0` - linux; amd64

```console
$ docker pull traefik@sha256:d1b6870bf1a7c4f85ebb5bd1bbdbe82fbb6709c2721b90d1cd3396fbccd250c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17364314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f634816a536aadcef24be2165cb02557d651cc9a98c266d4b50c17ceeb3218`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:5d781ba0287ba20eeb6f28ae7bc1c096ebb81679c94f9af1040ccbbe349e5747 in / 
# Tue, 19 Mar 2019 21:34:26 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:27 GMT
VOLUME [/tmp]
# Tue, 19 Mar 2019 21:34:27 GMT
ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 21:34:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e38e6210e163695fdf9ad1448fd934b75b8659cc75c2a1f4281ca838187c7e`  
		Last Modified: Tue, 19 Mar 2019 21:35:10 GMT  
		Size: 17.2 MB (17232292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6762478eaffe9d4a8c1f44f07d31ab527ec1b192abbff79006ec76e676eac656
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16251267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcea16f8535023c2321d7bee16b1298a63d477822bc38e5f91280eda4be7e1d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 08:11:09 GMT
COPY file:8df50cb371169ceab7bc725cfc1bdb1eb432167a4e9b675dbddb7db388a6eee8 in / 
# Wed, 20 Mar 2019 08:11:10 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:10 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 08:11:11 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 08:11:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d787045f843797d15b4439878306a3783d052a9ed8c7048756905e36f0e61985`  
		Last Modified: Wed, 20 Mar 2019 08:11:56 GMT  
		Size: 16.1 MB (16119245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:04ec6908573a6d4e9420db821d4305d09b3cdcaf15799483a561c23b35f7b56a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75f9ebf2966b7dec236a5788be50561af5297fa238e7a15ba75f3799038ffff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 10:26:03 GMT
COPY file:1ad14eab219a07804e8cce8e0e36c8ae656fc597af9bc9ffc28c2859874e51bb in / 
# Wed, 20 Mar 2019 10:26:03 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:04 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 10:26:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 10:26:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29afd21933d8b959bb174a0735f28b9b9a2e85f9ed7788a554888eca7afa807d`  
		Last Modified: Wed, 20 Mar 2019 10:27:41 GMT  
		Size: 15.8 MB (15848685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha2`

```console
$ docker pull traefik@sha256:abd7f3d6a5c0ccf600699a3f237e95d8a581774bb9bf9ed535a4d51d4f18701a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha2` - linux; amd64

```console
$ docker pull traefik@sha256:d1b6870bf1a7c4f85ebb5bd1bbdbe82fbb6709c2721b90d1cd3396fbccd250c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17364314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f634816a536aadcef24be2165cb02557d651cc9a98c266d4b50c17ceeb3218`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:5d781ba0287ba20eeb6f28ae7bc1c096ebb81679c94f9af1040ccbbe349e5747 in / 
# Tue, 19 Mar 2019 21:34:26 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:27 GMT
VOLUME [/tmp]
# Tue, 19 Mar 2019 21:34:27 GMT
ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 21:34:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e38e6210e163695fdf9ad1448fd934b75b8659cc75c2a1f4281ca838187c7e`  
		Last Modified: Tue, 19 Mar 2019 21:35:10 GMT  
		Size: 17.2 MB (17232292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6762478eaffe9d4a8c1f44f07d31ab527ec1b192abbff79006ec76e676eac656
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16251267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcea16f8535023c2321d7bee16b1298a63d477822bc38e5f91280eda4be7e1d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 08:11:09 GMT
COPY file:8df50cb371169ceab7bc725cfc1bdb1eb432167a4e9b675dbddb7db388a6eee8 in / 
# Wed, 20 Mar 2019 08:11:10 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:10 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 08:11:11 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 08:11:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d787045f843797d15b4439878306a3783d052a9ed8c7048756905e36f0e61985`  
		Last Modified: Wed, 20 Mar 2019 08:11:56 GMT  
		Size: 16.1 MB (16119245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha2` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:04ec6908573a6d4e9420db821d4305d09b3cdcaf15799483a561c23b35f7b56a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75f9ebf2966b7dec236a5788be50561af5297fa238e7a15ba75f3799038ffff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 10:26:00 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Wed, 20 Mar 2019 10:26:03 GMT
COPY file:1ad14eab219a07804e8cce8e0e36c8ae656fc597af9bc9ffc28c2859874e51bb in / 
# Wed, 20 Mar 2019 10:26:03 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:04 GMT
VOLUME [/tmp]
# Wed, 20 Mar 2019 10:26:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Mar 2019 10:26:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:4e8329e705d7c968f3a066e73302387c1fa99df2d2bd76c27312b2522e19eccc`  
		Last Modified: Wed, 20 Mar 2019 10:27:32 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29afd21933d8b959bb174a0735f28b9b9a2e85f9ed7788a554888eca7afa807d`  
		Last Modified: Wed, 20 Mar 2019 10:27:41 GMT  
		Size: 15.8 MB (15848685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha2-alpine`

```console
$ docker pull traefik@sha256:5c5c3a43591259af3ea64b51145db21f62614478d58ae1802d69fd5968b6f9af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0.0-alpha2-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b31bcb3da5c15bf316bbd4313d7807fa12eae33d9caa08105bde847f1aaab4e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf96cd141e98e72bc529ba50f5b8ecdeed360b1c01f92859b31a26998ce98fc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Tue, 19 Mar 2019 21:34:34 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 19 Mar 2019 21:34:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 19 Mar 2019 21:34:37 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 19 Mar 2019 21:34:37 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Mar 2019 21:34:38 GMT
CMD ["traefik"]
# Tue, 19 Mar 2019 21:34:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da730c0fd9c0e8b204f2894f8ab1293199077d88c42212eb16ae90e49e567e56`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 695.6 KB (695639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25079ef375e646c2467d2f59d70e35466cea5b8cbfae0f45b5bab43001a593bf`  
		Last Modified: Tue, 19 Mar 2019 21:35:18 GMT  
		Size: 17.2 MB (17232427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce634305937fac4f1cac91c7d6f417e9a2ad348be01e0c3430a083ae1ef36724`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha2-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c1e08e7439acee2e1cb1ee80384c7f5a36db67c1b1d62f8022594b4db3971683
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19358188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d49ef91c1ede430f3a4e07cd66515bc9d894ff4fed5c68791b7fb62a51f1702`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 08:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 08:11:25 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 08:11:25 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 08:11:26 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 08:11:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b814925ea262b38a3e962b1fb24509a485af2b900709d19f8c83b26b366e4c7`  
		Last Modified: Wed, 20 Mar 2019 08:12:10 GMT  
		Size: 16.1 MB (16119345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66c2660c43e788ff725dc182836bad32d3b5bf1743c563b62572fa1ce1c998b`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0.0-alpha2-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:bc928fa60f17b7934e2b8e6de1c7a38f224bf8c7701c65ea8a6514fdf0a41f78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19234805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a166876eb9946d971c7eda0c4afb0425385cbcd2c9a6f546a7c2f4302bf595`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 10:26:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 10:26:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 10:26:39 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 10:26:40 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 10:26:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaa947e95667ed012fcd91bc879273dba3927bdf9d164620ba870dc57dbd6df`  
		Last Modified: Wed, 20 Mar 2019 10:28:03 GMT  
		Size: 15.8 MB (15848825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fed4d7603bd90f3f3131c81b03bd1f89e5221553543b14ee10d4e15d2edb79b`  
		Last Modified: Wed, 20 Mar 2019 10:27:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0.0-alpha2-nanoserver`

**does not exist** (yet?)

## `traefik:v2.0.0-alpha2-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v2.0-alpine`

```console
$ docker pull traefik@sha256:5c5c3a43591259af3ea64b51145db21f62614478d58ae1802d69fd5968b6f9af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v2.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:b31bcb3da5c15bf316bbd4313d7807fa12eae33d9caa08105bde847f1aaab4e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20683117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf96cd141e98e72bc529ba50f5b8ecdeed360b1c01f92859b31a26998ce98fc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Tue, 19 Mar 2019 21:34:34 GMT
RUN apk --no-cache add ca-certificates tzdata
# Tue, 19 Mar 2019 21:34:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Tue, 19 Mar 2019 21:34:37 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 19 Mar 2019 21:34:37 GMT
EXPOSE 80
# Tue, 19 Mar 2019 21:34:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Mar 2019 21:34:38 GMT
CMD ["traefik"]
# Tue, 19 Mar 2019 21:34:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da730c0fd9c0e8b204f2894f8ab1293199077d88c42212eb16ae90e49e567e56`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 695.6 KB (695639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25079ef375e646c2467d2f59d70e35466cea5b8cbfae0f45b5bab43001a593bf`  
		Last Modified: Tue, 19 Mar 2019 21:35:18 GMT  
		Size: 17.2 MB (17232427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce634305937fac4f1cac91c7d6f417e9a2ad348be01e0c3430a083ae1ef36724`  
		Last Modified: Tue, 19 Mar 2019 21:35:14 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:c1e08e7439acee2e1cb1ee80384c7f5a36db67c1b1d62f8022594b4db3971683
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19358188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d49ef91c1ede430f3a4e07cd66515bc9d894ff4fed5c68791b7fb62a51f1702`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 08:11:18 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 08:11:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 08:11:25 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 08:11:25 GMT
EXPOSE 80
# Wed, 20 Mar 2019 08:11:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 08:11:26 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 08:11:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6314be2c2dcc3c8a055f297334197e12c827db9ea8694abfa1403a33ef05cff4`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 697.8 KB (697849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b814925ea262b38a3e962b1fb24509a485af2b900709d19f8c83b26b366e4c7`  
		Last Modified: Wed, 20 Mar 2019 08:12:10 GMT  
		Size: 16.1 MB (16119345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66c2660c43e788ff725dc182836bad32d3b5bf1743c563b62572fa1ce1c998b`  
		Last Modified: Wed, 20 Mar 2019 08:12:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v2.0-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:bc928fa60f17b7934e2b8e6de1c7a38f224bf8c7701c65ea8a6514fdf0a41f78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19234805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a166876eb9946d971c7eda0c4afb0425385cbcd2c9a6f546a7c2f4302bf595`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 10:26:26 GMT
RUN apk --no-cache add ca-certificates tzdata
# Wed, 20 Mar 2019 10:26:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Mar 2019 10:26:38 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 20 Mar 2019 10:26:39 GMT
EXPOSE 80
# Wed, 20 Mar 2019 10:26:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Mar 2019 10:26:40 GMT
CMD ["traefik"]
# Wed, 20 Mar 2019 10:26:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e367c47bf6fdf493d111d7a35959ef3cebd22a8e0a4c3c560afe5c23dbcc4`  
		Last Modified: Wed, 20 Mar 2019 10:27:57 GMT  
		Size: 697.7 KB (697719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaa947e95667ed012fcd91bc879273dba3927bdf9d164620ba870dc57dbd6df`  
		Last Modified: Wed, 20 Mar 2019 10:28:03 GMT  
		Size: 15.8 MB (15848825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fed4d7603bd90f3f3131c81b03bd1f89e5221553543b14ee10d4e15d2edb79b`  
		Last Modified: Wed, 20 Mar 2019 10:27:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver`

```console
$ docker pull traefik@sha256:c66a4b51da43af19c9e63af6e2a67e290a744476cb96e0103ab5a198433ca7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:7a6ce273888c16dfa852299fb94cc6d2d12d59c303510bae0413d9229667c078
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452615371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698c531e08442364c2764bf2d1cf5aa4b23cf8809b24ae97c3521978426906f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 19 Mar 2019 09:16:39 GMT
RUN cmd /S /C #(nop) COPY file:200d8de5309334486efe06739239ea8729a5d7aa34871757cecba196a26932cb in \traefik.exe 
# Tue, 19 Mar 2019 09:16:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 19 Mar 2019 09:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 09:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e1d68b67c6abf693aa9c90e4b3a1bdf02d9ca385aa54f73ebc1af3da0066979b`  
		Last Modified: Tue, 19 Mar 2019 09:17:33 GMT  
		Size: 17.2 MB (17215718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460840a1b75fdf399bf3a95866c25a027aee4d2c24186d0b6d91e6d2360c7ad`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac0b618026e86b9a8238eacc8e1d471824d883608b16b5d20f522867429459`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e519736374ab5808c662862dfd050ff43c45ac6f749c2c7f66dac2a29f6d0b`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v2.0-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:c66a4b51da43af19c9e63af6e2a67e290a744476cb96e0103ab5a198433ca7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:v2.0-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:7a6ce273888c16dfa852299fb94cc6d2d12d59c303510bae0413d9229667c078
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.6 MB (452615371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698c531e08442364c2764bf2d1cf5aa4b23cf8809b24ae97c3521978426906f6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 19 Mar 2019 09:16:39 GMT
RUN cmd /S /C #(nop) COPY file:200d8de5309334486efe06739239ea8729a5d7aa34871757cecba196a26932cb in \traefik.exe 
# Tue, 19 Mar 2019 09:16:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 19 Mar 2019 09:16:47 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 19 Mar 2019 09:16:48 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e1d68b67c6abf693aa9c90e4b3a1bdf02d9ca385aa54f73ebc1af3da0066979b`  
		Last Modified: Tue, 19 Mar 2019 09:17:33 GMT  
		Size: 17.2 MB (17215718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460840a1b75fdf399bf3a95866c25a027aee4d2c24186d0b6d91e6d2360c7ad`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac0b618026e86b9a8238eacc8e1d471824d883608b16b5d20f522867429459`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e519736374ab5808c662862dfd050ff43c45ac6f749c2c7f66dac2a29f6d0b`  
		Last Modified: Tue, 19 Mar 2019 09:17:27 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
