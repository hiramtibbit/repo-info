## `traefik:latest`

```console
$ docker pull traefik@sha256:2f7cec2ab7e68d5e6df1645759e6bab04981b6b8c65e1595cabac1dbb9b53878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:031b9f43e22083f82df947311ecf63c46a80b58308387dae8139fd69bb746e93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19123913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8953801567ee89e3f92372f6a72f4e828ecd29689a6eb15684281813c8bacaf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 07 Sep 2018 19:05:07 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Thu, 04 Oct 2018 18:23:33 GMT
COPY file:cd6535f7fd8622a0a277c83141ba62ca771a4540f8eaa4a9aeac82de3d487910 in / 
# Thu, 04 Oct 2018 18:23:33 GMT
EXPOSE 80/tcp
# Thu, 04 Oct 2018 18:23:33 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Oct 2018 18:23:34 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:c6e5aced14a22b72f0fd545bec131cc37ac8382fae12614369232b12bf5cc1bf`  
		Last Modified: Fri, 07 Sep 2018 19:06:05 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305b857005b5464a3b0aa77dfb73364d297b92c3b58df9731b2744ac0470c74e`  
		Last Modified: Thu, 04 Oct 2018 18:24:16 GMT  
		Size: 19.0 MB (18988876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f8fa0dfb26f554349d0d4e34e506c5c455bd85ddd0a6da557b355df4ba63d579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17978578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a3ea8a3de0ae551d3845fe3ea5691f7fe160a9d2550f836f430fd15bf0557e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:15:56 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 05 Oct 2018 07:56:12 GMT
COPY file:def8de189561acc18cb94900302a80f3fe09a78365de43c62cf3d031fbb124ad in / 
# Fri, 05 Oct 2018 07:56:13 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 07:56:13 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 07:56:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:9dac48e51b2381c7f7a8cbe16e8670b5d4bfcbd991c139ad10d2e46f233def67`  
		Last Modified: Tue, 21 Aug 2018 08:16:23 GMT  
		Size: 135.1 KB (135078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64789d8f2b8f916b049c3b47d6efcd7a53da82b4a9f875f7fb592fd3d7686d6f`  
		Last Modified: Fri, 05 Oct 2018 07:56:45 GMT  
		Size: 17.8 MB (17843500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:d78666c895715b4b0f3b4df20e66443ebb9951427e8e942d4d341ff4845d2bd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17540244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8000f4afb0aec2911bcac2df4707aae74832fee960300bbf3bad9939c3a13c9d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 21 Aug 2018 08:48:57 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 05 Oct 2018 09:36:55 GMT
COPY file:7a912e4fbfb8c90b8e69fcd5473fe52d23766817c5f7b559bff4359cf8637d41 in / 
# Fri, 05 Oct 2018 09:36:57 GMT
EXPOSE 80/tcp
# Fri, 05 Oct 2018 09:36:57 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Oct 2018 09:36:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:237f2d395b5468b8fc4fb105187ad5ab71f15a8ae7ddb9042c335afc1d048e22`  
		Last Modified: Tue, 21 Aug 2018 08:50:29 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b41bea1e9e012d79ddaea4db40a102bef3c9e43d0a62d735aa0f34b6196d1ae`  
		Last Modified: Fri, 05 Oct 2018 09:38:08 GMT  
		Size: 17.4 MB (17405205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
