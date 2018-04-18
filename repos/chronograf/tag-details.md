<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.10`](#chronograf1310)
-	[`chronograf:1.3.10.0`](#chronograf13100)
-	[`chronograf:1.3.10.0-alpine`](#chronograf13100-alpine)
-	[`chronograf:1.3.10-alpine`](#chronograf1310-alpine)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.4`](#chronograf14)
-	[`chronograf:1.4.4`](#chronograf144)
-	[`chronograf:1.4.4.0`](#chronograf1440)
-	[`chronograf:1.4.4.0-alpine`](#chronograf1440-alpine)
-	[`chronograf:1.4.4-alpine`](#chronograf144-alpine)
-	[`chronograf:1.4-alpine`](#chronograf14-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:d740f58729fec79db18fc7d0964d5e82f26a02733ed3cc656159c86db6321ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3` - linux; amd64

```console
$ docker pull chronograf@sha256:0752216c75d73f1f4fbe231816091dac7996e0923e850e9e1b13a784cde4fd35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40316425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef005fc3db6f442f13c2062fbf27bf4a2620f31f52aff1e137229419364f594e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 05:18:30 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Mar 2018 05:18:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:18:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 05:18:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 05:18:44 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 05:18:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 05:18:44 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 05:18:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 05:18:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140b147761cb6ee0eb1b663d935b62b9162bf7849216922ddc17309fd569f44b`  
		Last Modified: Wed, 14 Mar 2018 05:19:38 GMT  
		Size: 13.3 MB (13302696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51a557ec35a70dcbc29b8a38c02f1298cd46af88afc798c8a6cf93b3b29c6a9`  
		Last Modified: Wed, 14 Mar 2018 05:19:36 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7ac12b7fc7d98935c38a0de912a99d08d572208d2c96a9ef00ff7a76e7a955`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a892d42a273ba6673884b4fb888a0ee7ef51fc7ee14f1d693024ddbc44126b`  
		Last Modified: Wed, 14 Mar 2018 05:19:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:5f1bf530564077baa5a8c6577f17f730d743405805656a73ae4680fbfb766907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35126258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8695ae7484691bf1f0f3f654d694ba5487f24b3d8b15d3bd1027cc42f3368866`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 15:54:12 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Mar 2018 15:54:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:54:27 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 15:54:28 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 15:54:28 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 15:54:28 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 15:54:29 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 15:54:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 15:54:30 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49a533398d3192bf14fbaff633d7dc2f74a31acb58a9ed3277e70533f19c64`  
		Last Modified: Wed, 14 Mar 2018 15:55:32 GMT  
		Size: 3.9 MB (3873124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4b03f87e2d4d7d15f32bf9a7c48b1e098a557cc7ce30e2700786a2d3b3c6b9`  
		Last Modified: Wed, 14 Mar 2018 15:55:34 GMT  
		Size: 12.0 MB (11951132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099c1d7a0462f750eaf9475e0c4d61cf0fe0edff5c2e0bffd3ae7898c95a4157`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4a9a34436817d56a68411c27ba8dcbc16fda573ee519f427b3ef99e63c35e9`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538210baca8c41f6f5316ce794fa24d9db782c64396655543e71f257dc786921`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7a5836883847cbcbf06c12769faf5d4dfb40ba65d85b765ea6acd8d6378ae50e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36586660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc25e6cb10a4077becd51a90db54d193e92ee318a8cff25e1b2464c5a5224b57`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 00:50:44 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 15 Mar 2018 00:51:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:51:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 15 Mar 2018 00:51:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 15 Mar 2018 00:51:19 GMT
EXPOSE 8888/tcp
# Thu, 15 Mar 2018 00:51:19 GMT
VOLUME [/var/lib/chronograf]
# Thu, 15 Mar 2018 00:51:20 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 15 Mar 2018 00:51:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 00:51:21 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58eb2fd7358c7b362445f33821551b008f52123cc9744831dae645d10a787e14`  
		Last Modified: Thu, 15 Mar 2018 00:53:00 GMT  
		Size: 12.2 MB (12150059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774af4b56f3a334039d30bb4b5204dee5bc4ed6cf595b1df0435a724c01580e9`  
		Last Modified: Thu, 15 Mar 2018 00:52:56 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9ca9ea1a1cbcb7906a1a018bdc33f411ee04b38ac82554f4ecbf87fc687dcd`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1fe6de224fd214834fd2e9e7e224f23e08874186e5d1937665a8537f949ffe`  
		Last Modified: Thu, 15 Mar 2018 00:52:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10`

```console
$ docker pull chronograf@sha256:d740f58729fec79db18fc7d0964d5e82f26a02733ed3cc656159c86db6321ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.10` - linux; amd64

```console
$ docker pull chronograf@sha256:0752216c75d73f1f4fbe231816091dac7996e0923e850e9e1b13a784cde4fd35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40316425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef005fc3db6f442f13c2062fbf27bf4a2620f31f52aff1e137229419364f594e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 05:18:30 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Mar 2018 05:18:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:18:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 05:18:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 05:18:44 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 05:18:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 05:18:44 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 05:18:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 05:18:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140b147761cb6ee0eb1b663d935b62b9162bf7849216922ddc17309fd569f44b`  
		Last Modified: Wed, 14 Mar 2018 05:19:38 GMT  
		Size: 13.3 MB (13302696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51a557ec35a70dcbc29b8a38c02f1298cd46af88afc798c8a6cf93b3b29c6a9`  
		Last Modified: Wed, 14 Mar 2018 05:19:36 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7ac12b7fc7d98935c38a0de912a99d08d572208d2c96a9ef00ff7a76e7a955`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a892d42a273ba6673884b4fb888a0ee7ef51fc7ee14f1d693024ddbc44126b`  
		Last Modified: Wed, 14 Mar 2018 05:19:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:5f1bf530564077baa5a8c6577f17f730d743405805656a73ae4680fbfb766907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35126258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8695ae7484691bf1f0f3f654d694ba5487f24b3d8b15d3bd1027cc42f3368866`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 15:54:12 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Mar 2018 15:54:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:54:27 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 15:54:28 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 15:54:28 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 15:54:28 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 15:54:29 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 15:54:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 15:54:30 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49a533398d3192bf14fbaff633d7dc2f74a31acb58a9ed3277e70533f19c64`  
		Last Modified: Wed, 14 Mar 2018 15:55:32 GMT  
		Size: 3.9 MB (3873124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4b03f87e2d4d7d15f32bf9a7c48b1e098a557cc7ce30e2700786a2d3b3c6b9`  
		Last Modified: Wed, 14 Mar 2018 15:55:34 GMT  
		Size: 12.0 MB (11951132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099c1d7a0462f750eaf9475e0c4d61cf0fe0edff5c2e0bffd3ae7898c95a4157`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4a9a34436817d56a68411c27ba8dcbc16fda573ee519f427b3ef99e63c35e9`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538210baca8c41f6f5316ce794fa24d9db782c64396655543e71f257dc786921`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7a5836883847cbcbf06c12769faf5d4dfb40ba65d85b765ea6acd8d6378ae50e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36586660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc25e6cb10a4077becd51a90db54d193e92ee318a8cff25e1b2464c5a5224b57`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 00:50:44 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 15 Mar 2018 00:51:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:51:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 15 Mar 2018 00:51:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 15 Mar 2018 00:51:19 GMT
EXPOSE 8888/tcp
# Thu, 15 Mar 2018 00:51:19 GMT
VOLUME [/var/lib/chronograf]
# Thu, 15 Mar 2018 00:51:20 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 15 Mar 2018 00:51:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 00:51:21 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58eb2fd7358c7b362445f33821551b008f52123cc9744831dae645d10a787e14`  
		Last Modified: Thu, 15 Mar 2018 00:53:00 GMT  
		Size: 12.2 MB (12150059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774af4b56f3a334039d30bb4b5204dee5bc4ed6cf595b1df0435a724c01580e9`  
		Last Modified: Thu, 15 Mar 2018 00:52:56 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9ca9ea1a1cbcb7906a1a018bdc33f411ee04b38ac82554f4ecbf87fc687dcd`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1fe6de224fd214834fd2e9e7e224f23e08874186e5d1937665a8537f949ffe`  
		Last Modified: Thu, 15 Mar 2018 00:52:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10.0`

```console
$ docker pull chronograf@sha256:d740f58729fec79db18fc7d0964d5e82f26a02733ed3cc656159c86db6321ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.3.10.0` - linux; amd64

```console
$ docker pull chronograf@sha256:0752216c75d73f1f4fbe231816091dac7996e0923e850e9e1b13a784cde4fd35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40316425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef005fc3db6f442f13c2062fbf27bf4a2620f31f52aff1e137229419364f594e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 05:18:30 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Mar 2018 05:18:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:18:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 05:18:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 05:18:44 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 05:18:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 05:18:44 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 05:18:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 05:18:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140b147761cb6ee0eb1b663d935b62b9162bf7849216922ddc17309fd569f44b`  
		Last Modified: Wed, 14 Mar 2018 05:19:38 GMT  
		Size: 13.3 MB (13302696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51a557ec35a70dcbc29b8a38c02f1298cd46af88afc798c8a6cf93b3b29c6a9`  
		Last Modified: Wed, 14 Mar 2018 05:19:36 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7ac12b7fc7d98935c38a0de912a99d08d572208d2c96a9ef00ff7a76e7a955`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a892d42a273ba6673884b4fb888a0ee7ef51fc7ee14f1d693024ddbc44126b`  
		Last Modified: Wed, 14 Mar 2018 05:19:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:5f1bf530564077baa5a8c6577f17f730d743405805656a73ae4680fbfb766907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35126258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8695ae7484691bf1f0f3f654d694ba5487f24b3d8b15d3bd1027cc42f3368866`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 15:54:12 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Mar 2018 15:54:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:54:27 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 15:54:28 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 15:54:28 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 15:54:28 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 15:54:29 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 15:54:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 15:54:30 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49a533398d3192bf14fbaff633d7dc2f74a31acb58a9ed3277e70533f19c64`  
		Last Modified: Wed, 14 Mar 2018 15:55:32 GMT  
		Size: 3.9 MB (3873124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4b03f87e2d4d7d15f32bf9a7c48b1e098a557cc7ce30e2700786a2d3b3c6b9`  
		Last Modified: Wed, 14 Mar 2018 15:55:34 GMT  
		Size: 12.0 MB (11951132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099c1d7a0462f750eaf9475e0c4d61cf0fe0edff5c2e0bffd3ae7898c95a4157`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4a9a34436817d56a68411c27ba8dcbc16fda573ee519f427b3ef99e63c35e9`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538210baca8c41f6f5316ce794fa24d9db782c64396655543e71f257dc786921`  
		Last Modified: Wed, 14 Mar 2018 15:55:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.3.10.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7a5836883847cbcbf06c12769faf5d4dfb40ba65d85b765ea6acd8d6378ae50e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36586660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc25e6cb10a4077becd51a90db54d193e92ee318a8cff25e1b2464c5a5224b57`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 00:50:44 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 15 Mar 2018 00:51:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:51:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 15 Mar 2018 00:51:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 15 Mar 2018 00:51:19 GMT
EXPOSE 8888/tcp
# Thu, 15 Mar 2018 00:51:19 GMT
VOLUME [/var/lib/chronograf]
# Thu, 15 Mar 2018 00:51:20 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 15 Mar 2018 00:51:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 00:51:21 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58eb2fd7358c7b362445f33821551b008f52123cc9744831dae645d10a787e14`  
		Last Modified: Thu, 15 Mar 2018 00:53:00 GMT  
		Size: 12.2 MB (12150059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774af4b56f3a334039d30bb4b5204dee5bc4ed6cf595b1df0435a724c01580e9`  
		Last Modified: Thu, 15 Mar 2018 00:52:56 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9ca9ea1a1cbcb7906a1a018bdc33f411ee04b38ac82554f4ecbf87fc687dcd`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1fe6de224fd214834fd2e9e7e224f23e08874186e5d1937665a8537f949ffe`  
		Last Modified: Thu, 15 Mar 2018 00:52:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10.0-alpine`

```console
$ docker pull chronograf@sha256:ece9abd619e4edeb317bed957bddef39ea92d103607aaa77a17ada92ab9dabcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.10.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:bd2edfb84db5afa31d6510d5f530b5f4b45a560c546cf2de8ff7c7901c396f4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8409265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c1851572525172e3869d747c6725f09914751304f2a46784df897ad0a834ce`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:48:35 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Feb 2018 21:22:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:23:00 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 14 Feb 2018 21:23:00 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Feb 2018 21:23:00 GMT
EXPOSE 8888/tcp
# Wed, 14 Feb 2018 21:23:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Feb 2018 21:23:01 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:23:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c5a03fb67210d1d359b69fdd12fec88c4fdc1157324f44561bc198b24fa66d`  
		Last Modified: Wed, 14 Feb 2018 21:27:14 GMT  
		Size: 6.0 MB (6041978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c67f2b9266f925b439545a02e9002b3026c98f5013bd0f41d5255ae088463`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214f33f4efa131975f1c9f2fc5b992d1084ca77c5f829688c30d0dab870cfaf6`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87b08846f1d67e1b44e61835ae2bc39c713857a26e7f2d2c0089be139d50556`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10-alpine`

```console
$ docker pull chronograf@sha256:ece9abd619e4edeb317bed957bddef39ea92d103607aaa77a17ada92ab9dabcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:bd2edfb84db5afa31d6510d5f530b5f4b45a560c546cf2de8ff7c7901c396f4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8409265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c1851572525172e3869d747c6725f09914751304f2a46784df897ad0a834ce`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:48:35 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Feb 2018 21:22:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:23:00 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 14 Feb 2018 21:23:00 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Feb 2018 21:23:00 GMT
EXPOSE 8888/tcp
# Wed, 14 Feb 2018 21:23:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Feb 2018 21:23:01 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:23:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c5a03fb67210d1d359b69fdd12fec88c4fdc1157324f44561bc198b24fa66d`  
		Last Modified: Wed, 14 Feb 2018 21:27:14 GMT  
		Size: 6.0 MB (6041978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c67f2b9266f925b439545a02e9002b3026c98f5013bd0f41d5255ae088463`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214f33f4efa131975f1c9f2fc5b992d1084ca77c5f829688c30d0dab870cfaf6`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87b08846f1d67e1b44e61835ae2bc39c713857a26e7f2d2c0089be139d50556`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:ece9abd619e4edeb317bed957bddef39ea92d103607aaa77a17ada92ab9dabcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:bd2edfb84db5afa31d6510d5f530b5f4b45a560c546cf2de8ff7c7901c396f4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8409265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c1851572525172e3869d747c6725f09914751304f2a46784df897ad0a834ce`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 Jan 2018 01:48:35 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Wed, 14 Feb 2018 21:22:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:23:00 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 14 Feb 2018 21:23:00 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Feb 2018 21:23:00 GMT
EXPOSE 8888/tcp
# Wed, 14 Feb 2018 21:23:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Feb 2018 21:23:01 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:23:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:23:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c5a03fb67210d1d359b69fdd12fec88c4fdc1157324f44561bc198b24fa66d`  
		Last Modified: Wed, 14 Feb 2018 21:27:14 GMT  
		Size: 6.0 MB (6041978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3c67f2b9266f925b439545a02e9002b3026c98f5013bd0f41d5255ae088463`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214f33f4efa131975f1c9f2fc5b992d1084ca77c5f829688c30d0dab870cfaf6`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87b08846f1d67e1b44e61835ae2bc39c713857a26e7f2d2c0089be139d50556`  
		Last Modified: Wed, 14 Feb 2018 21:27:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4`

```console
$ docker pull chronograf@sha256:db46e47f74d8242e9d6a94dc85cb61ed91a14c9841a1c9716103c83c2d6abd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4` - linux; amd64

```console
$ docker pull chronograf@sha256:b2953620e94dff4ca6b54129b8a16748c824405fb71a4efce72ea54e992105af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46487195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7185cbec401de4a45fda3124906bd46db577a987a67d038cb159bfc743d69905`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 10:36:55 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 10:37:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 10:37:08 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 10:37:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 10:37:09 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 10:37:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 10:37:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 10:37:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 10:37:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c59effe07e8d45099f527e6f408688c8a98bce7a36d731e7ea5232fe3edf6`  
		Last Modified: Thu, 05 Apr 2018 10:38:16 GMT  
		Size: 19.5 MB (19473462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7911c783e0a921f4b854721ff50aa70d872512805b61cb207fce702839df6be`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393c9a27063ee74b1f4bf0778e5ccdcf073003b740f6368c8fb99e042fec8bde`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be508cc254a89c05736fdd893dbe6163a64c251ee186988c53badd1789ccad8c`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1a499e1cecceed86876ed52f1d2627e0a7a55817a9dc9d961599bfd58bf49919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40903816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9832173a8b37cea915aaba59d1c8c3d0d8bdff534451c992cdfe635c89ee19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:02:59 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:03:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:03:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:03:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:03:19 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:03:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:03:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:03:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:03:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49a533398d3192bf14fbaff633d7dc2f74a31acb58a9ed3277e70533f19c64`  
		Last Modified: Wed, 14 Mar 2018 15:55:32 GMT  
		Size: 3.9 MB (3873124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640f221fd06a8ba76adb25b57547cfa8fa609058850b14efd153c0f1d0c4f4f6`  
		Last Modified: Thu, 05 Apr 2018 18:03:48 GMT  
		Size: 17.7 MB (17728687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f620fa7f91eb0c68256682978c729f4c6715fe16234d5a7d41f89381af0369`  
		Last Modified: Thu, 05 Apr 2018 18:03:45 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1e488e65eae045539ac88fd0fc929c32f9079a98069114aaac6d2db0fd8820`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeb2ad6fa3badeca38c84d1b853a324e020ef056ec2098fd6a12707c8d3d9ba`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1469590f1aabb897c50421deca64090927d771149cdbefa189faaf0ad6d63e86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42367612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38f4f2b8650d1e7a870cef84cd183efe561a7a36f5badcb6a5d72887744a6d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:11:58 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:12:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:12:48 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:12:49 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:12:50 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:12:51 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:12:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:12:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:12:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04362862cd338cf9938588d22ea48a12af8ebe819d15404e8cf166904cfa3c9a`  
		Last Modified: Thu, 05 Apr 2018 18:13:38 GMT  
		Size: 17.9 MB (17931009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45228f165c479aa9a54e0f0cfad6ca3bf66734ec1ebbfb69b273056756eeff92`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad4a9c3a920865e16d155b1c4d21c755eb22eb581e19efd53f4b4343af46e9a`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4452cbf117cfa30dcec60f3bc684372e57d18146dfaec76b622e13f17359f706`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4`

```console
$ docker pull chronograf@sha256:db46e47f74d8242e9d6a94dc85cb61ed91a14c9841a1c9716103c83c2d6abd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.4` - linux; amd64

```console
$ docker pull chronograf@sha256:b2953620e94dff4ca6b54129b8a16748c824405fb71a4efce72ea54e992105af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46487195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7185cbec401de4a45fda3124906bd46db577a987a67d038cb159bfc743d69905`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 10:36:55 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 10:37:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 10:37:08 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 10:37:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 10:37:09 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 10:37:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 10:37:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 10:37:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 10:37:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c59effe07e8d45099f527e6f408688c8a98bce7a36d731e7ea5232fe3edf6`  
		Last Modified: Thu, 05 Apr 2018 10:38:16 GMT  
		Size: 19.5 MB (19473462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7911c783e0a921f4b854721ff50aa70d872512805b61cb207fce702839df6be`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393c9a27063ee74b1f4bf0778e5ccdcf073003b740f6368c8fb99e042fec8bde`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be508cc254a89c05736fdd893dbe6163a64c251ee186988c53badd1789ccad8c`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1a499e1cecceed86876ed52f1d2627e0a7a55817a9dc9d961599bfd58bf49919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40903816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9832173a8b37cea915aaba59d1c8c3d0d8bdff534451c992cdfe635c89ee19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:02:59 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:03:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:03:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:03:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:03:19 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:03:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:03:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:03:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:03:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49a533398d3192bf14fbaff633d7dc2f74a31acb58a9ed3277e70533f19c64`  
		Last Modified: Wed, 14 Mar 2018 15:55:32 GMT  
		Size: 3.9 MB (3873124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640f221fd06a8ba76adb25b57547cfa8fa609058850b14efd153c0f1d0c4f4f6`  
		Last Modified: Thu, 05 Apr 2018 18:03:48 GMT  
		Size: 17.7 MB (17728687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f620fa7f91eb0c68256682978c729f4c6715fe16234d5a7d41f89381af0369`  
		Last Modified: Thu, 05 Apr 2018 18:03:45 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1e488e65eae045539ac88fd0fc929c32f9079a98069114aaac6d2db0fd8820`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeb2ad6fa3badeca38c84d1b853a324e020ef056ec2098fd6a12707c8d3d9ba`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1469590f1aabb897c50421deca64090927d771149cdbefa189faaf0ad6d63e86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42367612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38f4f2b8650d1e7a870cef84cd183efe561a7a36f5badcb6a5d72887744a6d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:11:58 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:12:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:12:48 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:12:49 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:12:50 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:12:51 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:12:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:12:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:12:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04362862cd338cf9938588d22ea48a12af8ebe819d15404e8cf166904cfa3c9a`  
		Last Modified: Thu, 05 Apr 2018 18:13:38 GMT  
		Size: 17.9 MB (17931009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45228f165c479aa9a54e0f0cfad6ca3bf66734ec1ebbfb69b273056756eeff92`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad4a9c3a920865e16d155b1c4d21c755eb22eb581e19efd53f4b4343af46e9a`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4452cbf117cfa30dcec60f3bc684372e57d18146dfaec76b622e13f17359f706`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4.0`

```console
$ docker pull chronograf@sha256:db46e47f74d8242e9d6a94dc85cb61ed91a14c9841a1c9716103c83c2d6abd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.4.0` - linux; amd64

```console
$ docker pull chronograf@sha256:b2953620e94dff4ca6b54129b8a16748c824405fb71a4efce72ea54e992105af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46487195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7185cbec401de4a45fda3124906bd46db577a987a67d038cb159bfc743d69905`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 10:36:55 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 10:37:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 10:37:08 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 10:37:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 10:37:09 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 10:37:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 10:37:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 10:37:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 10:37:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c59effe07e8d45099f527e6f408688c8a98bce7a36d731e7ea5232fe3edf6`  
		Last Modified: Thu, 05 Apr 2018 10:38:16 GMT  
		Size: 19.5 MB (19473462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7911c783e0a921f4b854721ff50aa70d872512805b61cb207fce702839df6be`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393c9a27063ee74b1f4bf0778e5ccdcf073003b740f6368c8fb99e042fec8bde`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be508cc254a89c05736fdd893dbe6163a64c251ee186988c53badd1789ccad8c`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1a499e1cecceed86876ed52f1d2627e0a7a55817a9dc9d961599bfd58bf49919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40903816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9832173a8b37cea915aaba59d1c8c3d0d8bdff534451c992cdfe635c89ee19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:02:59 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:03:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:03:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:03:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:03:19 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:03:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:03:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:03:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:03:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49a533398d3192bf14fbaff633d7dc2f74a31acb58a9ed3277e70533f19c64`  
		Last Modified: Wed, 14 Mar 2018 15:55:32 GMT  
		Size: 3.9 MB (3873124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640f221fd06a8ba76adb25b57547cfa8fa609058850b14efd153c0f1d0c4f4f6`  
		Last Modified: Thu, 05 Apr 2018 18:03:48 GMT  
		Size: 17.7 MB (17728687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f620fa7f91eb0c68256682978c729f4c6715fe16234d5a7d41f89381af0369`  
		Last Modified: Thu, 05 Apr 2018 18:03:45 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1e488e65eae045539ac88fd0fc929c32f9079a98069114aaac6d2db0fd8820`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeb2ad6fa3badeca38c84d1b853a324e020ef056ec2098fd6a12707c8d3d9ba`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1469590f1aabb897c50421deca64090927d771149cdbefa189faaf0ad6d63e86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42367612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38f4f2b8650d1e7a870cef84cd183efe561a7a36f5badcb6a5d72887744a6d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:11:58 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:12:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:12:48 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:12:49 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:12:50 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:12:51 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:12:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:12:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:12:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04362862cd338cf9938588d22ea48a12af8ebe819d15404e8cf166904cfa3c9a`  
		Last Modified: Thu, 05 Apr 2018 18:13:38 GMT  
		Size: 17.9 MB (17931009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45228f165c479aa9a54e0f0cfad6ca3bf66734ec1ebbfb69b273056756eeff92`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad4a9c3a920865e16d155b1c4d21c755eb22eb581e19efd53f4b4343af46e9a`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4452cbf117cfa30dcec60f3bc684372e57d18146dfaec76b622e13f17359f706`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4.0-alpine`

```console
$ docker pull chronograf@sha256:e312f39b350139141642608ed5fb7f8279bedc8a7a8c648572bccada1e8560f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.4.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:29639e9b5efbdadef02eefd7b739a1b6e301f89f9ca2bb5cf0b662e08966d3a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12585231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b515cb4b77e892338ae9fdd3c562335d6db0bdf65464da9111789cdb602cb30`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 05 Apr 2018 10:37:32 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 10:37:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 05 Apr 2018 10:37:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 10:37:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 10:37:42 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 10:37:43 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 10:37:43 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 05 Apr 2018 10:37:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 10:37:44 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb67a8227dcf6f93482b18409d8567aab1fc3f94c311512fbeb2fbd4919255f`  
		Last Modified: Thu, 05 Apr 2018 10:39:38 GMT  
		Size: 10.2 MB (10217937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05281024cc64da4d61c9e3d119908c072296e6ab87331d86fa29eb0967aacba9`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44349a52f2dbfb69600bec338c309bb971fa6ddeb192f3e4a927b428bd0ec78`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f18ae26fe291240b8861b8a732f78a052b1d871a49456421413d6ac4c2ee761`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4-alpine`

```console
$ docker pull chronograf@sha256:e312f39b350139141642608ed5fb7f8279bedc8a7a8c648572bccada1e8560f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:29639e9b5efbdadef02eefd7b739a1b6e301f89f9ca2bb5cf0b662e08966d3a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12585231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b515cb4b77e892338ae9fdd3c562335d6db0bdf65464da9111789cdb602cb30`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 05 Apr 2018 10:37:32 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 10:37:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 05 Apr 2018 10:37:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 10:37:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 10:37:42 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 10:37:43 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 10:37:43 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 05 Apr 2018 10:37:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 10:37:44 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb67a8227dcf6f93482b18409d8567aab1fc3f94c311512fbeb2fbd4919255f`  
		Last Modified: Thu, 05 Apr 2018 10:39:38 GMT  
		Size: 10.2 MB (10217937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05281024cc64da4d61c9e3d119908c072296e6ab87331d86fa29eb0967aacba9`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44349a52f2dbfb69600bec338c309bb971fa6ddeb192f3e4a927b428bd0ec78`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f18ae26fe291240b8861b8a732f78a052b1d871a49456421413d6ac4c2ee761`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4-alpine`

```console
$ docker pull chronograf@sha256:e312f39b350139141642608ed5fb7f8279bedc8a7a8c648572bccada1e8560f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:29639e9b5efbdadef02eefd7b739a1b6e301f89f9ca2bb5cf0b662e08966d3a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12585231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b515cb4b77e892338ae9fdd3c562335d6db0bdf65464da9111789cdb602cb30`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 05 Apr 2018 10:37:32 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 10:37:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 05 Apr 2018 10:37:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 10:37:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 10:37:42 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 10:37:43 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 10:37:43 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 05 Apr 2018 10:37:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 10:37:44 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb67a8227dcf6f93482b18409d8567aab1fc3f94c311512fbeb2fbd4919255f`  
		Last Modified: Thu, 05 Apr 2018 10:39:38 GMT  
		Size: 10.2 MB (10217937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05281024cc64da4d61c9e3d119908c072296e6ab87331d86fa29eb0967aacba9`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44349a52f2dbfb69600bec338c309bb971fa6ddeb192f3e4a927b428bd0ec78`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f18ae26fe291240b8861b8a732f78a052b1d871a49456421413d6ac4c2ee761`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:e312f39b350139141642608ed5fb7f8279bedc8a7a8c648572bccada1e8560f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:29639e9b5efbdadef02eefd7b739a1b6e301f89f9ca2bb5cf0b662e08966d3a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12585231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b515cb4b77e892338ae9fdd3c562335d6db0bdf65464da9111789cdb602cb30`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 05 Apr 2018 10:37:32 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 10:37:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 05 Apr 2018 10:37:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 10:37:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 10:37:42 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 10:37:43 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 10:37:43 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 05 Apr 2018 10:37:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 10:37:44 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb67a8227dcf6f93482b18409d8567aab1fc3f94c311512fbeb2fbd4919255f`  
		Last Modified: Thu, 05 Apr 2018 10:39:38 GMT  
		Size: 10.2 MB (10217937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05281024cc64da4d61c9e3d119908c072296e6ab87331d86fa29eb0967aacba9`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44349a52f2dbfb69600bec338c309bb971fa6ddeb192f3e4a927b428bd0ec78`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f18ae26fe291240b8861b8a732f78a052b1d871a49456421413d6ac4c2ee761`  
		Last Modified: Thu, 05 Apr 2018 10:39:36 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:db46e47f74d8242e9d6a94dc85cb61ed91a14c9841a1c9716103c83c2d6abd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:b2953620e94dff4ca6b54129b8a16748c824405fb71a4efce72ea54e992105af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46487195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7185cbec401de4a45fda3124906bd46db577a987a67d038cb159bfc743d69905`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 10:36:55 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 10:37:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 10:37:08 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 10:37:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 10:37:09 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 10:37:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 10:37:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 10:37:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 10:37:10 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c59effe07e8d45099f527e6f408688c8a98bce7a36d731e7ea5232fe3edf6`  
		Last Modified: Thu, 05 Apr 2018 10:38:16 GMT  
		Size: 19.5 MB (19473462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7911c783e0a921f4b854721ff50aa70d872512805b61cb207fce702839df6be`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393c9a27063ee74b1f4bf0778e5ccdcf073003b740f6368c8fb99e042fec8bde`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be508cc254a89c05736fdd893dbe6163a64c251ee186988c53badd1789ccad8c`  
		Last Modified: Thu, 05 Apr 2018 10:38:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1a499e1cecceed86876ed52f1d2627e0a7a55817a9dc9d961599bfd58bf49919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40903816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9832173a8b37cea915aaba59d1c8c3d0d8bdff534451c992cdfe635c89ee19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:02:59 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:03:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:03:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:03:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:03:19 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:03:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:03:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:03:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:03:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49a533398d3192bf14fbaff633d7dc2f74a31acb58a9ed3277e70533f19c64`  
		Last Modified: Wed, 14 Mar 2018 15:55:32 GMT  
		Size: 3.9 MB (3873124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640f221fd06a8ba76adb25b57547cfa8fa609058850b14efd153c0f1d0c4f4f6`  
		Last Modified: Thu, 05 Apr 2018 18:03:48 GMT  
		Size: 17.7 MB (17728687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f620fa7f91eb0c68256682978c729f4c6715fe16234d5a7d41f89381af0369`  
		Last Modified: Thu, 05 Apr 2018 18:03:45 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1e488e65eae045539ac88fd0fc929c32f9079a98069114aaac6d2db0fd8820`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeb2ad6fa3badeca38c84d1b853a324e020ef056ec2098fd6a12707c8d3d9ba`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1469590f1aabb897c50421deca64090927d771149cdbefa189faaf0ad6d63e86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42367612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38f4f2b8650d1e7a870cef84cd183efe561a7a36f5badcb6a5d72887744a6d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:11:58 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:12:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:12:48 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:12:49 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:12:50 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:12:51 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:12:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:12:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:12:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04362862cd338cf9938588d22ea48a12af8ebe819d15404e8cf166904cfa3c9a`  
		Last Modified: Thu, 05 Apr 2018 18:13:38 GMT  
		Size: 17.9 MB (17931009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45228f165c479aa9a54e0f0cfad6ca3bf66734ec1ebbfb69b273056756eeff92`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad4a9c3a920865e16d155b1c4d21c755eb22eb581e19efd53f4b4343af46e9a`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4452cbf117cfa30dcec60f3bc684372e57d18146dfaec76b622e13f17359f706`  
		Last Modified: Thu, 05 Apr 2018 18:13:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
