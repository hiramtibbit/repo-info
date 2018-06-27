<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.4`](#influxdb14)
-	[`influxdb:1.4.3`](#influxdb143)
-	[`influxdb:1.4.3-alpine`](#influxdb143-alpine)
-	[`influxdb:1.4-alpine`](#influxdb14-alpine)
-	[`influxdb:1.5`](#influxdb15)
-	[`influxdb:1.5.4`](#influxdb154)
-	[`influxdb:1.5.4-alpine`](#influxdb154-alpine)
-	[`influxdb:1.5.4-data`](#influxdb154-data)
-	[`influxdb:1.5.4-data-alpine`](#influxdb154-data-alpine)
-	[`influxdb:1.5.4-meta`](#influxdb154-meta)
-	[`influxdb:1.5.4-meta-alpine`](#influxdb154-meta-alpine)
-	[`influxdb:1.5-alpine`](#influxdb15-alpine)
-	[`influxdb:1.5-data`](#influxdb15-data)
-	[`influxdb:1.5-data-alpine`](#influxdb15-data-alpine)
-	[`influxdb:1.5-meta`](#influxdb15-meta)
-	[`influxdb:1.5-meta-alpine`](#influxdb15-meta-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.4`

```console
$ docker pull influxdb@sha256:846aeca14353fdd64423ef8f740802da5da04c0f60ddf1ff6fae432c80439b7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4` - linux; amd64

```console
$ docker pull influxdb@sha256:2523463568b35cda252afa6862e444b2aacf3d143399cea1d7fef93816d825f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81593685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad58859c4c7d1c9b8eeba9cb12d17add56297b1c253d01dce14e4ed193d5306`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 03:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 03:47:39 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 27 Jun 2018 03:47:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 03:47:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 03:47:47 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 03:47:47 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 03:47:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Jun 2018 03:47:48 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 03:47:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 03:47:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa204ffd5548cbdb63634e30ffce9deb67995115a0276d18cd8f361be3a56030`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86a6ffe73665e3547968b5ba1d1cf7c0d91414f99af31b88c7ccabecaf2bdb`  
		Last Modified: Wed, 27 Jun 2018 03:49:14 GMT  
		Size: 21.2 MB (21159656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4143e0cb794f7f023a8360f22c20350159eeb18ae1928c3e59d687a44d17c4a`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c10202ce5a3889e61d4ff0eec1f8bd54e02bf1a9bfa770ccb3c547cd18fa0`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad279de654d63cf16532b0e121e44e15c506e6acee0e36151f9c647de8ad918`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:12eeed487d3ee679f676bc56bc9e81f74b105140c17b5d6f282d66d45bcb7b02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75321596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877eac2b940d466444b2b429930afe62fb74c37df2566ad8fba56b17b3d96e73`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:46:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:46:40 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 27 Jun 2018 15:46:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 15:46:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 15:46:46 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 15:46:46 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 15:46:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Jun 2018 15:46:47 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 15:46:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:46:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889f4da5529b5d8f0bf481865084b2497179195542f6871f40399172ca0477c6`  
		Last Modified: Wed, 27 Jun 2018 15:47:19 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abb2685d907c7266ce76f39852a2e661bcdb77702118296db4178092fd34871`  
		Last Modified: Wed, 27 Jun 2018 15:47:26 GMT  
		Size: 19.9 MB (19869023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03161635e0139d631731fa84d3ca1ee74946b43482bdc34d7e320c6f66433f6`  
		Last Modified: Wed, 27 Jun 2018 15:47:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af42eff21eab5874ecab4fa23b7829faee4f515483180ef86819d305ecc9ea`  
		Last Modified: Wed, 27 Jun 2018 15:47:19 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89de235df2617c04ae9e397cf55022055abf5919ad4b385c5dbba2e89dd45ae`  
		Last Modified: Wed, 27 Jun 2018 15:47:20 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8323a0f5d44629999fd922029283a5159c2de94f1c8929ff0ee07e2765f6bfaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76218626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6833ddab326ce042b138d847266fa389ad4fadb44873747b8dbc261c35fda4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:43:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 20:43:16 GMT
ENV INFLUXDB_VERSION=1.4.3
# Sat, 05 May 2018 20:43:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 05 May 2018 20:43:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 05 May 2018 20:43:29 GMT
EXPOSE 8086/tcp
# Sat, 05 May 2018 20:43:30 GMT
VOLUME [/var/lib/influxdb]
# Sat, 05 May 2018 20:43:31 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 05 May 2018 20:43:33 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 05 May 2018 20:43:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 20:43:35 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8739b123e956512708a3c7d314c2b0887ae8fe8efa419b80a9493ccbc2451ed`  
		Last Modified: Sat, 05 May 2018 20:44:21 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0c1c792b3edeb792431f00e58be79a252db273ad35fc563bf2241f8cf00f18`  
		Last Modified: Sat, 05 May 2018 20:44:30 GMT  
		Size: 19.3 MB (19294515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d9ee9cb46102a5cc2d0e4657696b0b2a400ce106531ef771ffc2394218c88b`  
		Last Modified: Sat, 05 May 2018 20:44:22 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a74dd69968c7a479b6bcbe24d1df13ffdbe97baacd8401d6f0582c490c723b`  
		Last Modified: Sat, 05 May 2018 20:44:21 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ee34c329b275cf6af2837599c9f42d34cc3602d9adef67b91ab1270a3abcb5`  
		Last Modified: Sat, 05 May 2018 20:44:21 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.3`

```console
$ docker pull influxdb@sha256:846aeca14353fdd64423ef8f740802da5da04c0f60ddf1ff6fae432c80439b7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4.3` - linux; amd64

```console
$ docker pull influxdb@sha256:2523463568b35cda252afa6862e444b2aacf3d143399cea1d7fef93816d825f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81593685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad58859c4c7d1c9b8eeba9cb12d17add56297b1c253d01dce14e4ed193d5306`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 03:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 03:47:39 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 27 Jun 2018 03:47:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 03:47:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 03:47:47 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 03:47:47 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 03:47:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Jun 2018 03:47:48 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 03:47:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 03:47:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa204ffd5548cbdb63634e30ffce9deb67995115a0276d18cd8f361be3a56030`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86a6ffe73665e3547968b5ba1d1cf7c0d91414f99af31b88c7ccabecaf2bdb`  
		Last Modified: Wed, 27 Jun 2018 03:49:14 GMT  
		Size: 21.2 MB (21159656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4143e0cb794f7f023a8360f22c20350159eeb18ae1928c3e59d687a44d17c4a`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c10202ce5a3889e61d4ff0eec1f8bd54e02bf1a9bfa770ccb3c547cd18fa0`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad279de654d63cf16532b0e121e44e15c506e6acee0e36151f9c647de8ad918`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:12eeed487d3ee679f676bc56bc9e81f74b105140c17b5d6f282d66d45bcb7b02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75321596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877eac2b940d466444b2b429930afe62fb74c37df2566ad8fba56b17b3d96e73`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:46:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:46:40 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 27 Jun 2018 15:46:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 15:46:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 15:46:46 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 15:46:46 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 15:46:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Jun 2018 15:46:47 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 15:46:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:46:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889f4da5529b5d8f0bf481865084b2497179195542f6871f40399172ca0477c6`  
		Last Modified: Wed, 27 Jun 2018 15:47:19 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abb2685d907c7266ce76f39852a2e661bcdb77702118296db4178092fd34871`  
		Last Modified: Wed, 27 Jun 2018 15:47:26 GMT  
		Size: 19.9 MB (19869023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03161635e0139d631731fa84d3ca1ee74946b43482bdc34d7e320c6f66433f6`  
		Last Modified: Wed, 27 Jun 2018 15:47:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af42eff21eab5874ecab4fa23b7829faee4f515483180ef86819d305ecc9ea`  
		Last Modified: Wed, 27 Jun 2018 15:47:19 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89de235df2617c04ae9e397cf55022055abf5919ad4b385c5dbba2e89dd45ae`  
		Last Modified: Wed, 27 Jun 2018 15:47:20 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8323a0f5d44629999fd922029283a5159c2de94f1c8929ff0ee07e2765f6bfaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76218626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6833ddab326ce042b138d847266fa389ad4fadb44873747b8dbc261c35fda4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:43:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 20:43:16 GMT
ENV INFLUXDB_VERSION=1.4.3
# Sat, 05 May 2018 20:43:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 05 May 2018 20:43:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 05 May 2018 20:43:29 GMT
EXPOSE 8086/tcp
# Sat, 05 May 2018 20:43:30 GMT
VOLUME [/var/lib/influxdb]
# Sat, 05 May 2018 20:43:31 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 05 May 2018 20:43:33 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 05 May 2018 20:43:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 20:43:35 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8739b123e956512708a3c7d314c2b0887ae8fe8efa419b80a9493ccbc2451ed`  
		Last Modified: Sat, 05 May 2018 20:44:21 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0c1c792b3edeb792431f00e58be79a252db273ad35fc563bf2241f8cf00f18`  
		Last Modified: Sat, 05 May 2018 20:44:30 GMT  
		Size: 19.3 MB (19294515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d9ee9cb46102a5cc2d0e4657696b0b2a400ce106531ef771ffc2394218c88b`  
		Last Modified: Sat, 05 May 2018 20:44:22 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a74dd69968c7a479b6bcbe24d1df13ffdbe97baacd8401d6f0582c490c723b`  
		Last Modified: Sat, 05 May 2018 20:44:21 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ee34c329b275cf6af2837599c9f42d34cc3602d9adef67b91ab1270a3abcb5`  
		Last Modified: Sat, 05 May 2018 20:44:21 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.3-alpine`

```console
$ docker pull influxdb@sha256:032068f01d19803d824d1e3ea062456c7dd2f3a3aa11e18579cf7693a3b14505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7bbe77b74fc456a3a7f18534004d59646b1030dd48bd8be51ea4ff9ff46420cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24547356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c8b04dd8180188cfd9a14b7297f27885384f56d968518bbf714014bb4c2496`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:19:30 GMT
RUN apk add --no-cache tzdata bash
# Wed, 06 Jun 2018 02:19:31 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 06 Jun 2018 02:19:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:19:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Jun 2018 02:19:43 GMT
EXPOSE 8086/tcp
# Wed, 06 Jun 2018 02:19:44 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:19:44 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 06 Jun 2018 02:19:44 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 06 Jun 2018 02:19:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:19:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca3d660ebd2151fa60cdee6f9e0af330782f543e22d88d26eb85c0af619a753`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 1.5 MB (1507771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7eccdcc053ec7d02439b1b371ca9a2135a5c8d08bc2e53f62fce840414e907`  
		Last Modified: Wed, 06 Jun 2018 02:21:41 GMT  
		Size: 21.0 MB (21046087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1af8a4db4650208873632e3f714801a8c4273910c19d5be056f511c9ddf5ff`  
		Last Modified: Wed, 06 Jun 2018 02:21:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5797e220cb2d230e6193f0e42a75182ee9d842f20fb20ac74188b6bc3c7b69`  
		Last Modified: Wed, 06 Jun 2018 02:21:30 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a722b7c592ad5ca2849d185ece149e91644dadcaf51424b850d20d7e387909`  
		Last Modified: Wed, 06 Jun 2018 02:21:31 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4-alpine`

```console
$ docker pull influxdb@sha256:032068f01d19803d824d1e3ea062456c7dd2f3a3aa11e18579cf7693a3b14505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7bbe77b74fc456a3a7f18534004d59646b1030dd48bd8be51ea4ff9ff46420cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24547356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c8b04dd8180188cfd9a14b7297f27885384f56d968518bbf714014bb4c2496`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:19:30 GMT
RUN apk add --no-cache tzdata bash
# Wed, 06 Jun 2018 02:19:31 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 06 Jun 2018 02:19:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:19:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Jun 2018 02:19:43 GMT
EXPOSE 8086/tcp
# Wed, 06 Jun 2018 02:19:44 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:19:44 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 06 Jun 2018 02:19:44 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 06 Jun 2018 02:19:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:19:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca3d660ebd2151fa60cdee6f9e0af330782f543e22d88d26eb85c0af619a753`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 1.5 MB (1507771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7eccdcc053ec7d02439b1b371ca9a2135a5c8d08bc2e53f62fce840414e907`  
		Last Modified: Wed, 06 Jun 2018 02:21:41 GMT  
		Size: 21.0 MB (21046087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1af8a4db4650208873632e3f714801a8c4273910c19d5be056f511c9ddf5ff`  
		Last Modified: Wed, 06 Jun 2018 02:21:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5797e220cb2d230e6193f0e42a75182ee9d842f20fb20ac74188b6bc3c7b69`  
		Last Modified: Wed, 06 Jun 2018 02:21:30 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a722b7c592ad5ca2849d185ece149e91644dadcaf51424b850d20d7e387909`  
		Last Modified: Wed, 06 Jun 2018 02:21:31 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5`

```console
$ docker pull influxdb@sha256:2ca1cb09caa46da0e0ad9889257a972ce7ee83b0cbab2277820807aa0baaf89a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:617b9d107a48d456ab28445cd6066486d0c31020eef2576598c8e1aa47c7f048
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83459334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3f76082ce0732c302ccc753c3ad7f5d180d0169d3495576892b5e4f45d1426`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 03:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 03:48:01 GMT
ENV INFLUXDB_VERSION=1.5.3
# Wed, 27 Jun 2018 03:48:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 03:48:08 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 03:48:09 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 03:48:09 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 03:48:09 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Jun 2018 03:48:10 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 03:48:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 03:48:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa204ffd5548cbdb63634e30ffce9deb67995115a0276d18cd8f361be3a56030`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4b76a48a13a609ab4f58aaec9cedc76bf3cdc4bcf2697646496384d4df0e67`  
		Last Modified: Wed, 27 Jun 2018 03:49:46 GMT  
		Size: 23.0 MB (23025308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c91dffaf90b4079a72014c24855b307095eeb9425fc5cdda4bdf1f509ba95ca`  
		Last Modified: Wed, 27 Jun 2018 03:49:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aaffac743ef88d540e087ece39856a59c33ea0c1f6e76393c8f7abaf687f05`  
		Last Modified: Wed, 27 Jun 2018 03:49:41 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef7f881b7893014f4ec36f54ec3cf8433a6c2ee64fe874aeb99f77d1352c567`  
		Last Modified: Wed, 27 Jun 2018 03:49:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:b6ee383e9da917fe4cae2614b5aa3055174c22b2a7ebd3a909af325ca7f1872e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77106215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac4c46492792732a3bf03804daac23b9886d04560541982ce4d4ab442196a937`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:46:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:46:57 GMT
ENV INFLUXDB_VERSION=1.5.3
# Wed, 27 Jun 2018 15:47:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 15:47:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 15:47:03 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 15:47:04 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 15:47:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Jun 2018 15:47:05 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 15:47:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:47:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889f4da5529b5d8f0bf481865084b2497179195542f6871f40399172ca0477c6`  
		Last Modified: Wed, 27 Jun 2018 15:47:19 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bddc15ff87b573ce4ba78a7ce97994d967d8b0dbc075c33c332aca2d3501ed9`  
		Last Modified: Wed, 27 Jun 2018 15:47:48 GMT  
		Size: 21.7 MB (21653641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f60169478461a245b0a9e57f3fce09eed5f171f3ca32bbd10ac6a8bd41feaa`  
		Last Modified: Wed, 27 Jun 2018 15:47:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6614d584a4ac8b164f59d27095b79d9be22c4c90a143c2b67b30c320c90afd`  
		Last Modified: Wed, 27 Jun 2018 15:47:41 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433a25444040b74f51c06361aa91a5224c6cefd7d72880348ff9ca1b7b6697e3`  
		Last Modified: Wed, 27 Jun 2018 15:47:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:d99b18f43e9bbecab45ad8490e98943004cec3451f20fc7d00a4b1d839ca3478
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77930206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c937d29fb5cd7636482b2e197bd7da5b0c411529d61372a9397fd88e328bbc8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:43:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 May 2018 08:39:59 GMT
ENV INFLUXDB_VERSION=1.5.3
# Wed, 30 May 2018 08:40:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 30 May 2018 08:40:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 May 2018 08:40:13 GMT
EXPOSE 8086/tcp
# Wed, 30 May 2018 08:40:14 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 May 2018 08:40:15 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 30 May 2018 08:40:16 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 30 May 2018 08:40:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 May 2018 08:40:18 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8739b123e956512708a3c7d314c2b0887ae8fe8efa419b80a9493ccbc2451ed`  
		Last Modified: Sat, 05 May 2018 20:44:21 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d11c7fb14ffb4cb3c62abc78ee1c367e08a4ad0b61d035770db2f75fbb96d0`  
		Last Modified: Wed, 30 May 2018 08:40:46 GMT  
		Size: 21.0 MB (21006096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf2e9240bc3a331a5b426afe7c7283bed3bb9df3a464add9899c873acca11`  
		Last Modified: Wed, 30 May 2018 08:40:38 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f56802c7aef6f8826fc911ecc806c3accdf6cf406050b7884e39495a2654d`  
		Last Modified: Wed, 30 May 2018 08:40:38 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3891d560e7600208660240295b56c56c04c3d699166bc268cc184dcf03e35f31`  
		Last Modified: Wed, 30 May 2018 08:40:38 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4`

**does not exist** (yet?)

## `influxdb:1.5.4-alpine`

**does not exist** (yet?)

## `influxdb:1.5.4-data`

**does not exist** (yet?)

## `influxdb:1.5.4-data-alpine`

**does not exist** (yet?)

## `influxdb:1.5.4-meta`

**does not exist** (yet?)

## `influxdb:1.5.4-meta-alpine`

**does not exist** (yet?)

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:b0b8cbd58992a97c4b82f4e3d0ec8bd6e9d80bf8a83e2473aefcff7002c4f587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:d821e99df3e4178cafdf514553e907efb59bdc3b3a34a3c6b8add16501a4873e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26412034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b1f217c89dfb8642fdbab5526f457d81d6506694419249c5406a038c86daef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:19:30 GMT
RUN apk add --no-cache tzdata bash
# Wed, 06 Jun 2018 02:19:56 GMT
ENV INFLUXDB_VERSION=1.5.3
# Wed, 06 Jun 2018 02:20:06 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:20:06 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Jun 2018 02:20:06 GMT
EXPOSE 8086/tcp
# Wed, 06 Jun 2018 02:20:06 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:20:07 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 06 Jun 2018 02:20:07 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 06 Jun 2018 02:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:20:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca3d660ebd2151fa60cdee6f9e0af330782f543e22d88d26eb85c0af619a753`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 1.5 MB (1507771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec24771e308eb635e1c6aa7717675463c8f7e67756069deb7bff64bce1e2e38`  
		Last Modified: Wed, 06 Jun 2018 02:22:33 GMT  
		Size: 22.9 MB (22910764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3824266e490d5044ce8c357626e4bceecde5ddee1287647cae007b385330b9c7`  
		Last Modified: Wed, 06 Jun 2018 02:22:22 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97681d0c5e47262c8bbaddff4fc5dc969c829d6d93b7135361855f8f41ca5761`  
		Last Modified: Wed, 06 Jun 2018 02:22:23 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabc86c169c69a93e1edaa0b80d5ebdc8eeadcbc1c623b52bd50c99f71977be3`  
		Last Modified: Wed, 06 Jun 2018 02:22:22 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:e164a3b88ce41285f29a5b6eba23b7f3b8ccd293471133feb232377eb18523fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:170ab1234f0f4d15a924e8b4e4be20d350e752fb8b2e469eb89a9a8e053a560c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84207513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120f34d96941402b347edd84b2eb3e33c933c12adbebf65c0eccb35c0cfa7227`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 03:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 03:48:20 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 27 Jun 2018 03:48:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 27 Jun 2018 03:48:26 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 03:48:27 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 03:48:27 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 03:48:27 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 27 Jun 2018 03:48:28 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 03:48:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 03:48:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa204ffd5548cbdb63634e30ffce9deb67995115a0276d18cd8f361be3a56030`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569707fa854679ac7bba03b88e17416c177ab189d7fbda3fdaeda7f9f79ab1a4`  
		Last Modified: Wed, 27 Jun 2018 03:50:28 GMT  
		Size: 23.8 MB (23773427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5f9ce925be5a5962adbac1552e682ca14a97132cd69d8555b1a10921005e25`  
		Last Modified: Wed, 27 Jun 2018 03:50:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b0864c1ddf228dbdbf7712a0a65cab8716dc1e769db9e84ce5ef75d3f991f7`  
		Last Modified: Wed, 27 Jun 2018 03:50:23 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5c9432f68728c40d20376b0168d383562c20895f2e113949120522bc6fb667`  
		Last Modified: Wed, 27 Jun 2018 03:50:22 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:9c9c56e76e6ddf5b6585aaabc3c6bd4f4b1667cc3119e75df8f5f74d72a3b5af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:648fcdb176f04dd8076e1f9a1ea59b1cb14b243dca64ea5932785f1f8a26e403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27513427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450300cf7a94e44055c8685404c64130ea209de0453316717df1186b28410681`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:20:25 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 02:20:26 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 06 Jun 2018 02:20:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:20:37 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 06 Jun 2018 02:20:37 GMT
EXPOSE 8086/tcp
# Wed, 06 Jun 2018 02:20:37 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:20:37 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 06 Jun 2018 02:20:38 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 06 Jun 2018 02:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:20:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53849fc7189ac733c570a26b0992d92916b5b286eaea35767956d62287e9d79d`  
		Last Modified: Wed, 06 Jun 2018 02:23:17 GMT  
		Size: 1.9 MB (1852243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321dbbb6c088850a16e4d58dbaf4b6c1e592d31a8c65847a62889206677b448a`  
		Last Modified: Wed, 06 Jun 2018 02:23:28 GMT  
		Size: 23.7 MB (23667624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807487ca6e2bc3116ebe7e06a66bd86a459ec382a323bc63f2053d4dd5b7a64`  
		Last Modified: Wed, 06 Jun 2018 02:23:16 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1340d0cf271c6ebafdb691f618bd23dcd03a5e72ba089137700cfca72bc96`  
		Last Modified: Wed, 06 Jun 2018 02:23:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b8f3fa4503839a01fb710b3d1e79c03f02d8d5b0f08ebdb441759d2f0d464d`  
		Last Modified: Wed, 06 Jun 2018 02:23:15 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:d6f6202cd1db30128573529c636a92edd3a454ba718e7a7f2e6efb79cb423ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:f26438d69ed9dc6cb8da8d43028f184ffb73bf205a662460fe43c909cbecc813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71628149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7b2eb7de15a1d1ac9772b35fff12964e0c78363a2a599eb24d625c648fd71c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 03:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 03:48:20 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 27 Jun 2018 03:48:44 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 27 Jun 2018 03:48:44 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 27 Jun 2018 03:48:44 GMT
EXPOSE 8091/tcp
# Wed, 27 Jun 2018 03:48:45 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 03:48:45 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 27 Jun 2018 03:48:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 03:48:45 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa204ffd5548cbdb63634e30ffce9deb67995115a0276d18cd8f361be3a56030`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a3bfc3f63a3efbf23084b9ec658ec8f2b82da61dec8b149065f4aee522daa1`  
		Last Modified: Wed, 27 Jun 2018 03:51:07 GMT  
		Size: 11.2 MB (11195150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7889975263403657b6dcebaf7a930ee82e1d862352059210d296e1bde2f6c376`  
		Last Modified: Wed, 27 Jun 2018 03:51:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47daf9c1494386661180a3b972350f2814bc51cecb04244ec568a5b4450e8562`  
		Last Modified: Wed, 27 Jun 2018 03:51:05 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:899077b51da8e5482d8bc2a6c532784b4573c764eab597cc78c9f5c9eb3a6087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e8a9b7fb68bfbf0d4a51f0ce108eed3e2dd9aad260e0c38be83075c21f0ce2a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14995675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3be6cc2a9bef8d6c83f084eff2fc9e81ef37c180e155b43bff13795936243eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:20:25 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 02:20:26 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 06 Jun 2018 02:20:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:20:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 06 Jun 2018 02:20:57 GMT
EXPOSE 8091/tcp
# Wed, 06 Jun 2018 02:20:57 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:20:57 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 06 Jun 2018 02:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:20:58 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53849fc7189ac733c570a26b0992d92916b5b286eaea35767956d62287e9d79d`  
		Last Modified: Wed, 06 Jun 2018 02:23:17 GMT  
		Size: 1.9 MB (1852243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eef861953f6db6bcdd6bbe3bca4661ea6447fd31c061b8349bec353271cb05`  
		Last Modified: Wed, 06 Jun 2018 02:24:05 GMT  
		Size: 11.2 MB (11150964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1095af2702006391f1cc9c04c0486c37041d81f4c2901cb8854abe016138f9`  
		Last Modified: Wed, 06 Jun 2018 02:24:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f6eb3b6be8815a4b8a39da7ffd3e70f4c9bbe41408401134355a4b0414b4`  
		Last Modified: Wed, 06 Jun 2018 02:24:00 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:b0b8cbd58992a97c4b82f4e3d0ec8bd6e9d80bf8a83e2473aefcff7002c4f587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:d821e99df3e4178cafdf514553e907efb59bdc3b3a34a3c6b8add16501a4873e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26412034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b1f217c89dfb8642fdbab5526f457d81d6506694419249c5406a038c86daef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:19:30 GMT
RUN apk add --no-cache tzdata bash
# Wed, 06 Jun 2018 02:19:56 GMT
ENV INFLUXDB_VERSION=1.5.3
# Wed, 06 Jun 2018 02:20:06 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:20:06 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Jun 2018 02:20:06 GMT
EXPOSE 8086/tcp
# Wed, 06 Jun 2018 02:20:06 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:20:07 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 06 Jun 2018 02:20:07 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 06 Jun 2018 02:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:20:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca3d660ebd2151fa60cdee6f9e0af330782f543e22d88d26eb85c0af619a753`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 1.5 MB (1507771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec24771e308eb635e1c6aa7717675463c8f7e67756069deb7bff64bce1e2e38`  
		Last Modified: Wed, 06 Jun 2018 02:22:33 GMT  
		Size: 22.9 MB (22910764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3824266e490d5044ce8c357626e4bceecde5ddee1287647cae007b385330b9c7`  
		Last Modified: Wed, 06 Jun 2018 02:22:22 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97681d0c5e47262c8bbaddff4fc5dc969c829d6d93b7135361855f8f41ca5761`  
		Last Modified: Wed, 06 Jun 2018 02:22:23 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabc86c169c69a93e1edaa0b80d5ebdc8eeadcbc1c623b52bd50c99f71977be3`  
		Last Modified: Wed, 06 Jun 2018 02:22:22 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:e164a3b88ce41285f29a5b6eba23b7f3b8ccd293471133feb232377eb18523fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:170ab1234f0f4d15a924e8b4e4be20d350e752fb8b2e469eb89a9a8e053a560c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84207513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120f34d96941402b347edd84b2eb3e33c933c12adbebf65c0eccb35c0cfa7227`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 03:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 03:48:20 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 27 Jun 2018 03:48:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 27 Jun 2018 03:48:26 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 03:48:27 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 03:48:27 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 03:48:27 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 27 Jun 2018 03:48:28 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 03:48:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 03:48:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa204ffd5548cbdb63634e30ffce9deb67995115a0276d18cd8f361be3a56030`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569707fa854679ac7bba03b88e17416c177ab189d7fbda3fdaeda7f9f79ab1a4`  
		Last Modified: Wed, 27 Jun 2018 03:50:28 GMT  
		Size: 23.8 MB (23773427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5f9ce925be5a5962adbac1552e682ca14a97132cd69d8555b1a10921005e25`  
		Last Modified: Wed, 27 Jun 2018 03:50:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b0864c1ddf228dbdbf7712a0a65cab8716dc1e769db9e84ce5ef75d3f991f7`  
		Last Modified: Wed, 27 Jun 2018 03:50:23 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5c9432f68728c40d20376b0168d383562c20895f2e113949120522bc6fb667`  
		Last Modified: Wed, 27 Jun 2018 03:50:22 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:9c9c56e76e6ddf5b6585aaabc3c6bd4f4b1667cc3119e75df8f5f74d72a3b5af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:648fcdb176f04dd8076e1f9a1ea59b1cb14b243dca64ea5932785f1f8a26e403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27513427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450300cf7a94e44055c8685404c64130ea209de0453316717df1186b28410681`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:20:25 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 02:20:26 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 06 Jun 2018 02:20:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:20:37 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 06 Jun 2018 02:20:37 GMT
EXPOSE 8086/tcp
# Wed, 06 Jun 2018 02:20:37 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:20:37 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 06 Jun 2018 02:20:38 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 06 Jun 2018 02:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:20:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53849fc7189ac733c570a26b0992d92916b5b286eaea35767956d62287e9d79d`  
		Last Modified: Wed, 06 Jun 2018 02:23:17 GMT  
		Size: 1.9 MB (1852243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321dbbb6c088850a16e4d58dbaf4b6c1e592d31a8c65847a62889206677b448a`  
		Last Modified: Wed, 06 Jun 2018 02:23:28 GMT  
		Size: 23.7 MB (23667624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807487ca6e2bc3116ebe7e06a66bd86a459ec382a323bc63f2053d4dd5b7a64`  
		Last Modified: Wed, 06 Jun 2018 02:23:16 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1340d0cf271c6ebafdb691f618bd23dcd03a5e72ba089137700cfca72bc96`  
		Last Modified: Wed, 06 Jun 2018 02:23:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b8f3fa4503839a01fb710b3d1e79c03f02d8d5b0f08ebdb441759d2f0d464d`  
		Last Modified: Wed, 06 Jun 2018 02:23:15 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:2ca1cb09caa46da0e0ad9889257a972ce7ee83b0cbab2277820807aa0baaf89a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:617b9d107a48d456ab28445cd6066486d0c31020eef2576598c8e1aa47c7f048
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83459334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3f76082ce0732c302ccc753c3ad7f5d180d0169d3495576892b5e4f45d1426`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 03:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 03:48:01 GMT
ENV INFLUXDB_VERSION=1.5.3
# Wed, 27 Jun 2018 03:48:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 03:48:08 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 03:48:09 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 03:48:09 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 03:48:09 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Jun 2018 03:48:10 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 03:48:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 03:48:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa204ffd5548cbdb63634e30ffce9deb67995115a0276d18cd8f361be3a56030`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4b76a48a13a609ab4f58aaec9cedc76bf3cdc4bcf2697646496384d4df0e67`  
		Last Modified: Wed, 27 Jun 2018 03:49:46 GMT  
		Size: 23.0 MB (23025308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c91dffaf90b4079a72014c24855b307095eeb9425fc5cdda4bdf1f509ba95ca`  
		Last Modified: Wed, 27 Jun 2018 03:49:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aaffac743ef88d540e087ece39856a59c33ea0c1f6e76393c8f7abaf687f05`  
		Last Modified: Wed, 27 Jun 2018 03:49:41 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef7f881b7893014f4ec36f54ec3cf8433a6c2ee64fe874aeb99f77d1352c567`  
		Last Modified: Wed, 27 Jun 2018 03:49:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:b6ee383e9da917fe4cae2614b5aa3055174c22b2a7ebd3a909af325ca7f1872e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77106215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac4c46492792732a3bf03804daac23b9886d04560541982ce4d4ab442196a937`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:46:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:46:57 GMT
ENV INFLUXDB_VERSION=1.5.3
# Wed, 27 Jun 2018 15:47:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 15:47:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Jun 2018 15:47:03 GMT
EXPOSE 8086/tcp
# Wed, 27 Jun 2018 15:47:04 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 15:47:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Jun 2018 15:47:05 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 27 Jun 2018 15:47:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:47:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889f4da5529b5d8f0bf481865084b2497179195542f6871f40399172ca0477c6`  
		Last Modified: Wed, 27 Jun 2018 15:47:19 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bddc15ff87b573ce4ba78a7ce97994d967d8b0dbc075c33c332aca2d3501ed9`  
		Last Modified: Wed, 27 Jun 2018 15:47:48 GMT  
		Size: 21.7 MB (21653641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f60169478461a245b0a9e57f3fce09eed5f171f3ca32bbd10ac6a8bd41feaa`  
		Last Modified: Wed, 27 Jun 2018 15:47:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6614d584a4ac8b164f59d27095b79d9be22c4c90a143c2b67b30c320c90afd`  
		Last Modified: Wed, 27 Jun 2018 15:47:41 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433a25444040b74f51c06361aa91a5224c6cefd7d72880348ff9ca1b7b6697e3`  
		Last Modified: Wed, 27 Jun 2018 15:47:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:d99b18f43e9bbecab45ad8490e98943004cec3451f20fc7d00a4b1d839ca3478
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77930206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c937d29fb5cd7636482b2e197bd7da5b0c411529d61372a9397fd88e328bbc8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 20:43:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 May 2018 08:39:59 GMT
ENV INFLUXDB_VERSION=1.5.3
# Wed, 30 May 2018 08:40:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 30 May 2018 08:40:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 May 2018 08:40:13 GMT
EXPOSE 8086/tcp
# Wed, 30 May 2018 08:40:14 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 May 2018 08:40:15 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 30 May 2018 08:40:16 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 30 May 2018 08:40:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 May 2018 08:40:18 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8739b123e956512708a3c7d314c2b0887ae8fe8efa419b80a9493ccbc2451ed`  
		Last Modified: Sat, 05 May 2018 20:44:21 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d11c7fb14ffb4cb3c62abc78ee1c367e08a4ad0b61d035770db2f75fbb96d0`  
		Last Modified: Wed, 30 May 2018 08:40:46 GMT  
		Size: 21.0 MB (21006096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf2e9240bc3a331a5b426afe7c7283bed3bb9df3a464add9899c873acca11`  
		Last Modified: Wed, 30 May 2018 08:40:38 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f56802c7aef6f8826fc911ecc806c3accdf6cf406050b7884e39495a2654d`  
		Last Modified: Wed, 30 May 2018 08:40:38 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3891d560e7600208660240295b56c56c04c3d699166bc268cc184dcf03e35f31`  
		Last Modified: Wed, 30 May 2018 08:40:38 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:d6f6202cd1db30128573529c636a92edd3a454ba718e7a7f2e6efb79cb423ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:f26438d69ed9dc6cb8da8d43028f184ffb73bf205a662460fe43c909cbecc813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71628149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7b2eb7de15a1d1ac9772b35fff12964e0c78363a2a599eb24d625c648fd71c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 03:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 03:48:20 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 27 Jun 2018 03:48:44 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 27 Jun 2018 03:48:44 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 27 Jun 2018 03:48:44 GMT
EXPOSE 8091/tcp
# Wed, 27 Jun 2018 03:48:45 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Jun 2018 03:48:45 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 27 Jun 2018 03:48:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 03:48:45 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa204ffd5548cbdb63634e30ffce9deb67995115a0276d18cd8f361be3a56030`  
		Last Modified: Wed, 27 Jun 2018 03:49:10 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a3bfc3f63a3efbf23084b9ec658ec8f2b82da61dec8b149065f4aee522daa1`  
		Last Modified: Wed, 27 Jun 2018 03:51:07 GMT  
		Size: 11.2 MB (11195150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7889975263403657b6dcebaf7a930ee82e1d862352059210d296e1bde2f6c376`  
		Last Modified: Wed, 27 Jun 2018 03:51:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47daf9c1494386661180a3b972350f2814bc51cecb04244ec568a5b4450e8562`  
		Last Modified: Wed, 27 Jun 2018 03:51:05 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:899077b51da8e5482d8bc2a6c532784b4573c764eab597cc78c9f5c9eb3a6087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e8a9b7fb68bfbf0d4a51f0ce108eed3e2dd9aad260e0c38be83075c21f0ce2a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14995675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3be6cc2a9bef8d6c83f084eff2fc9e81ef37c180e155b43bff13795936243eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:20:25 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 02:20:26 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 06 Jun 2018 02:20:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:20:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 06 Jun 2018 02:20:57 GMT
EXPOSE 8091/tcp
# Wed, 06 Jun 2018 02:20:57 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:20:57 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 06 Jun 2018 02:20:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:20:58 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53849fc7189ac733c570a26b0992d92916b5b286eaea35767956d62287e9d79d`  
		Last Modified: Wed, 06 Jun 2018 02:23:17 GMT  
		Size: 1.9 MB (1852243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eef861953f6db6bcdd6bbe3bca4661ea6447fd31c061b8349bec353271cb05`  
		Last Modified: Wed, 06 Jun 2018 02:24:05 GMT  
		Size: 11.2 MB (11150964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1095af2702006391f1cc9c04c0486c37041d81f4c2901cb8854abe016138f9`  
		Last Modified: Wed, 06 Jun 2018 02:24:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a0f6eb3b6be8815a4b8a39da7ffd3e70f4c9bbe41408401134355a4b0414b4`  
		Last Modified: Wed, 06 Jun 2018 02:24:00 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
