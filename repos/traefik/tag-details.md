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
-	[`traefik:alpine`](#traefikalpine)
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
$ docker pull traefik@sha256:541b21b43bdd8f1547599d0350713d82c74c9a72c13cfd47e742b377ea638ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.9-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:77045aad34c60cb14d03b074ee247aa7f970b88855de7c08a71c02117ca33a3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c5fb0617bd020540123084cce00bf10e71c975fd18cccdcb4b0ed51c1908dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:07:19 GMT
RUN apk --no-cache add ca-certificates
# Tue, 12 Feb 2019 21:58:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 12 Feb 2019 21:58:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 12 Feb 2019 21:58:10 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Feb 2019 21:58:11 GMT
CMD ["traefik"]
# Tue, 12 Feb 2019 21:58:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be106ff2c7c3aafa7b2b6fad3949d520cd8ec94ed78cc7e55fc01275b829f8fb`  
		Last Modified: Thu, 31 Jan 2019 02:07:41 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e360fc2df8ba83b16e7e529d717dd044fdb23e689dea11fdfa206fa179f040e1`  
		Last Modified: Tue, 12 Feb 2019 21:58:37 GMT  
		Size: 19.8 MB (19808271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b992f11e89bd27a770aec9b2380a5dbd04e5915fd100d566eea7e82365981d75`  
		Last Modified: Tue, 12 Feb 2019 21:58:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.9-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ff84a92d72dd619d4f3c64222c83382a977173766a7b5206d4f786649be5a1b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47286d1330ee98d32d7b4997a39fd3dacf93a24b552bf57e0c815cac4842a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 09:17:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 09:17:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 09:17:54 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 09:17:54 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 09:17:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fca754a7e00d216065c08de2eb236936941d6c473533aae2e8ec18feca1e8d`  
		Last Modified: Wed, 13 Feb 2019 09:18:40 GMT  
		Size: 18.6 MB (18595195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e115da270a13620b2d1429786f68df9adcafd958a7ffefc6c9bc415f55c387d6`  
		Last Modified: Wed, 13 Feb 2019 09:18:33 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.9-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5b6ff5d6ec69f8e97bad2713798b73fadd5a0e775359b35129ebf0c551cbe2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20562681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814e5bd76bd8f360f771830ec215747c5912b4428fe650196143f8800eb265f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 13:18:41 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 13:18:42 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 13:18:43 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 13:18:44 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 13:18:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a9e457055bee53124c96fd3e839fce1afc4900df69e576c0ea30523a94f616`  
		Last Modified: Wed, 13 Feb 2019 13:19:32 GMT  
		Size: 18.2 MB (18153666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f0fe8f86a23023752d2b4fc4402faa07ba0dabe79e2582bac83473e93088d`  
		Last Modified: Wed, 13 Feb 2019 13:19:24 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull traefik@sha256:541b21b43bdd8f1547599d0350713d82c74c9a72c13cfd47e742b377ea638ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:77045aad34c60cb14d03b074ee247aa7f970b88855de7c08a71c02117ca33a3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c5fb0617bd020540123084cce00bf10e71c975fd18cccdcb4b0ed51c1908dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:07:19 GMT
RUN apk --no-cache add ca-certificates
# Tue, 12 Feb 2019 21:58:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 12 Feb 2019 21:58:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 12 Feb 2019 21:58:10 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Feb 2019 21:58:11 GMT
CMD ["traefik"]
# Tue, 12 Feb 2019 21:58:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be106ff2c7c3aafa7b2b6fad3949d520cd8ec94ed78cc7e55fc01275b829f8fb`  
		Last Modified: Thu, 31 Jan 2019 02:07:41 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e360fc2df8ba83b16e7e529d717dd044fdb23e689dea11fdfa206fa179f040e1`  
		Last Modified: Tue, 12 Feb 2019 21:58:37 GMT  
		Size: 19.8 MB (19808271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b992f11e89bd27a770aec9b2380a5dbd04e5915fd100d566eea7e82365981d75`  
		Last Modified: Tue, 12 Feb 2019 21:58:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ff84a92d72dd619d4f3c64222c83382a977173766a7b5206d4f786649be5a1b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47286d1330ee98d32d7b4997a39fd3dacf93a24b552bf57e0c815cac4842a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 09:17:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 09:17:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 09:17:54 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 09:17:54 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 09:17:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fca754a7e00d216065c08de2eb236936941d6c473533aae2e8ec18feca1e8d`  
		Last Modified: Wed, 13 Feb 2019 09:18:40 GMT  
		Size: 18.6 MB (18595195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e115da270a13620b2d1429786f68df9adcafd958a7ffefc6c9bc415f55c387d6`  
		Last Modified: Wed, 13 Feb 2019 09:18:33 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5b6ff5d6ec69f8e97bad2713798b73fadd5a0e775359b35129ebf0c551cbe2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20562681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814e5bd76bd8f360f771830ec215747c5912b4428fe650196143f8800eb265f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 13:18:41 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 13:18:42 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 13:18:43 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 13:18:44 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 13:18:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a9e457055bee53124c96fd3e839fce1afc4900df69e576c0ea30523a94f616`  
		Last Modified: Wed, 13 Feb 2019 13:19:32 GMT  
		Size: 18.2 MB (18153666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f0fe8f86a23023752d2b4fc4402faa07ba0dabe79e2582bac83473e93088d`  
		Last Modified: Wed, 13 Feb 2019 13:19:24 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `traefik:alpine`

```console
$ docker pull traefik@sha256:541b21b43bdd8f1547599d0350713d82c74c9a72c13cfd47e742b377ea638ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:77045aad34c60cb14d03b074ee247aa7f970b88855de7c08a71c02117ca33a3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c5fb0617bd020540123084cce00bf10e71c975fd18cccdcb4b0ed51c1908dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:07:19 GMT
RUN apk --no-cache add ca-certificates
# Tue, 12 Feb 2019 21:58:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 12 Feb 2019 21:58:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 12 Feb 2019 21:58:10 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Feb 2019 21:58:11 GMT
CMD ["traefik"]
# Tue, 12 Feb 2019 21:58:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be106ff2c7c3aafa7b2b6fad3949d520cd8ec94ed78cc7e55fc01275b829f8fb`  
		Last Modified: Thu, 31 Jan 2019 02:07:41 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e360fc2df8ba83b16e7e529d717dd044fdb23e689dea11fdfa206fa179f040e1`  
		Last Modified: Tue, 12 Feb 2019 21:58:37 GMT  
		Size: 19.8 MB (19808271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b992f11e89bd27a770aec9b2380a5dbd04e5915fd100d566eea7e82365981d75`  
		Last Modified: Tue, 12 Feb 2019 21:58:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ff84a92d72dd619d4f3c64222c83382a977173766a7b5206d4f786649be5a1b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47286d1330ee98d32d7b4997a39fd3dacf93a24b552bf57e0c815cac4842a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 09:17:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 09:17:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 09:17:54 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 09:17:54 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 09:17:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fca754a7e00d216065c08de2eb236936941d6c473533aae2e8ec18feca1e8d`  
		Last Modified: Wed, 13 Feb 2019 09:18:40 GMT  
		Size: 18.6 MB (18595195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e115da270a13620b2d1429786f68df9adcafd958a7ffefc6c9bc415f55c387d6`  
		Last Modified: Wed, 13 Feb 2019 09:18:33 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5b6ff5d6ec69f8e97bad2713798b73fadd5a0e775359b35129ebf0c551cbe2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20562681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814e5bd76bd8f360f771830ec215747c5912b4428fe650196143f8800eb265f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 13:18:41 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 13:18:42 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 13:18:43 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 13:18:44 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 13:18:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a9e457055bee53124c96fd3e839fce1afc4900df69e576c0ea30523a94f616`  
		Last Modified: Wed, 13 Feb 2019 13:19:32 GMT  
		Size: 18.2 MB (18153666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f0fe8f86a23023752d2b4fc4402faa07ba0dabe79e2582bac83473e93088d`  
		Last Modified: Wed, 13 Feb 2019 13:19:24 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:c42cc76c8cf5c315cc642686921c7191363ad03660f9c3e0564c2f929ec5b976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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
$ docker pull traefik@sha256:541b21b43bdd8f1547599d0350713d82c74c9a72c13cfd47e742b377ea638ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:77045aad34c60cb14d03b074ee247aa7f970b88855de7c08a71c02117ca33a3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c5fb0617bd020540123084cce00bf10e71c975fd18cccdcb4b0ed51c1908dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:07:19 GMT
RUN apk --no-cache add ca-certificates
# Tue, 12 Feb 2019 21:58:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 12 Feb 2019 21:58:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 12 Feb 2019 21:58:10 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Feb 2019 21:58:11 GMT
CMD ["traefik"]
# Tue, 12 Feb 2019 21:58:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be106ff2c7c3aafa7b2b6fad3949d520cd8ec94ed78cc7e55fc01275b829f8fb`  
		Last Modified: Thu, 31 Jan 2019 02:07:41 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e360fc2df8ba83b16e7e529d717dd044fdb23e689dea11fdfa206fa179f040e1`  
		Last Modified: Tue, 12 Feb 2019 21:58:37 GMT  
		Size: 19.8 MB (19808271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b992f11e89bd27a770aec9b2380a5dbd04e5915fd100d566eea7e82365981d75`  
		Last Modified: Tue, 12 Feb 2019 21:58:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ff84a92d72dd619d4f3c64222c83382a977173766a7b5206d4f786649be5a1b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47286d1330ee98d32d7b4997a39fd3dacf93a24b552bf57e0c815cac4842a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 09:17:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 09:17:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 09:17:54 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 09:17:54 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 09:17:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fca754a7e00d216065c08de2eb236936941d6c473533aae2e8ec18feca1e8d`  
		Last Modified: Wed, 13 Feb 2019 09:18:40 GMT  
		Size: 18.6 MB (18595195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e115da270a13620b2d1429786f68df9adcafd958a7ffefc6c9bc415f55c387d6`  
		Last Modified: Wed, 13 Feb 2019 09:18:33 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5b6ff5d6ec69f8e97bad2713798b73fadd5a0e775359b35129ebf0c551cbe2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20562681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814e5bd76bd8f360f771830ec215747c5912b4428fe650196143f8800eb265f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 13:18:41 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 13:18:42 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 13:18:43 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 13:18:44 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 13:18:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a9e457055bee53124c96fd3e839fce1afc4900df69e576c0ea30523a94f616`  
		Last Modified: Wed, 13 Feb 2019 13:19:32 GMT  
		Size: 18.2 MB (18153666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f0fe8f86a23023752d2b4fc4402faa07ba0dabe79e2582bac83473e93088d`  
		Last Modified: Wed, 13 Feb 2019 13:19:24 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull traefik@sha256:541b21b43bdd8f1547599d0350713d82c74c9a72c13cfd47e742b377ea638ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.9-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:77045aad34c60cb14d03b074ee247aa7f970b88855de7c08a71c02117ca33a3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c5fb0617bd020540123084cce00bf10e71c975fd18cccdcb4b0ed51c1908dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:07:19 GMT
RUN apk --no-cache add ca-certificates
# Tue, 12 Feb 2019 21:58:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 12 Feb 2019 21:58:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 12 Feb 2019 21:58:10 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Feb 2019 21:58:11 GMT
CMD ["traefik"]
# Tue, 12 Feb 2019 21:58:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be106ff2c7c3aafa7b2b6fad3949d520cd8ec94ed78cc7e55fc01275b829f8fb`  
		Last Modified: Thu, 31 Jan 2019 02:07:41 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e360fc2df8ba83b16e7e529d717dd044fdb23e689dea11fdfa206fa179f040e1`  
		Last Modified: Tue, 12 Feb 2019 21:58:37 GMT  
		Size: 19.8 MB (19808271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b992f11e89bd27a770aec9b2380a5dbd04e5915fd100d566eea7e82365981d75`  
		Last Modified: Tue, 12 Feb 2019 21:58:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.9-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ff84a92d72dd619d4f3c64222c83382a977173766a7b5206d4f786649be5a1b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47286d1330ee98d32d7b4997a39fd3dacf93a24b552bf57e0c815cac4842a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 09:17:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 09:17:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 09:17:54 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 09:17:54 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 09:17:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fca754a7e00d216065c08de2eb236936941d6c473533aae2e8ec18feca1e8d`  
		Last Modified: Wed, 13 Feb 2019 09:18:40 GMT  
		Size: 18.6 MB (18595195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e115da270a13620b2d1429786f68df9adcafd958a7ffefc6c9bc415f55c387d6`  
		Last Modified: Wed, 13 Feb 2019 09:18:33 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.9-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5b6ff5d6ec69f8e97bad2713798b73fadd5a0e775359b35129ebf0c551cbe2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20562681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814e5bd76bd8f360f771830ec215747c5912b4428fe650196143f8800eb265f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 13:18:41 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 13:18:42 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 13:18:43 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 13:18:44 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 13:18:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a9e457055bee53124c96fd3e839fce1afc4900df69e576c0ea30523a94f616`  
		Last Modified: Wed, 13 Feb 2019 13:19:32 GMT  
		Size: 18.2 MB (18153666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f0fe8f86a23023752d2b4fc4402faa07ba0dabe79e2582bac83473e93088d`  
		Last Modified: Wed, 13 Feb 2019 13:19:24 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull traefik@sha256:541b21b43bdd8f1547599d0350713d82c74c9a72c13cfd47e742b377ea638ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:77045aad34c60cb14d03b074ee247aa7f970b88855de7c08a71c02117ca33a3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22324752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c5fb0617bd020540123084cce00bf10e71c975fd18cccdcb4b0ed51c1908dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:07:19 GMT
RUN apk --no-cache add ca-certificates
# Tue, 12 Feb 2019 21:58:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Tue, 12 Feb 2019 21:58:10 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Tue, 12 Feb 2019 21:58:10 GMT
EXPOSE 80
# Tue, 12 Feb 2019 21:58:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Feb 2019 21:58:11 GMT
CMD ["traefik"]
# Tue, 12 Feb 2019 21:58:11 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be106ff2c7c3aafa7b2b6fad3949d520cd8ec94ed78cc7e55fc01275b829f8fb`  
		Last Modified: Thu, 31 Jan 2019 02:07:41 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e360fc2df8ba83b16e7e529d717dd044fdb23e689dea11fdfa206fa179f040e1`  
		Last Modified: Tue, 12 Feb 2019 21:58:37 GMT  
		Size: 19.8 MB (19808271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b992f11e89bd27a770aec9b2380a5dbd04e5915fd100d566eea7e82365981d75`  
		Last Modified: Tue, 12 Feb 2019 21:58:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ff84a92d72dd619d4f3c64222c83382a977173766a7b5206d4f786649be5a1b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21050700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47286d1330ee98d32d7b4997a39fd3dacf93a24b552bf57e0c815cac4842a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:53:18 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 09:17:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 09:17:53 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 09:17:54 GMT
EXPOSE 80
# Wed, 13 Feb 2019 09:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 09:17:54 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 09:17:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd485441b01cc4ef3ab52710f7201ceb020dc43dc03817910acdb2d3a6353db3`  
		Last Modified: Fri, 21 Dec 2018 09:53:40 GMT  
		Size: 309.2 KB (309228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fca754a7e00d216065c08de2eb236936941d6c473533aae2e8ec18feca1e8d`  
		Last Modified: Wed, 13 Feb 2019 09:18:40 GMT  
		Size: 18.6 MB (18595195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e115da270a13620b2d1429786f68df9adcafd958a7ffefc6c9bc415f55c387d6`  
		Last Modified: Wed, 13 Feb 2019 09:18:33 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:5b6ff5d6ec69f8e97bad2713798b73fadd5a0e775359b35129ebf0c551cbe2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20562681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814e5bd76bd8f360f771830ec215747c5912b4428fe650196143f8800eb265f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:43:36 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Feb 2019 13:18:41 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.9/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Feb 2019 13:18:42 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Wed, 13 Feb 2019 13:18:43 GMT
EXPOSE 80
# Wed, 13 Feb 2019 13:18:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 13:18:44 GMT
CMD ["traefik"]
# Wed, 13 Feb 2019 13:18:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.9 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b17ded4e203e2a62b383c829dcb8886b0dcb120aed18a8b522e09b42ad404`  
		Last Modified: Fri, 21 Dec 2018 13:44:24 GMT  
		Size: 308.7 KB (308679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a9e457055bee53124c96fd3e839fce1afc4900df69e576c0ea30523a94f616`  
		Last Modified: Wed, 13 Feb 2019 13:19:32 GMT  
		Size: 18.2 MB (18153666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f0fe8f86a23023752d2b4fc4402faa07ba0dabe79e2582bac83473e93088d`  
		Last Modified: Wed, 13 Feb 2019 13:19:24 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
