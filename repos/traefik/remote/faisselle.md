## `traefik:faisselle`

```console
$ docker pull traefik@sha256:a9f0b4218cb1085014e3634cb4a8af1d244a156e96595c95fcd6f49c6f605b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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
