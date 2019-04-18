## `traefik:faisselle-alpine`

```console
$ docker pull traefik@sha256:f27906de967a6f3ae21797b6d3ace606eae14034c6cc821603f158b424ed9677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:faisselle-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:13aac7a3b7eb7dcab2ec161d7716fb6955df786d07748eb98ff9e51a5f4aa5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20769403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6e45ed43e7beed7f0a9b098f06ac3d84795cf5a84a5a9ab7b0d379aec43d5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 02:01:13 GMT
RUN apk --no-cache add ca-certificates tzdata
# Thu, 18 Apr 2019 00:00:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/containous/traefik/releases/download/v2.0.0-alpha4/traefik_v2.0.0-alpha4_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik
# Thu, 18 Apr 2019 00:00:31 GMT
COPY file:c6bfa5cffadaecb3dda59f195c3d07acd6cf371253339bbdfc087089b6eee8b8 in / 
# Thu, 18 Apr 2019 00:00:31 GMT
EXPOSE 80
# Thu, 18 Apr 2019 00:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 00:00:31 GMT
CMD ["traefik"]
# Thu, 18 Apr 2019 00:00:31 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha4 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd896cc066730f98b1aefc2de088832b91f007ec2c2f53ef92d5001ddb3edf`  
		Last Modified: Wed, 10 Apr 2019 02:02:00 GMT  
		Size: 695.6 KB (695613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3365942d1f6222d33908578b295a7bfd26ef91502febfae8ba024d260f9d48da`  
		Last Modified: Thu, 18 Apr 2019 00:01:07 GMT  
		Size: 17.3 MB (17316460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198b15db7e0f1b7164cb35d175795a9f395d1f33b9ab8006971d91ff815f130`  
		Last Modified: Thu, 18 Apr 2019 00:01:04 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
