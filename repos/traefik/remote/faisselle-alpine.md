## `traefik:faisselle-alpine`

```console
$ docker pull traefik@sha256:e7ba7ebc730a4dbd9644d1ffa30ec3174a6802e47cfc52517274e939c82262db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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
