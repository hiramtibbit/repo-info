## `traefik:maroilles`

```console
$ docker pull traefik@sha256:3d6c2b8b6b762976bee042453d8b853340688ccce615473dfe090c8b91d4ccce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:e5ab2366d797bbe0e376189150b551b1f7fc4a3ee26d069c64b7ef9669e0028c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20346170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2f1c7902c773164cfa4afba0af881fe47b399b930f6ae92b5eea3cb7ee81cc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Fri, 26 Apr 2019 22:23:59 GMT
COPY file:ad5a10c4cb0f93b074b68e3cd7c5359cdd071f222035954a2bc273552178e519 in / 
# Fri, 26 Apr 2019 22:23:59 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:23:59 GMT
VOLUME [/tmp]
# Fri, 26 Apr 2019 22:23:59 GMT
ENTRYPOINT ["/traefik"]
# Fri, 26 Apr 2019 22:24:00 GMT
LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v1.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7049637f2a99de315b8bbd3cbd7db196aae2287df6e7a41c02e86be4f162a45`  
		Last Modified: Fri, 26 Apr 2019 22:24:23 GMT  
		Size: 20.2 MB (20214148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
