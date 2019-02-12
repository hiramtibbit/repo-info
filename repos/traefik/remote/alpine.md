## `traefik:alpine`

```console
$ docker pull traefik@sha256:4280f9bab8b0f14ebacb62ea02a046c4fdf4b9d8deadb1a7b60dab669ab920d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
