## `traefik:faisselle`

```console
$ docker pull traefik@sha256:cdf0cb44fefc70f49ab00a349099144a35cc88e4793d5735f669cde097cdfdce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:faisselle` - linux; amd64

```console
$ docker pull traefik@sha256:3d226c81544a5e2b89e49b08920700b81f23bfcfac945bad8fe517603535f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17363031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d98378e8e5c489fe6a6bf9e36619396f3190c163fd2b6539d640312f5444d1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:33 GMT
COPY file:be85656df6d46b00ca55821f6b9f3f644d0f796050faea5d6166a3b2d32939c9 in / 
# Mon, 01 Apr 2019 23:25:33 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:34 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:34 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77a3e21df160a4038d9eab34b8caf446405aba5c2e0df2336e394e24be95973`  
		Last Modified: Mon, 01 Apr 2019 23:26:16 GMT  
		Size: 17.2 MB (17231009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
