<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.10`](#chronograf1310)
-	[`chronograf:1.3.10.0`](#chronograf13100)
-	[`chronograf:1.3.10.0-alpine`](#chronograf13100-alpine)
-	[`chronograf:1.3.10-alpine`](#chronograf1310-alpine)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.4`](#chronograf14)
-	[`chronograf:1.4.2`](#chronograf142)
-	[`chronograf:1.4.2.3`](#chronograf1423)
-	[`chronograf:1.4.2.3-alpine`](#chronograf1423-alpine)
-	[`chronograf:1.4.2-alpine`](#chronograf142-alpine)
-	[`chronograf:1.4-alpine`](#chronograf14-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:5f98a1a696b154a397d3f0d03cae7a83b1fb988a2d31b224c3573481fd5eba82
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
$ docker pull chronograf@sha256:fc34da5e73c3650b9412f87b6c10818d662ddd087ed10e5e3952b2347c4d7f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36596278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf7d3d5e98745c8d3e3ccc615229fb145d743fa075c6c714a29c9bc38b9de5f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 19:20:45 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 15 Feb 2018 19:21:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:21:32 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 15 Feb 2018 19:21:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 15 Feb 2018 19:21:35 GMT
EXPOSE 8888/tcp
# Thu, 15 Feb 2018 19:21:36 GMT
VOLUME [/var/lib/chronograf]
# Thu, 15 Feb 2018 19:21:38 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 15 Feb 2018 19:21:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 19:21:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6543186046ee46d4a5ac1f4eb8141b92f0c7ae54cca0715b7d7d16ffdff1e31b`  
		Last Modified: Thu, 15 Feb 2018 19:23:22 GMT  
		Size: 4.1 MB (4075010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d78b8af2479ec1c99ca6647bcd4789d820efd4715f1f0fb1fa5af31ded85ff`  
		Last Modified: Thu, 15 Feb 2018 19:23:25 GMT  
		Size: 12.1 MB (12149442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab9a6a7015cb053e499c966be12354b6a6cada9fc940196f3ff0bcb1b09d91`  
		Last Modified: Thu, 15 Feb 2018 19:23:21 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05731b6e921c68bd02b40728ee3b3b3c9f57688e7d58e3709693f2b534ed2f`  
		Last Modified: Thu, 15 Feb 2018 19:23:20 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86624d04ae2e9e52c97567eb5ea5293fb854c4879132c957bfdc69978f8853e`  
		Last Modified: Thu, 15 Feb 2018 19:23:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10`

```console
$ docker pull chronograf@sha256:5f98a1a696b154a397d3f0d03cae7a83b1fb988a2d31b224c3573481fd5eba82
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
$ docker pull chronograf@sha256:fc34da5e73c3650b9412f87b6c10818d662ddd087ed10e5e3952b2347c4d7f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36596278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf7d3d5e98745c8d3e3ccc615229fb145d743fa075c6c714a29c9bc38b9de5f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 19:20:45 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 15 Feb 2018 19:21:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:21:32 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 15 Feb 2018 19:21:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 15 Feb 2018 19:21:35 GMT
EXPOSE 8888/tcp
# Thu, 15 Feb 2018 19:21:36 GMT
VOLUME [/var/lib/chronograf]
# Thu, 15 Feb 2018 19:21:38 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 15 Feb 2018 19:21:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 19:21:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6543186046ee46d4a5ac1f4eb8141b92f0c7ae54cca0715b7d7d16ffdff1e31b`  
		Last Modified: Thu, 15 Feb 2018 19:23:22 GMT  
		Size: 4.1 MB (4075010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d78b8af2479ec1c99ca6647bcd4789d820efd4715f1f0fb1fa5af31ded85ff`  
		Last Modified: Thu, 15 Feb 2018 19:23:25 GMT  
		Size: 12.1 MB (12149442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab9a6a7015cb053e499c966be12354b6a6cada9fc940196f3ff0bcb1b09d91`  
		Last Modified: Thu, 15 Feb 2018 19:23:21 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05731b6e921c68bd02b40728ee3b3b3c9f57688e7d58e3709693f2b534ed2f`  
		Last Modified: Thu, 15 Feb 2018 19:23:20 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86624d04ae2e9e52c97567eb5ea5293fb854c4879132c957bfdc69978f8853e`  
		Last Modified: Thu, 15 Feb 2018 19:23:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.10.0`

```console
$ docker pull chronograf@sha256:5f98a1a696b154a397d3f0d03cae7a83b1fb988a2d31b224c3573481fd5eba82
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
$ docker pull chronograf@sha256:fc34da5e73c3650b9412f87b6c10818d662ddd087ed10e5e3952b2347c4d7f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36596278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf7d3d5e98745c8d3e3ccc615229fb145d743fa075c6c714a29c9bc38b9de5f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 19:20:45 GMT
ENV CHRONOGRAF_VERSION=1.3.10.0
# Thu, 15 Feb 2018 19:21:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:21:32 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 15 Feb 2018 19:21:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 15 Feb 2018 19:21:35 GMT
EXPOSE 8888/tcp
# Thu, 15 Feb 2018 19:21:36 GMT
VOLUME [/var/lib/chronograf]
# Thu, 15 Feb 2018 19:21:38 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 15 Feb 2018 19:21:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 19:21:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6543186046ee46d4a5ac1f4eb8141b92f0c7ae54cca0715b7d7d16ffdff1e31b`  
		Last Modified: Thu, 15 Feb 2018 19:23:22 GMT  
		Size: 4.1 MB (4075010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d78b8af2479ec1c99ca6647bcd4789d820efd4715f1f0fb1fa5af31ded85ff`  
		Last Modified: Thu, 15 Feb 2018 19:23:25 GMT  
		Size: 12.1 MB (12149442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab9a6a7015cb053e499c966be12354b6a6cada9fc940196f3ff0bcb1b09d91`  
		Last Modified: Thu, 15 Feb 2018 19:23:21 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b05731b6e921c68bd02b40728ee3b3b3c9f57688e7d58e3709693f2b534ed2f`  
		Last Modified: Thu, 15 Feb 2018 19:23:20 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86624d04ae2e9e52c97567eb5ea5293fb854c4879132c957bfdc69978f8853e`  
		Last Modified: Thu, 15 Feb 2018 19:23:20 GMT  
		Size: 240.0 B  
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
$ docker pull chronograf@sha256:2b40c0b3d44dab979fd43c894f36f5f402433c2e6019625e4139a482ff012f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4` - linux; amd64

```console
$ docker pull chronograf@sha256:6216bd41c1cc00ea8329d024de24984696f2fe6efeaa3ce5b80c3b80edcc478e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47111531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c88b323debf221c8d4ff311c77bac6d6ffc90cde6d4049854d10ca8973072c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 05:19:02 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 05:19:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 05:19:13 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 05:19:14 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 05:19:14 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 05:19:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 05:19:15 GMT
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
	-	`sha256:3f2c1b623fe97a69bfa1fad51db4fc0f694e2d03a62b80146fee23af279936ab`  
		Last Modified: Wed, 14 Mar 2018 05:20:35 GMT  
		Size: 20.1 MB (20097805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51ffc67a50d8cf0c47a3bc74c74ef496b84b5dad4f2f043007a3dccac4f491f`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da5293aac87c81ef9fca3a2f623a5cae99276100a96e1b437cce085970b282a`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8a55a8f25869048fcf367de3ac41d7999c3a2bc1edfce5a1e8745b04597d9`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:d6d9b0f088ea692007d6e4e39b92a0bdc2a79c183dbbf71cb9863470c047ba40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41527813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64e023b652b5b10d820db26a372a3f8831138e4c35fd722b59f281759cfe842`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 15:54:45 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 15:55:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:55:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 15:55:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 15:55:06 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 15:55:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 15:55:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 15:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 15:55:08 GMT
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
	-	`sha256:83f64998636c36ffdd7dd3e3256d800b7dacf8e771ccf5bc86e3afc1757f72f4`  
		Last Modified: Wed, 14 Mar 2018 15:56:26 GMT  
		Size: 18.4 MB (18352679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5231fc247acf87ac43c03ac10a399686d0c96aa5efba1b54ef2737d9696ff44f`  
		Last Modified: Wed, 14 Mar 2018 15:56:21 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d127b48e6dace27917995e881227c48a23863e9da7058912c92c57303eaa024b`  
		Last Modified: Wed, 14 Mar 2018 15:56:21 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e20fbd474dedade6b2ce42eb78172a26f24ec3b890b5ed1f302c3f91bb67ac`  
		Last Modified: Wed, 14 Mar 2018 15:56:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8e459ef79cc1a2f8545163950671ccdad062421ca3c6f10a2a343010ac248eb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64990e01fff618e9b731d741a3c8aee75dce055411dd6a535eabbc9481e1c8f0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 09 Mar 2018 23:22:12 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 23:22:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Mar 2018 23:22:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 23:22:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 23:22:51 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 23:22:51 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 23:22:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 09 Mar 2018 23:22:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 23:22:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6543186046ee46d4a5ac1f4eb8141b92f0c7ae54cca0715b7d7d16ffdff1e31b`  
		Last Modified: Thu, 15 Feb 2018 19:23:22 GMT  
		Size: 4.1 MB (4075010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9d398c90f54ecfec4496195187d8553c22f00e9f2da899d21a45c1528729f`  
		Last Modified: Fri, 09 Mar 2018 23:23:25 GMT  
		Size: 18.6 MB (18555427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0c9c886b307d5cd08778e4c2806f6a68a2d0e982d07251f43367a29e6f37d`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f0e72119e4a9152cc1034978bb9b5bcab167e5159745341d6056373b2b7f53`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b191568c2e66925ce50c579fc706295df738c642a03a568c8253d72cd3bea8f4`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.2`

```console
$ docker pull chronograf@sha256:2b40c0b3d44dab979fd43c894f36f5f402433c2e6019625e4139a482ff012f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.2` - linux; amd64

```console
$ docker pull chronograf@sha256:6216bd41c1cc00ea8329d024de24984696f2fe6efeaa3ce5b80c3b80edcc478e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47111531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c88b323debf221c8d4ff311c77bac6d6ffc90cde6d4049854d10ca8973072c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 05:19:02 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 05:19:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 05:19:13 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 05:19:14 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 05:19:14 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 05:19:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 05:19:15 GMT
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
	-	`sha256:3f2c1b623fe97a69bfa1fad51db4fc0f694e2d03a62b80146fee23af279936ab`  
		Last Modified: Wed, 14 Mar 2018 05:20:35 GMT  
		Size: 20.1 MB (20097805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51ffc67a50d8cf0c47a3bc74c74ef496b84b5dad4f2f043007a3dccac4f491f`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da5293aac87c81ef9fca3a2f623a5cae99276100a96e1b437cce085970b282a`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8a55a8f25869048fcf367de3ac41d7999c3a2bc1edfce5a1e8745b04597d9`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:d6d9b0f088ea692007d6e4e39b92a0bdc2a79c183dbbf71cb9863470c047ba40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41527813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64e023b652b5b10d820db26a372a3f8831138e4c35fd722b59f281759cfe842`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 15:54:45 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 15:55:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:55:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 15:55:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 15:55:06 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 15:55:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 15:55:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 15:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 15:55:08 GMT
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
	-	`sha256:83f64998636c36ffdd7dd3e3256d800b7dacf8e771ccf5bc86e3afc1757f72f4`  
		Last Modified: Wed, 14 Mar 2018 15:56:26 GMT  
		Size: 18.4 MB (18352679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5231fc247acf87ac43c03ac10a399686d0c96aa5efba1b54ef2737d9696ff44f`  
		Last Modified: Wed, 14 Mar 2018 15:56:21 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d127b48e6dace27917995e881227c48a23863e9da7058912c92c57303eaa024b`  
		Last Modified: Wed, 14 Mar 2018 15:56:21 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e20fbd474dedade6b2ce42eb78172a26f24ec3b890b5ed1f302c3f91bb67ac`  
		Last Modified: Wed, 14 Mar 2018 15:56:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8e459ef79cc1a2f8545163950671ccdad062421ca3c6f10a2a343010ac248eb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64990e01fff618e9b731d741a3c8aee75dce055411dd6a535eabbc9481e1c8f0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 09 Mar 2018 23:22:12 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 23:22:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Mar 2018 23:22:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 23:22:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 23:22:51 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 23:22:51 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 23:22:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 09 Mar 2018 23:22:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 23:22:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6543186046ee46d4a5ac1f4eb8141b92f0c7ae54cca0715b7d7d16ffdff1e31b`  
		Last Modified: Thu, 15 Feb 2018 19:23:22 GMT  
		Size: 4.1 MB (4075010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9d398c90f54ecfec4496195187d8553c22f00e9f2da899d21a45c1528729f`  
		Last Modified: Fri, 09 Mar 2018 23:23:25 GMT  
		Size: 18.6 MB (18555427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0c9c886b307d5cd08778e4c2806f6a68a2d0e982d07251f43367a29e6f37d`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f0e72119e4a9152cc1034978bb9b5bcab167e5159745341d6056373b2b7f53`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b191568c2e66925ce50c579fc706295df738c642a03a568c8253d72cd3bea8f4`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.2.3`

```console
$ docker pull chronograf@sha256:2b40c0b3d44dab979fd43c894f36f5f402433c2e6019625e4139a482ff012f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.2.3` - linux; amd64

```console
$ docker pull chronograf@sha256:6216bd41c1cc00ea8329d024de24984696f2fe6efeaa3ce5b80c3b80edcc478e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47111531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c88b323debf221c8d4ff311c77bac6d6ffc90cde6d4049854d10ca8973072c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 05:19:02 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 05:19:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 05:19:13 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 05:19:14 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 05:19:14 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 05:19:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 05:19:15 GMT
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
	-	`sha256:3f2c1b623fe97a69bfa1fad51db4fc0f694e2d03a62b80146fee23af279936ab`  
		Last Modified: Wed, 14 Mar 2018 05:20:35 GMT  
		Size: 20.1 MB (20097805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51ffc67a50d8cf0c47a3bc74c74ef496b84b5dad4f2f043007a3dccac4f491f`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da5293aac87c81ef9fca3a2f623a5cae99276100a96e1b437cce085970b282a`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8a55a8f25869048fcf367de3ac41d7999c3a2bc1edfce5a1e8745b04597d9`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.2.3` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:d6d9b0f088ea692007d6e4e39b92a0bdc2a79c183dbbf71cb9863470c047ba40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41527813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64e023b652b5b10d820db26a372a3f8831138e4c35fd722b59f281759cfe842`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 15:54:45 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 15:55:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:55:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 15:55:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 15:55:06 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 15:55:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 15:55:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 15:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 15:55:08 GMT
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
	-	`sha256:83f64998636c36ffdd7dd3e3256d800b7dacf8e771ccf5bc86e3afc1757f72f4`  
		Last Modified: Wed, 14 Mar 2018 15:56:26 GMT  
		Size: 18.4 MB (18352679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5231fc247acf87ac43c03ac10a399686d0c96aa5efba1b54ef2737d9696ff44f`  
		Last Modified: Wed, 14 Mar 2018 15:56:21 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d127b48e6dace27917995e881227c48a23863e9da7058912c92c57303eaa024b`  
		Last Modified: Wed, 14 Mar 2018 15:56:21 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e20fbd474dedade6b2ce42eb78172a26f24ec3b890b5ed1f302c3f91bb67ac`  
		Last Modified: Wed, 14 Mar 2018 15:56:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.2.3` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8e459ef79cc1a2f8545163950671ccdad062421ca3c6f10a2a343010ac248eb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64990e01fff618e9b731d741a3c8aee75dce055411dd6a535eabbc9481e1c8f0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 09 Mar 2018 23:22:12 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 23:22:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Mar 2018 23:22:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 23:22:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 23:22:51 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 23:22:51 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 23:22:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 09 Mar 2018 23:22:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 23:22:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6543186046ee46d4a5ac1f4eb8141b92f0c7ae54cca0715b7d7d16ffdff1e31b`  
		Last Modified: Thu, 15 Feb 2018 19:23:22 GMT  
		Size: 4.1 MB (4075010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9d398c90f54ecfec4496195187d8553c22f00e9f2da899d21a45c1528729f`  
		Last Modified: Fri, 09 Mar 2018 23:23:25 GMT  
		Size: 18.6 MB (18555427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0c9c886b307d5cd08778e4c2806f6a68a2d0e982d07251f43367a29e6f37d`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f0e72119e4a9152cc1034978bb9b5bcab167e5159745341d6056373b2b7f53`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b191568c2e66925ce50c579fc706295df738c642a03a568c8253d72cd3bea8f4`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.2.3-alpine`

```console
$ docker pull chronograf@sha256:51812c47d09d76a1c78b179737f4feb113831947685921f876a4bde5b3191f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.2.3-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:37facbdd59d0f1f2b167efa2fbefbe61f1ea1e4b66011d6c16dae51826c46b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13219567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fddf8e98db2e95dbc8871e6510335d6eaad174826a8f927087af1a925e2943a`
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
# Fri, 09 Mar 2018 22:02:29 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 22:02:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 09 Mar 2018 22:02:37 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 22:02:38 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 22:02:38 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 22:02:38 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 22:02:39 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 09 Mar 2018 22:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 22:02:39 GMT
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
	-	`sha256:047085d60754b68d796d868fe737407bffa517430da669f38e043fc3417356fd`  
		Last Modified: Fri, 09 Mar 2018 22:04:13 GMT  
		Size: 10.9 MB (10852276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b409a173c0b62db14245b24248c0828d066d26160aa5e733551647ce65444ef9`  
		Last Modified: Fri, 09 Mar 2018 22:04:12 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e3b22f301bdec378953437016527775182a20ebed88efab1c23ab4cc62191`  
		Last Modified: Fri, 09 Mar 2018 22:04:11 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa9b47e17546740cb12f65b31f2d4668f99018f79aa6898621e851327e3564c`  
		Last Modified: Fri, 09 Mar 2018 22:04:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.2-alpine`

```console
$ docker pull chronograf@sha256:51812c47d09d76a1c78b179737f4feb113831947685921f876a4bde5b3191f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:37facbdd59d0f1f2b167efa2fbefbe61f1ea1e4b66011d6c16dae51826c46b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13219567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fddf8e98db2e95dbc8871e6510335d6eaad174826a8f927087af1a925e2943a`
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
# Fri, 09 Mar 2018 22:02:29 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 22:02:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 09 Mar 2018 22:02:37 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 22:02:38 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 22:02:38 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 22:02:38 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 22:02:39 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 09 Mar 2018 22:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 22:02:39 GMT
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
	-	`sha256:047085d60754b68d796d868fe737407bffa517430da669f38e043fc3417356fd`  
		Last Modified: Fri, 09 Mar 2018 22:04:13 GMT  
		Size: 10.9 MB (10852276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b409a173c0b62db14245b24248c0828d066d26160aa5e733551647ce65444ef9`  
		Last Modified: Fri, 09 Mar 2018 22:04:12 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e3b22f301bdec378953437016527775182a20ebed88efab1c23ab4cc62191`  
		Last Modified: Fri, 09 Mar 2018 22:04:11 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa9b47e17546740cb12f65b31f2d4668f99018f79aa6898621e851327e3564c`  
		Last Modified: Fri, 09 Mar 2018 22:04:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4-alpine`

```console
$ docker pull chronograf@sha256:51812c47d09d76a1c78b179737f4feb113831947685921f876a4bde5b3191f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:37facbdd59d0f1f2b167efa2fbefbe61f1ea1e4b66011d6c16dae51826c46b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13219567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fddf8e98db2e95dbc8871e6510335d6eaad174826a8f927087af1a925e2943a`
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
# Fri, 09 Mar 2018 22:02:29 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 22:02:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 09 Mar 2018 22:02:37 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 22:02:38 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 22:02:38 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 22:02:38 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 22:02:39 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 09 Mar 2018 22:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 22:02:39 GMT
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
	-	`sha256:047085d60754b68d796d868fe737407bffa517430da669f38e043fc3417356fd`  
		Last Modified: Fri, 09 Mar 2018 22:04:13 GMT  
		Size: 10.9 MB (10852276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b409a173c0b62db14245b24248c0828d066d26160aa5e733551647ce65444ef9`  
		Last Modified: Fri, 09 Mar 2018 22:04:12 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e3b22f301bdec378953437016527775182a20ebed88efab1c23ab4cc62191`  
		Last Modified: Fri, 09 Mar 2018 22:04:11 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa9b47e17546740cb12f65b31f2d4668f99018f79aa6898621e851327e3564c`  
		Last Modified: Fri, 09 Mar 2018 22:04:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:51812c47d09d76a1c78b179737f4feb113831947685921f876a4bde5b3191f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:37facbdd59d0f1f2b167efa2fbefbe61f1ea1e4b66011d6c16dae51826c46b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13219567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fddf8e98db2e95dbc8871e6510335d6eaad174826a8f927087af1a925e2943a`
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
# Fri, 09 Mar 2018 22:02:29 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 22:02:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 09 Mar 2018 22:02:37 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 22:02:38 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 22:02:38 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 22:02:38 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 22:02:39 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 09 Mar 2018 22:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 22:02:39 GMT
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
	-	`sha256:047085d60754b68d796d868fe737407bffa517430da669f38e043fc3417356fd`  
		Last Modified: Fri, 09 Mar 2018 22:04:13 GMT  
		Size: 10.9 MB (10852276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b409a173c0b62db14245b24248c0828d066d26160aa5e733551647ce65444ef9`  
		Last Modified: Fri, 09 Mar 2018 22:04:12 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e3b22f301bdec378953437016527775182a20ebed88efab1c23ab4cc62191`  
		Last Modified: Fri, 09 Mar 2018 22:04:11 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa9b47e17546740cb12f65b31f2d4668f99018f79aa6898621e851327e3564c`  
		Last Modified: Fri, 09 Mar 2018 22:04:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:2b40c0b3d44dab979fd43c894f36f5f402433c2e6019625e4139a482ff012f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:6216bd41c1cc00ea8329d024de24984696f2fe6efeaa3ce5b80c3b80edcc478e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47111531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c88b323debf221c8d4ff311c77bac6d6ffc90cde6d4049854d10ca8973072c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 05:19:02 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 05:19:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 05:19:13 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 05:19:14 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 05:19:14 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 05:19:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 05:19:15 GMT
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
	-	`sha256:3f2c1b623fe97a69bfa1fad51db4fc0f694e2d03a62b80146fee23af279936ab`  
		Last Modified: Wed, 14 Mar 2018 05:20:35 GMT  
		Size: 20.1 MB (20097805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51ffc67a50d8cf0c47a3bc74c74ef496b84b5dad4f2f043007a3dccac4f491f`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da5293aac87c81ef9fca3a2f623a5cae99276100a96e1b437cce085970b282a`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8a55a8f25869048fcf367de3ac41d7999c3a2bc1edfce5a1e8745b04597d9`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:d6d9b0f088ea692007d6e4e39b92a0bdc2a79c183dbbf71cb9863470c047ba40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41527813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64e023b652b5b10d820db26a372a3f8831138e4c35fd722b59f281759cfe842`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 15:54:45 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 15:55:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 15:55:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 15:55:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 15:55:06 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 15:55:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 15:55:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 15:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 15:55:08 GMT
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
	-	`sha256:83f64998636c36ffdd7dd3e3256d800b7dacf8e771ccf5bc86e3afc1757f72f4`  
		Last Modified: Wed, 14 Mar 2018 15:56:26 GMT  
		Size: 18.4 MB (18352679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5231fc247acf87ac43c03ac10a399686d0c96aa5efba1b54ef2737d9696ff44f`  
		Last Modified: Wed, 14 Mar 2018 15:56:21 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d127b48e6dace27917995e881227c48a23863e9da7058912c92c57303eaa024b`  
		Last Modified: Wed, 14 Mar 2018 15:56:21 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e20fbd474dedade6b2ce42eb78172a26f24ec3b890b5ed1f302c3f91bb67ac`  
		Last Modified: Wed, 14 Mar 2018 15:56:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8e459ef79cc1a2f8545163950671ccdad062421ca3c6f10a2a343010ac248eb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64990e01fff618e9b731d741a3c8aee75dce055411dd6a535eabbc9481e1c8f0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 09 Mar 2018 23:22:12 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 23:22:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Mar 2018 23:22:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 23:22:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 23:22:51 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 23:22:51 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 23:22:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 09 Mar 2018 23:22:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 23:22:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6543186046ee46d4a5ac1f4eb8141b92f0c7ae54cca0715b7d7d16ffdff1e31b`  
		Last Modified: Thu, 15 Feb 2018 19:23:22 GMT  
		Size: 4.1 MB (4075010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9d398c90f54ecfec4496195187d8553c22f00e9f2da899d21a45c1528729f`  
		Last Modified: Fri, 09 Mar 2018 23:23:25 GMT  
		Size: 18.6 MB (18555427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0c9c886b307d5cd08778e4c2806f6a68a2d0e982d07251f43367a29e6f37d`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f0e72119e4a9152cc1034978bb9b5bcab167e5159745341d6056373b2b7f53`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b191568c2e66925ce50c579fc706295df738c642a03a568c8253d72cd3bea8f4`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
