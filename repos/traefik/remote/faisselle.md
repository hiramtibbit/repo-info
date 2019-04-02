## `traefik:faisselle`

```console
$ docker pull traefik@sha256:6f5c368b599adf0ce855fbb89549bf0234f9eedd0604ee7b6e488b1c2d1bdcd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

### `traefik:faisselle` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6a7380197444c20905b78d05a8b4d875e43411834ad7bfcedb4d3af0d8b74343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16256124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77467825f15991820281388b5e9262a33cda535dc35c2addf88a134916e8e79c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 20 Mar 2019 08:11:08 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Tue, 02 Apr 2019 07:50:09 GMT
COPY file:6f475f414462fa7e4122ab048c44ce84759345791554238c1ccb7632e1675997 in / 
# Tue, 02 Apr 2019 07:50:10 GMT
EXPOSE 80
# Tue, 02 Apr 2019 07:50:11 GMT
VOLUME [/tmp]
# Tue, 02 Apr 2019 07:50:11 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Apr 2019 07:50:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v2.0.0-alpha3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:2b85204ff61918278f159c68b7d115600c72173e7f4db3f92d97b8ef4be1c8e9`  
		Last Modified: Wed, 20 Mar 2019 08:11:50 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48d9caef4adc9597bc988ec9ab1c6159ccc0080441d95247febb902cbcffc1c`  
		Last Modified: Tue, 02 Apr 2019 07:51:20 GMT  
		Size: 16.1 MB (16124102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
