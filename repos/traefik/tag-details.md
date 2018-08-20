<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.6`](#traefik16)
-	[`traefik:1.6.6`](#traefik166)
-	[`traefik:1.6.6-alpine`](#traefik166-alpine)
-	[`traefik:1.6.6-nanoserver`](#traefik166-nanoserver)
-	[`traefik:1.6.6-nanoserver-sac2016`](#traefik166-nanoserver-sac2016)
-	[`traefik:1.6-alpine`](#traefik16-alpine)
-	[`traefik:1.6-nanoserver`](#traefik16-nanoserver)
-	[`traefik:1.6-nanoserver-sac2016`](#traefik16-nanoserver-sac2016)
-	[`traefik:1.7`](#traefik17)
-	[`traefik:1.7.0-rc3`](#traefik170-rc3)
-	[`traefik:1.7.0-rc3-alpine`](#traefik170-rc3-alpine)
-	[`traefik:1.7.0-rc3-nanoserver`](#traefik170-rc3-nanoserver)
-	[`traefik:1.7.0-rc3-nanoserver-sac2016`](#traefik170-rc3-nanoserver-sac2016)
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
-	[`traefik:tetedemoine`](#traefiktetedemoine)
-	[`traefik:tetedemoine-alpine`](#traefiktetedemoine-alpine)
-	[`traefik:tetedemoine-nanoserver`](#traefiktetedemoine-nanoserver)
-	[`traefik:tetedemoine-nanoserver-sac2016`](#traefiktetedemoine-nanoserver-sac2016)
-	[`traefik:v1.6`](#traefikv16)
-	[`traefik:v1.6.6`](#traefikv166)
-	[`traefik:v1.6.6-alpine`](#traefikv166-alpine)
-	[`traefik:v1.6.6-nanoserver`](#traefikv166-nanoserver)
-	[`traefik:v1.6.6-nanoserver-sac2016`](#traefikv166-nanoserver-sac2016)
-	[`traefik:v1.6-alpine`](#traefikv16-alpine)
-	[`traefik:v1.6-nanoserver`](#traefikv16-nanoserver)
-	[`traefik:v1.6-nanoserver-sac2016`](#traefikv16-nanoserver-sac2016)
-	[`traefik:v1.7`](#traefikv17)
-	[`traefik:v1.7.0-rc3`](#traefikv170-rc3)
-	[`traefik:v1.7.0-rc3-alpine`](#traefikv170-rc3-alpine)
-	[`traefik:v1.7.0-rc3-nanoserver`](#traefikv170-rc3-nanoserver)
-	[`traefik:v1.7.0-rc3-nanoserver-sac2016`](#traefikv170-rc3-nanoserver-sac2016)
-	[`traefik:v1.7-alpine`](#traefikv17-alpine)
-	[`traefik:v1.7-nanoserver`](#traefikv17-nanoserver)
-	[`traefik:v1.7-nanoserver-sac2016`](#traefikv17-nanoserver-sac2016)

## `traefik:1.6`

```console
$ docker pull traefik@sha256:08c20d4d90a08dff62a5e522360cef10e233749d976618c84f5fafd84b17835d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.6` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.6`

```console
$ docker pull traefik@sha256:08c20d4d90a08dff62a5e522360cef10e233749d976618c84f5fafd84b17835d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.6.6` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.6-alpine`

```console
$ docker pull traefik@sha256:88a8b9cee738c0e12f93f0df4ba58a5a01371143db8ce53e3b0f0d84730f60c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.6.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6.6-nanoserver`

**does not exist** (yet?)

## `traefik:1.6.6-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.6-alpine`

```console
$ docker pull traefik@sha256:88a8b9cee738c0e12f93f0df4ba58a5a01371143db8ce53e3b0f0d84730f60c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.6-nanoserver`

**does not exist** (yet?)

## `traefik:1.6-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:1.7`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc3`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc3` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc3-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7.0-rc3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7.0-rc3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc3-nanoserver`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:1.7.0-rc3-nanoserver` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7.0-rc3-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:1.7.0-rc3-nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:1.7-nanoserver` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:1.7-nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:88a8b9cee738c0e12f93f0df4ba58a5a01371143db8ce53e3b0f0d84730f60c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:eabb39016917bd43e738fb8bada87be076d4553b5617037922b187c0a656f4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:e65103d16ded975f0193c2357ccf1de13ebb5946894d91cf1c76ea23033d0476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11569c00178041f0502a3251a2d33196c9a153c564814bc9f712c704a85200c2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 10 Jul 2018 21:39:44 GMT
COPY file:ba6114281de19b8e363e82ed5b30471e264464b79049c538a86b7eae309ab46e in / 
# Tue, 10 Jul 2018 21:39:44 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:39:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Jul 2018 21:39:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6023e30b264079307436d6b5d179f0626dde61945e201ef70ab81993d5e7ee15`  
		Last Modified: Tue, 10 Jul 2018 21:40:34 GMT  
		Size: 14.7 MB (14733674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6cb42aa3a9df510b013db2cfc667f100fa54e728c3f78205f7d9f2b1030e30b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14269549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94276d023e180d5ce7d2f6ea7fedde4408b5fb1d091caa651dd3580338c40018`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 08:14:05 GMT
COPY file:0f002d1dc12160ff0052e3979265fc542a8a7f6cafcc4d87880ca1762a2b96b0 in / 
# Wed, 11 Jul 2018 08:14:05 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 08:14:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee51eed0bc1f59a26e1d8065820c03f9d7b3239520690b71fea260dfd841fba1`  
		Last Modified: Wed, 11 Jul 2018 08:14:29 GMT  
		Size: 14.1 MB (14114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e12dd92e9ae06784bd17d81bd8b391ff671c8a4f58abc8f8f662060b39140743
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13974469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3781837d3ba28ee967571c3b92d25272c051e47a94c38642cbcf38a517b2f178`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 09:50:55 GMT
COPY file:0f98eaf6cc0ecdc5e0d6e4b4f2ab37f2bee2e08fa7ac8a9d891918cc83673cdd in / 
# Wed, 11 Jul 2018 09:50:56 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 09:50:57 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 09:50:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c380abe0eadf15052dc9ca02792f1d35e0bd8a2cb1689c7ed60234587e482f0`  
		Last Modified: Wed, 11 Jul 2018 09:52:34 GMT  
		Size: 13.8 MB (13819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:maroilles-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:maroilles-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:maroilles-nanoserver` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:nanoserver`

**does not exist** (yet?)

## `traefik:nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:08c20d4d90a08dff62a5e522360cef10e233749d976618c84f5fafd84b17835d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-alpine`

```console
$ docker pull traefik@sha256:88a8b9cee738c0e12f93f0df4ba58a5a01371143db8ce53e3b0f0d84730f60c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:tetedemoine-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:tetedemoine-nanoserver`

**does not exist** (yet?)

## `traefik:tetedemoine-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.6`

```console
$ docker pull traefik@sha256:08c20d4d90a08dff62a5e522360cef10e233749d976618c84f5fafd84b17835d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.6` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.6`

```console
$ docker pull traefik@sha256:08c20d4d90a08dff62a5e522360cef10e233749d976618c84f5fafd84b17835d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.6.6` - linux; amd64

```console
$ docker pull traefik@sha256:d129dc2bf31f2aa49e77f6bc1c11515643d6a1ee7d4ac45f10ef4ef6f0b76995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14882237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df6f82b88396336202b5d015c371aeae7e9bc6e3409c825cebe42865de21ce5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 20 Aug 2018 22:21:16 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 20 Aug 2018 22:21:17 GMT
COPY file:9c03fadf31c7f4799d64e85e747e1236d2937b6d6224d8b23c9b30c354b9edd0 in / 
# Mon, 20 Aug 2018 22:21:18 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:18 GMT
ENTRYPOINT ["/traefik"]
# Mon, 20 Aug 2018 22:21:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b378cf224f3c34eefed24898b6efba08bd29df113ab478477524ade611bb89a7`  
		Last Modified: Mon, 20 Aug 2018 22:22:19 GMT  
		Size: 135.0 KB (135038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ff319c8a1c5aae4a1ee7c4f897379517dfabfe3024fc0f3f0c34d787b0faf4`  
		Last Modified: Mon, 20 Aug 2018 22:22:26 GMT  
		Size: 14.7 MB (14747199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.6-alpine`

```console
$ docker pull traefik@sha256:88a8b9cee738c0e12f93f0df4ba58a5a01371143db8ce53e3b0f0d84730f60c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.6.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6.6-nanoserver`

**does not exist** (yet?)

## `traefik:v1.6.6-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.6-alpine`

```console
$ docker pull traefik@sha256:88a8b9cee738c0e12f93f0df4ba58a5a01371143db8ce53e3b0f0d84730f60c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:684014c8f3cda954bf8dd1c6c443e838548f1bc45e26328c60908dd3d998f861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17263090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e16f19623050d49219617288fd10a9d3eafe68e2a02a38ac8ec267e2a327817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Mon, 20 Aug 2018 22:21:39 GMT
RUN apk --no-cache add ca-certificates
# Mon, 20 Aug 2018 22:21:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.6.6/traefik_linux-$arch"; 	chmod +x /usr/local/bin/traefik
# Mon, 20 Aug 2018 22:21:44 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Mon, 20 Aug 2018 22:21:45 GMT
EXPOSE 80/tcp
# Mon, 20 Aug 2018 22:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Aug 2018 22:21:45 GMT
CMD ["traefik"]
# Mon, 20 Aug 2018 22:21:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbf841d2c70b0767efbc1fca0d0f27471dad1c3c3527db4f46f411c91639d`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 309.0 KB (309000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4f55677aab22c3c37f18e2b3c6d6e47e5f707cab48398fa4d8323fcbd25ea`  
		Last Modified: Mon, 20 Aug 2018 22:24:36 GMT  
		Size: 14.7 MB (14747227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1331f5a80dba9e4037f2e871969d88e627ac1734be7970e651aa5011883dc`  
		Last Modified: Mon, 20 Aug 2018 22:24:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.6-nanoserver`

**does not exist** (yet?)

## `traefik:v1.6-nanoserver-sac2016`

**does not exist** (yet?)

## `traefik:v1.7`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc3`

```console
$ docker pull traefik@sha256:eed2738cb7d378dd59ac58a2e606595f6ef10fa61f998d81602c6f94e901c061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc3` - linux; amd64

```console
$ docker pull traefik@sha256:9930ab57a391a2caaa3b2ec9a7b744c7662aeae4fa2d0877040f9d1e181e2ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16136214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436b23f870373ac90bbf64d1a1d1a4b3efe249f33e1607b562eb8437f096de1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:03 GMT
COPY file:3e4a8c66bf6cab4b81a0ba7d70af6e8e6bc9c889dabe0bf8c4fb31d51f80b360 in / 
# Thu, 02 Aug 2018 21:01:04 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:04 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6f05aec25e7fb3271aa79de5a5c44983fe6b98fa41494ad2c4fa8fafd262c0`  
		Last Modified: Thu, 02 Aug 2018 21:02:08 GMT  
		Size: 16.0 MB (15981064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:adfb6b4a1fbc1acf434f6f564e4ceb837b0ebad35b0fcaaeff4b052ac585a714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1d2dad93dfa64721792579d44c68c6491f7d6bff53e14ab182f3c8108bbd3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:07 GMT
COPY file:9a6275cbbf933759a8b0bb3aec8c60409e659accd36d1fcb5a7444733aac48a3 in / 
# Thu, 02 Aug 2018 21:01:08 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:08 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cb23460c16710e76844f84b329894ece28acf8b7785959d974b94535700bb4`  
		Last Modified: Thu, 02 Aug 2018 21:01:46 GMT  
		Size: 15.3 MB (15328354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:df9b9bfb83ee49ec2658cb664b603f1446c1b48daf46b9b32f895fa608c66096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15197315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365837c8cf726a22cb3c8e6dd65e318e998dae9e7697d35a2bed4600664c8444`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Aug 2018 21:01:25 GMT
COPY file:7bd02babd6e9fa2fa8a7dae26577201b3de59fa56101a0a29e0bb895e0bf70e7 in / 
# Thu, 02 Aug 2018 21:01:26 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:01:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb957fb6aa1179c5a8165f81754e2a526ce1606a3118360cd7071bb9205e4e`  
		Last Modified: Thu, 02 Aug 2018 21:02:45 GMT  
		Size: 15.0 MB (15042164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc3-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7.0-rc3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7.0-rc3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc3-nanoserver`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:v1.7.0-rc3-nanoserver` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7.0-rc3-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:v1.7.0-rc3-nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-alpine`

```console
$ docker pull traefik@sha256:d58eec8c88c4680343f403dcef96e64e7e43b30acfea40d123dbe55290e19617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.7-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:faf79df21ffb6c9ebebbbdc3c7887110c01646306a68bcfcd298d5be703825e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18514608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0b25a10da4b1d720ec021af858b663db0d0c7435f7d13a194dd7163181f430`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:46:58 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:29 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:30 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:30 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:30 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c55a74f9d93e30b92f7faffc5770afb8e8d803a8cf3e9e5a3c5a9482dc60a4`  
		Last Modified: Fri, 06 Jul 2018 18:47:37 GMT  
		Size: 351.3 KB (351276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fa96f07c2ae65f251d1762a87b5f54a1fad66ba2e4dd529971d0552354c9cd`  
		Last Modified: Thu, 02 Aug 2018 21:03:53 GMT  
		Size: 16.1 MB (16148352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db63b53deddf05b4b32961b2b796884bea83841a0a12a97ce33e1b321c257b74`  
		Last Modified: Thu, 02 Aug 2018 21:03:45 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6b69267640896f950966914b90d8ba3f163e17332185b83201ac39774182daf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71ddb45196be08ba4cdab673410bfefde29b9f9654cb75bda5009e77e1fa73d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 23:48:29 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:01:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:01:17 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:01:17 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:01:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:01:17 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:01:18 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb8d1c03fc58c04041b17fe9ed11a9273389da04d65602bb6c6a65845a88161`  
		Last Modified: Tue, 27 Mar 2018 23:49:15 GMT  
		Size: 352.2 KB (352153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7028d0cac9534c2c7bb7ba9012d5a968a8f7234d5ddef0278f02f239daa57c70`  
		Last Modified: Thu, 02 Aug 2018 21:02:05 GMT  
		Size: 15.5 MB (15496738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de620dfffd9c9a7cd30bf35a373c646389d26e93bc808d00ecab2873033433ec`  
		Last Modified: Thu, 02 Aug 2018 21:01:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1b6762e9787025962cf98a3bff0fc4f10c54c55783a9757f1038bc777cbad37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17478208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03375995f9a53f14dcfd5d166e18f4f93ba4e9a455887cc3fc9d3a4e7382ec72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 02 Aug 2018 21:02:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.7.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 02 Aug 2018 21:02:02 GMT
COPY file:dfffadd21e552111ec01a67fb96f3ee6af6f289cea17fbe6f1221976404e73b3 in / 
# Thu, 02 Aug 2018 21:02:02 GMT
EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:02:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Aug 2018 21:02:04 GMT
CMD ["traefik"]
# Thu, 02 Aug 2018 21:02:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7c467ee0572836d0c952e27d2e3a1566f0fdf6c500df9e8a2b772e6706170`  
		Last Modified: Thu, 02 Aug 2018 21:04:24 GMT  
		Size: 15.2 MB (15211470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c5527ad157588986306dd27302aa5dcd7ccbbea6c6f39b58ffe5264ff25c16`  
		Last Modified: Thu, 02 Aug 2018 21:04:17 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:v1.7-nanoserver` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.7-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:5cd1da0e5e0cb681c463bd998b9c77900d07f202055fbc60d31b7b4edc075fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `traefik:v1.7-nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull traefik@sha256:b72ae6693aaaf25729ea34d138f7cdbcfaf3c248e3b126904c886839a898f061
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.6 MB (435563808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423bec8ba219fbbe84ceffda9c55036f35abee299620a221ba7e3512b97f6155`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Thu, 02 Aug 2018 21:03:40 GMT
RUN cmd /S /C #(nop) COPY file:4c94379aa4d378c3412fd0a5ac3edfef56d6836d9638f135e43481fdbadf297c in \traefik.exe 
# Thu, 02 Aug 2018 21:03:43 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/traefik]
# Thu, 02 Aug 2018 21:03:44 GMT
RUN cmd /S /C #(nop)  VOLUME [C:/etc/ssl]
# Thu, 02 Aug 2018 21:03:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Thu, 02 Aug 2018 21:03:46 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Thu, 02 Aug 2018 21:03:47 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ea19ea6b03dcb1211fddcb998dade45d1eb8e42232e8b6f012291e855a6375`  
		Last Modified: Thu, 02 Aug 2018 21:04:08 GMT  
		Size: 16.0 MB (16037997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aee5bbce57fa9e00c91452ab278e4f330bd25114a41e944bfd60c6eda2d4ac`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ac009076ae9d376698f7361bb9f9ee1b2e5d6a18cde860c7ad25c652311f5c`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2d2ca0b425d5ef3888da73e430a09e2446a6d44992e93e847dd516fe6cde7b`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8398ea397103ea2ee319e81fa5748fe1f944010da554bff6ae41dbd2f95968d3`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9815151f086672644508ddff047f127c20cf9c88a95be6b0705eae0f8897002`  
		Last Modified: Thu, 02 Aug 2018 21:04:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
