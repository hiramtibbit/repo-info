## `traefik:maroilles`

```console
$ docker pull traefik@sha256:7b30ac3a3f817cd69dd643ed924e0ad1e5ddd8c731c88488d995546fcee4d19e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:7b660d0784f622f43f0cb8411f6bac5d5d795c63bd65d57497c0fc2a40c1a9c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19113915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd25f303561ffa880b96bad42edb59c5ea67e2d485f084f57ab35b5f9283254`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 18 Sep 2018 22:20:20 GMT
COPY file:b8e7b8331eb251d2111e59e6955827319d749c0cc7f1c645c594f6cce2767772 in / 
# Tue, 18 Sep 2018 22:20:20 GMT
EXPOSE 80/tcp
# Tue, 18 Sep 2018 22:20:21 GMT
ENTRYPOINT ["/traefik"]
# Tue, 18 Sep 2018 22:20:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c8e8b82b25669f321edfce4adc1671b68693161ad2cdf3efb160a087a015e`  
		Last Modified: Tue, 18 Sep 2018 22:21:00 GMT  
		Size: 19.0 MB (18978878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:82adf677db893703f736e8f0c3e2b414b7c98b814dda49ace8121f8a419178b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17961826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc44c1873060f42aee55460f2f0988b39539e520e31e37f878fec6041fcad24`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 19 Sep 2018 07:50:08 GMT
COPY file:5377da670a8a194a164d90c6d3bab2862db88c5ae4f2539d8977304f455b7039 in / 
# Wed, 19 Sep 2018 07:50:09 GMT
EXPOSE 80/tcp
# Wed, 19 Sep 2018 07:50:09 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Sep 2018 07:50:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8821c929a53be928748e44d01cb1ef70f2f24f5127486fbd24d4465765e9de`  
		Last Modified: Wed, 19 Sep 2018 07:50:49 GMT  
		Size: 17.8 MB (17826748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
