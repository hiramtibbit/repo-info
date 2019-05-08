<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.5`](#chronograf15)
-	[`chronograf:1.5.0`](#chronograf150)
-	[`chronograf:1.5.0.1`](#chronograf1501)
-	[`chronograf:1.5.0.1-alpine`](#chronograf1501-alpine)
-	[`chronograf:1.5.0-alpine`](#chronograf150-alpine)
-	[`chronograf:1.5-alpine`](#chronograf15-alpine)
-	[`chronograf:1.6`](#chronograf16)
-	[`chronograf:1.6.2`](#chronograf162)
-	[`chronograf:1.6.2-alpine`](#chronograf162-alpine)
-	[`chronograf:1.6-alpine`](#chronograf16-alpine)
-	[`chronograf:1.7`](#chronograf17)
-	[`chronograf:1.7.11`](#chronograf1711)
-	[`chronograf:1.7.11-alpine`](#chronograf1711-alpine)
-	[`chronograf:1.7-alpine`](#chronograf17-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:15c60adeb1b6340dd21867a51d8336aeed82438075a3b28ccce104e5672d4f86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:2cc6b91a1d886cf45f87396517ab1b1425d19ca1017b8fc4158c7ebdce424464
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49070942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9aa453ef59439cc646e4d65a3a36b77c5a5113d67322408cb61f79376bfc8fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:18:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 01:18:41 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 08 May 2019 01:18:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 01:18:54 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 01:18:54 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 01:18:54 GMT
EXPOSE 8888
# Wed, 08 May 2019 01:18:54 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 01:18:55 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 01:18:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:18:55 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ab1d26348eec33eab9995bdecc32e75804dedc7a6830e6d8295c0fc3b45af7`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 4.5 MB (4503501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1190b9ed7dfc2a56619309cb07afe7cbbc69e6c3badc5d232cac36389c7e7e3e`  
		Last Modified: Wed, 08 May 2019 01:20:03 GMT  
		Size: 22.1 MB (22053691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c287a29d20e07c39a84a587937ba722038d6ef5a68aa990758ef582cf54480`  
		Last Modified: Wed, 08 May 2019 01:19:58 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7ea59c998ef584d98c6bda30426dcb9c86b8d4b1ca4507f2365b69ed13c276`  
		Last Modified: Wed, 08 May 2019 01:19:58 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4a83a162cf48a006ae71ebf25ebb236ee8ffb48b238992dbed61b29fbad00b`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:496d469c50d78710c7bcac4d8a9e17004454640250868c829a8291a475888799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43640180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadb3da00de130c4d30c64a72a17c5cd2f0dd5ab25fd11ee3d6719543ba57f3d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 12:30:16 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Mar 2019 12:30:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:30:36 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 12:30:37 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 12:30:37 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 12:30:38 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 12:30:38 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 12:30:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 12:30:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e9c0fe89282f6c94ede97ca99f317f7e90397d7d3e65d34f5ed1e4e80cc30`  
		Last Modified: Wed, 27 Mar 2019 12:32:01 GMT  
		Size: 20.5 MB (20456143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0544f463415b2b209ee36f2e2080dfdad8529c16bcfbad0af27863537969dfcd`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f499d7ff7f16b7a5788b6f3e26cf7ad208df0ff137025f189788fbe06563e35`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4f8a8133bf24aecc4f1f27ae6e2e41620b54d702f7370a23e871743dd37e7`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:80d23775b1cc6f1fc6f2ff8e2ec568a97d210bdf4bbca8842aed8845fee69101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45103613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8190ea36c882ef5eab24d2a53d06637ed7add7c627fae9be5644836a6a1b86da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:09:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 12:09:58 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 08 May 2019 12:10:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:10:31 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 12:10:32 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 12:10:33 GMT
EXPOSE 8888
# Wed, 08 May 2019 12:10:33 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 12:10:34 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 12:10:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 12:10:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbccf591ff8531c0bb5e2a99aff0b918bb350e3dc7ed7feb6fed30f477be3b4a`  
		Last Modified: Wed, 08 May 2019 12:13:01 GMT  
		Size: 4.1 MB (4079786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1e6a0cc5fae1a11d50296dae17eaaa9c2c64f08d77a1157d314005bf7eb3ff`  
		Last Modified: Wed, 08 May 2019 12:13:09 GMT  
		Size: 20.7 MB (20665611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4d57191fa28103d9aefca456786e84152c66c6c77a775074d32dd4fcca0aa`  
		Last Modified: Wed, 08 May 2019 12:12:59 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3fc1d6fbb5fce675b76396a648b36fa5e7d7e353005da378c130da18ff26d6`  
		Last Modified: Wed, 08 May 2019 12:12:59 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1814b742701ef566f76b93e4c65dd75a961555b03bb45f436f266cb4dd437c4b`  
		Last Modified: Wed, 08 May 2019 12:13:00 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:15c60adeb1b6340dd21867a51d8336aeed82438075a3b28ccce104e5672d4f86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:2cc6b91a1d886cf45f87396517ab1b1425d19ca1017b8fc4158c7ebdce424464
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49070942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9aa453ef59439cc646e4d65a3a36b77c5a5113d67322408cb61f79376bfc8fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:18:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 01:18:41 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 08 May 2019 01:18:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 01:18:54 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 01:18:54 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 01:18:54 GMT
EXPOSE 8888
# Wed, 08 May 2019 01:18:54 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 01:18:55 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 01:18:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:18:55 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ab1d26348eec33eab9995bdecc32e75804dedc7a6830e6d8295c0fc3b45af7`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 4.5 MB (4503501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1190b9ed7dfc2a56619309cb07afe7cbbc69e6c3badc5d232cac36389c7e7e3e`  
		Last Modified: Wed, 08 May 2019 01:20:03 GMT  
		Size: 22.1 MB (22053691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c287a29d20e07c39a84a587937ba722038d6ef5a68aa990758ef582cf54480`  
		Last Modified: Wed, 08 May 2019 01:19:58 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7ea59c998ef584d98c6bda30426dcb9c86b8d4b1ca4507f2365b69ed13c276`  
		Last Modified: Wed, 08 May 2019 01:19:58 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4a83a162cf48a006ae71ebf25ebb236ee8ffb48b238992dbed61b29fbad00b`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:496d469c50d78710c7bcac4d8a9e17004454640250868c829a8291a475888799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43640180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadb3da00de130c4d30c64a72a17c5cd2f0dd5ab25fd11ee3d6719543ba57f3d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 12:30:16 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Mar 2019 12:30:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:30:36 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 12:30:37 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 12:30:37 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 12:30:38 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 12:30:38 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 12:30:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 12:30:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e9c0fe89282f6c94ede97ca99f317f7e90397d7d3e65d34f5ed1e4e80cc30`  
		Last Modified: Wed, 27 Mar 2019 12:32:01 GMT  
		Size: 20.5 MB (20456143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0544f463415b2b209ee36f2e2080dfdad8529c16bcfbad0af27863537969dfcd`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f499d7ff7f16b7a5788b6f3e26cf7ad208df0ff137025f189788fbe06563e35`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4f8a8133bf24aecc4f1f27ae6e2e41620b54d702f7370a23e871743dd37e7`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:80d23775b1cc6f1fc6f2ff8e2ec568a97d210bdf4bbca8842aed8845fee69101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45103613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8190ea36c882ef5eab24d2a53d06637ed7add7c627fae9be5644836a6a1b86da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:09:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 12:09:58 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 08 May 2019 12:10:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:10:31 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 12:10:32 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 12:10:33 GMT
EXPOSE 8888
# Wed, 08 May 2019 12:10:33 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 12:10:34 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 12:10:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 12:10:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbccf591ff8531c0bb5e2a99aff0b918bb350e3dc7ed7feb6fed30f477be3b4a`  
		Last Modified: Wed, 08 May 2019 12:13:01 GMT  
		Size: 4.1 MB (4079786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1e6a0cc5fae1a11d50296dae17eaaa9c2c64f08d77a1157d314005bf7eb3ff`  
		Last Modified: Wed, 08 May 2019 12:13:09 GMT  
		Size: 20.7 MB (20665611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4d57191fa28103d9aefca456786e84152c66c6c77a775074d32dd4fcca0aa`  
		Last Modified: Wed, 08 May 2019 12:12:59 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3fc1d6fbb5fce675b76396a648b36fa5e7d7e353005da378c130da18ff26d6`  
		Last Modified: Wed, 08 May 2019 12:12:59 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1814b742701ef566f76b93e4c65dd75a961555b03bb45f436f266cb4dd437c4b`  
		Last Modified: Wed, 08 May 2019 12:13:00 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:15c60adeb1b6340dd21867a51d8336aeed82438075a3b28ccce104e5672d4f86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:2cc6b91a1d886cf45f87396517ab1b1425d19ca1017b8fc4158c7ebdce424464
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49070942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9aa453ef59439cc646e4d65a3a36b77c5a5113d67322408cb61f79376bfc8fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:18:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 01:18:41 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 08 May 2019 01:18:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 01:18:54 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 01:18:54 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 01:18:54 GMT
EXPOSE 8888
# Wed, 08 May 2019 01:18:54 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 01:18:55 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 01:18:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:18:55 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ab1d26348eec33eab9995bdecc32e75804dedc7a6830e6d8295c0fc3b45af7`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 4.5 MB (4503501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1190b9ed7dfc2a56619309cb07afe7cbbc69e6c3badc5d232cac36389c7e7e3e`  
		Last Modified: Wed, 08 May 2019 01:20:03 GMT  
		Size: 22.1 MB (22053691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c287a29d20e07c39a84a587937ba722038d6ef5a68aa990758ef582cf54480`  
		Last Modified: Wed, 08 May 2019 01:19:58 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7ea59c998ef584d98c6bda30426dcb9c86b8d4b1ca4507f2365b69ed13c276`  
		Last Modified: Wed, 08 May 2019 01:19:58 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4a83a162cf48a006ae71ebf25ebb236ee8ffb48b238992dbed61b29fbad00b`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:496d469c50d78710c7bcac4d8a9e17004454640250868c829a8291a475888799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43640180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadb3da00de130c4d30c64a72a17c5cd2f0dd5ab25fd11ee3d6719543ba57f3d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 12:30:16 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Mar 2019 12:30:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:30:36 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 12:30:37 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 12:30:37 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 12:30:38 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 12:30:38 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 12:30:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 12:30:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e9c0fe89282f6c94ede97ca99f317f7e90397d7d3e65d34f5ed1e4e80cc30`  
		Last Modified: Wed, 27 Mar 2019 12:32:01 GMT  
		Size: 20.5 MB (20456143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0544f463415b2b209ee36f2e2080dfdad8529c16bcfbad0af27863537969dfcd`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f499d7ff7f16b7a5788b6f3e26cf7ad208df0ff137025f189788fbe06563e35`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4f8a8133bf24aecc4f1f27ae6e2e41620b54d702f7370a23e871743dd37e7`  
		Last Modified: Wed, 27 Mar 2019 12:31:53 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:80d23775b1cc6f1fc6f2ff8e2ec568a97d210bdf4bbca8842aed8845fee69101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45103613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8190ea36c882ef5eab24d2a53d06637ed7add7c627fae9be5644836a6a1b86da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:09:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 12:09:58 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 08 May 2019 12:10:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:10:31 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 12:10:32 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 12:10:33 GMT
EXPOSE 8888
# Wed, 08 May 2019 12:10:33 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 12:10:34 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 12:10:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 12:10:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbccf591ff8531c0bb5e2a99aff0b918bb350e3dc7ed7feb6fed30f477be3b4a`  
		Last Modified: Wed, 08 May 2019 12:13:01 GMT  
		Size: 4.1 MB (4079786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1e6a0cc5fae1a11d50296dae17eaaa9c2c64f08d77a1157d314005bf7eb3ff`  
		Last Modified: Wed, 08 May 2019 12:13:09 GMT  
		Size: 20.7 MB (20665611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4d57191fa28103d9aefca456786e84152c66c6c77a775074d32dd4fcca0aa`  
		Last Modified: Wed, 08 May 2019 12:12:59 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3fc1d6fbb5fce675b76396a648b36fa5e7d7e353005da378c130da18ff26d6`  
		Last Modified: Wed, 08 May 2019 12:12:59 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1814b742701ef566f76b93e4c65dd75a961555b03bb45f436f266cb4dd437c4b`  
		Last Modified: Wed, 08 May 2019 12:13:00 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1-alpine`

```console
$ docker pull chronograf@sha256:d4240b9f178ea6d18b14ab9548337261e090a4381385ae2ceab032a7f38c4e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e211fd1862845a380cdb6bd6bc68cadb675c7d04a97f106378f35ed1dbfda8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4340bb2d0b9ab43d934cd68745406ba6618c33413138c7dc3ebd6b0fb8b3538a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:09:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Mar 2019 23:10:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:04 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:04 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e30b7edeead151fb1c445d2498c0e73f9ede7edc569a23c2e2d694c047a5b`  
		Last Modified: Thu, 07 Mar 2019 23:10:41 GMT  
		Size: 11.6 MB (11623962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b38cef9882eda5e9713d17b99c83d46010d0e0edda3f10c94f8039e26e0d06`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af78d5b2a0c11fc452bdfc825938df1ed4fef8a839aa861b0094c70107f89dae`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f55077a417572c7705fbaf77201ecc64c3f5bf0827b275f6a8798de38ed6d5`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:d4240b9f178ea6d18b14ab9548337261e090a4381385ae2ceab032a7f38c4e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e211fd1862845a380cdb6bd6bc68cadb675c7d04a97f106378f35ed1dbfda8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4340bb2d0b9ab43d934cd68745406ba6618c33413138c7dc3ebd6b0fb8b3538a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:09:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Mar 2019 23:10:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:04 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:04 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e30b7edeead151fb1c445d2498c0e73f9ede7edc569a23c2e2d694c047a5b`  
		Last Modified: Thu, 07 Mar 2019 23:10:41 GMT  
		Size: 11.6 MB (11623962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b38cef9882eda5e9713d17b99c83d46010d0e0edda3f10c94f8039e26e0d06`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af78d5b2a0c11fc452bdfc825938df1ed4fef8a839aa861b0094c70107f89dae`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f55077a417572c7705fbaf77201ecc64c3f5bf0827b275f6a8798de38ed6d5`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:d4240b9f178ea6d18b14ab9548337261e090a4381385ae2ceab032a7f38c4e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e211fd1862845a380cdb6bd6bc68cadb675c7d04a97f106378f35ed1dbfda8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4340bb2d0b9ab43d934cd68745406ba6618c33413138c7dc3ebd6b0fb8b3538a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:09:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Mar 2019 23:10:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:04 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:04 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e30b7edeead151fb1c445d2498c0e73f9ede7edc569a23c2e2d694c047a5b`  
		Last Modified: Thu, 07 Mar 2019 23:10:41 GMT  
		Size: 11.6 MB (11623962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b38cef9882eda5e9713d17b99c83d46010d0e0edda3f10c94f8039e26e0d06`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af78d5b2a0c11fc452bdfc825938df1ed4fef8a839aa861b0094c70107f89dae`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f55077a417572c7705fbaf77201ecc64c3f5bf0827b275f6a8798de38ed6d5`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6`

```console
$ docker pull chronograf@sha256:604aeaf4eb440ac474affc3582a07ea35a1e4d706b96b09061b42943d882852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:a958516c065e8241af81a0eeab9a574e87a5a2728130c0526964c52a08824cf2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49114647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0880883df06747a9c50befe27f955b6cd681cb9fd4d6da433e236739278965d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:18:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 01:19:02 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 08 May 2019 01:19:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 01:19:18 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 01:19:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 01:19:18 GMT
EXPOSE 8888
# Wed, 08 May 2019 01:19:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 01:19:18 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 01:19:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:19:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ab1d26348eec33eab9995bdecc32e75804dedc7a6830e6d8295c0fc3b45af7`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 4.5 MB (4503501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952049aae70339140c56b92c1a03b63af5f64f6580af4cbc1c748cf65338af41`  
		Last Modified: Wed, 08 May 2019 01:20:13 GMT  
		Size: 22.1 MB (22097401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813c82296971ed74c04d8b5b9ca47ba5eac795dab1aef009a1e7fd8da0529f32`  
		Last Modified: Wed, 08 May 2019 01:20:09 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee911a402a8ec9b157d8abd9dd6afd924bbde254658aa0663b8a456dce11c5`  
		Last Modified: Wed, 08 May 2019 01:20:08 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5695110de09f5618c3f5e692e7449043f97ea6ac26ba10a11c60ddb8ea5021`  
		Last Modified: Wed, 08 May 2019 01:20:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:b2248fb1f91f47b27846f779c7cccfab1312407b9e3ec01648245eb5ee6908e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43705603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6568ce2570676aeefb4a2d317b80432bc00b294e4bb3d9a5ae08a2d1a82716c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 12:30:45 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 27 Mar 2019 12:31:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:31:09 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 12:31:10 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 12:31:10 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 12:31:11 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 12:31:11 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 12:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e113f0593b23ca9a3283f6aac2959ee196858d47fdf819a82581d17f90e591`  
		Last Modified: Wed, 27 Mar 2019 12:32:17 GMT  
		Size: 20.5 MB (20521567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644534824e5eebd31ec8691632b7e66a6803209a47cbed57310e71b2d0b07ccc`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08239a489284f462c0f79275e33ae9e408069942f355cebb461b5f662fe381ca`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6eb40794d67e46540f6f48cfa54e8a707a5b885816e8545f230c9c02cafa7a1`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:b07c67aed311813c470e7c5c7a4e8ae6ec650dba269b15d82d4942d258d4b035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45162269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975ddcc398b707465c39301d91d9520564989f658b77600590adff04e30d58a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:09:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 12:10:50 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 08 May 2019 12:11:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:11:29 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 12:11:29 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 12:11:30 GMT
EXPOSE 8888
# Wed, 08 May 2019 12:11:31 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 12:11:32 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 12:11:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 12:11:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbccf591ff8531c0bb5e2a99aff0b918bb350e3dc7ed7feb6fed30f477be3b4a`  
		Last Modified: Wed, 08 May 2019 12:13:01 GMT  
		Size: 4.1 MB (4079786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a23e1164d048dbd6adc451ba7be688620907f5157c6e2537bcd2d9b7e5c22a`  
		Last Modified: Wed, 08 May 2019 12:13:28 GMT  
		Size: 20.7 MB (20724273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f397569a2bdf45f6b0edcae9e6fc427aa3927daa94fcbe543231a0e74f355431`  
		Last Modified: Wed, 08 May 2019 12:13:19 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5de209cd578bab190ef3b9604db3ed0415d82aa6cc20c7466c9aebac05620b`  
		Last Modified: Wed, 08 May 2019 12:13:19 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149896da59b513a2a8cc9c64d20cbbeed5f4b516858057fc014ab64b5374d4a7`  
		Last Modified: Wed, 08 May 2019 12:13:19 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2`

```console
$ docker pull chronograf@sha256:604aeaf4eb440ac474affc3582a07ea35a1e4d706b96b09061b42943d882852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.2` - linux; amd64

```console
$ docker pull chronograf@sha256:a958516c065e8241af81a0eeab9a574e87a5a2728130c0526964c52a08824cf2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49114647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0880883df06747a9c50befe27f955b6cd681cb9fd4d6da433e236739278965d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:18:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 01:19:02 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 08 May 2019 01:19:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 01:19:18 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 01:19:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 01:19:18 GMT
EXPOSE 8888
# Wed, 08 May 2019 01:19:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 01:19:18 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 01:19:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:19:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ab1d26348eec33eab9995bdecc32e75804dedc7a6830e6d8295c0fc3b45af7`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 4.5 MB (4503501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952049aae70339140c56b92c1a03b63af5f64f6580af4cbc1c748cf65338af41`  
		Last Modified: Wed, 08 May 2019 01:20:13 GMT  
		Size: 22.1 MB (22097401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813c82296971ed74c04d8b5b9ca47ba5eac795dab1aef009a1e7fd8da0529f32`  
		Last Modified: Wed, 08 May 2019 01:20:09 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee911a402a8ec9b157d8abd9dd6afd924bbde254658aa0663b8a456dce11c5`  
		Last Modified: Wed, 08 May 2019 01:20:08 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5695110de09f5618c3f5e692e7449043f97ea6ac26ba10a11c60ddb8ea5021`  
		Last Modified: Wed, 08 May 2019 01:20:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:b2248fb1f91f47b27846f779c7cccfab1312407b9e3ec01648245eb5ee6908e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43705603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6568ce2570676aeefb4a2d317b80432bc00b294e4bb3d9a5ae08a2d1a82716c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 12:30:45 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 27 Mar 2019 12:31:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:31:09 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 12:31:10 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 12:31:10 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 12:31:11 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 12:31:11 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 12:31:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e113f0593b23ca9a3283f6aac2959ee196858d47fdf819a82581d17f90e591`  
		Last Modified: Wed, 27 Mar 2019 12:32:17 GMT  
		Size: 20.5 MB (20521567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644534824e5eebd31ec8691632b7e66a6803209a47cbed57310e71b2d0b07ccc`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08239a489284f462c0f79275e33ae9e408069942f355cebb461b5f662fe381ca`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6eb40794d67e46540f6f48cfa54e8a707a5b885816e8545f230c9c02cafa7a1`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:b07c67aed311813c470e7c5c7a4e8ae6ec650dba269b15d82d4942d258d4b035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45162269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975ddcc398b707465c39301d91d9520564989f658b77600590adff04e30d58a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:09:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 12:10:50 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 08 May 2019 12:11:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:11:29 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 12:11:29 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 12:11:30 GMT
EXPOSE 8888
# Wed, 08 May 2019 12:11:31 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 12:11:32 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 12:11:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 12:11:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbccf591ff8531c0bb5e2a99aff0b918bb350e3dc7ed7feb6fed30f477be3b4a`  
		Last Modified: Wed, 08 May 2019 12:13:01 GMT  
		Size: 4.1 MB (4079786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a23e1164d048dbd6adc451ba7be688620907f5157c6e2537bcd2d9b7e5c22a`  
		Last Modified: Wed, 08 May 2019 12:13:28 GMT  
		Size: 20.7 MB (20724273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f397569a2bdf45f6b0edcae9e6fc427aa3927daa94fcbe543231a0e74f355431`  
		Last Modified: Wed, 08 May 2019 12:13:19 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5de209cd578bab190ef3b9604db3ed0415d82aa6cc20c7466c9aebac05620b`  
		Last Modified: Wed, 08 May 2019 12:13:19 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149896da59b513a2a8cc9c64d20cbbeed5f4b516858057fc014ab64b5374d4a7`  
		Last Modified: Wed, 08 May 2019 12:13:19 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2-alpine`

```console
$ docker pull chronograf@sha256:12af06023306d9859ac48ceb8e1f68a10d0ab69e10d7eac40ee603e9ede34bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:00f15ee8b2908870ebb95ac04b0610dd24b5f70ab6f807d664d5e1ab7a836bbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14277532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776865be4c29a91fcc144e3a5043e35b65ed123d0ba42ee81dc341bfd5dd1806`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:10:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Thu, 07 Mar 2019 23:10:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:15 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:15 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:15 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:16 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd8709443bbccd9a30f06171bf649bc75c52372bbdfcd161a3673e7274a23d6`  
		Last Modified: Thu, 07 Mar 2019 23:10:48 GMT  
		Size: 11.7 MB (11736702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b6aa79f5e733fe6361d1288127f10fc9a5b7b5e9722b55f41e873e78d44d4`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26be3db59e02fd9d70c69e7e135de79f7f4c5c5e94ae2844051e286a238a5039`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9b61a7e468b51bbcd73ed8168e8afc82926d2b7916ee85c243d7ac1ca7aef`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:12af06023306d9859ac48ceb8e1f68a10d0ab69e10d7eac40ee603e9ede34bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:00f15ee8b2908870ebb95ac04b0610dd24b5f70ab6f807d664d5e1ab7a836bbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14277532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776865be4c29a91fcc144e3a5043e35b65ed123d0ba42ee81dc341bfd5dd1806`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:10:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Thu, 07 Mar 2019 23:10:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:15 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:15 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:15 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:16 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd8709443bbccd9a30f06171bf649bc75c52372bbdfcd161a3673e7274a23d6`  
		Last Modified: Thu, 07 Mar 2019 23:10:48 GMT  
		Size: 11.7 MB (11736702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b6aa79f5e733fe6361d1288127f10fc9a5b7b5e9722b55f41e873e78d44d4`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26be3db59e02fd9d70c69e7e135de79f7f4c5c5e94ae2844051e286a238a5039`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9b61a7e468b51bbcd73ed8168e8afc82926d2b7916ee85c243d7ac1ca7aef`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7`

```console
$ docker pull chronograf@sha256:1e4a9cb3c6264ed53e7a894d6be5ff7f5df9f992797dda29328320f327162823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7` - linux; amd64

```console
$ docker pull chronograf@sha256:8be33563c82a66f50e4080c80389a67d9cb5eb88922f4609660705b332bf4612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56847759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98d709a26d4ea3be4b3ba03e6b1fb1d767422eaf4a638ca7f650986bbe14067`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:18:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 01:19:28 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Wed, 08 May 2019 01:19:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 01:19:39 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 01:19:39 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 01:19:39 GMT
EXPOSE 8888
# Wed, 08 May 2019 01:19:40 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 01:19:40 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 01:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:19:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ab1d26348eec33eab9995bdecc32e75804dedc7a6830e6d8295c0fc3b45af7`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 4.5 MB (4503501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe74cf007e77bbffe19a354b510df3ca7ca8a835bcac7075a2cd8c4132f637`  
		Last Modified: Wed, 08 May 2019 01:20:23 GMT  
		Size: 29.8 MB (29830513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c174463b3f453de68afbe8a6d1ab2063541c3c5fbafd65ce8fb3eef91751fc2a`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f299bbc1606cb8888aae4737eb57afca3d64609f8474b54fbb1a3857e61e7ce2`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f42a8a862a7eb073196c41b7d4733b4759a326a3af23cdd526128460ef182fe`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:b8d001f091230c14348acb9875a8b04d20338309e595dbf45bc349ba58ed08ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50789906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada0dc9e49e286ac8d07c5b22e6560e935c4fc6959cb587674cae4ed4ecd6a2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 27 Apr 2019 11:57:27 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Sat, 27 Apr 2019 11:58:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 27 Apr 2019 11:58:14 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 27 Apr 2019 11:58:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 27 Apr 2019 11:58:15 GMT
EXPOSE 8888
# Sat, 27 Apr 2019 11:58:15 GMT
VOLUME [/var/lib/chronograf]
# Sat, 27 Apr 2019 11:58:16 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 27 Apr 2019 11:58:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 11:58:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b39ca4367b2cbe355f516969292748551932577a66b61f52112f9481b9553b`  
		Last Modified: Sat, 27 Apr 2019 11:58:36 GMT  
		Size: 27.6 MB (27605856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdaed4397ad0bda944af95e033248fbbfbce3ca3e894bb3c24062a4295cf51f`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c35afc908fd7dc2342d882bd1bed1e2bd4145ef295327d240a26103b5a802b`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7433af6f387028eec419269dc6f7da7d9636dd472f69371b30428c44bac82aa4`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:c13298063672e1da2a7ebde5536cb75bf5479a326f66fd662cab414e4ec8eaa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52246593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1f85404bc0545bac9f0b6454c54af726066667b5b55d866cd4a104b35f45e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:09:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 12:11:46 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Wed, 08 May 2019 12:12:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:12:36 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 12:12:37 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 12:12:38 GMT
EXPOSE 8888
# Wed, 08 May 2019 12:12:39 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 12:12:40 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 12:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 12:12:42 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbccf591ff8531c0bb5e2a99aff0b918bb350e3dc7ed7feb6fed30f477be3b4a`  
		Last Modified: Wed, 08 May 2019 12:13:01 GMT  
		Size: 4.1 MB (4079786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ebd950aa0a758f71841490072d578a919e305e482e3548eadaf215342c744`  
		Last Modified: Wed, 08 May 2019 12:13:46 GMT  
		Size: 27.8 MB (27808595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ac2c906316196679c42036c36abd816acae8340c3ab300be386c5dcf59c61b`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b018dad777b5d14a0e8ec80e922b3980166e16410f2269ee03fdd99cbdd6c2c9`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ac72f219d8ed42fa9a0185aa4c593dc74842776909eaffc12c51cde514bdd0`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.11`

```console
$ docker pull chronograf@sha256:1e4a9cb3c6264ed53e7a894d6be5ff7f5df9f992797dda29328320f327162823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7.11` - linux; amd64

```console
$ docker pull chronograf@sha256:8be33563c82a66f50e4080c80389a67d9cb5eb88922f4609660705b332bf4612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56847759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98d709a26d4ea3be4b3ba03e6b1fb1d767422eaf4a638ca7f650986bbe14067`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:18:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 01:19:28 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Wed, 08 May 2019 01:19:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 01:19:39 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 01:19:39 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 01:19:39 GMT
EXPOSE 8888
# Wed, 08 May 2019 01:19:40 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 01:19:40 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 01:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:19:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ab1d26348eec33eab9995bdecc32e75804dedc7a6830e6d8295c0fc3b45af7`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 4.5 MB (4503501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe74cf007e77bbffe19a354b510df3ca7ca8a835bcac7075a2cd8c4132f637`  
		Last Modified: Wed, 08 May 2019 01:20:23 GMT  
		Size: 29.8 MB (29830513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c174463b3f453de68afbe8a6d1ab2063541c3c5fbafd65ce8fb3eef91751fc2a`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f299bbc1606cb8888aae4737eb57afca3d64609f8474b54fbb1a3857e61e7ce2`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f42a8a862a7eb073196c41b7d4733b4759a326a3af23cdd526128460ef182fe`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.11` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:b8d001f091230c14348acb9875a8b04d20338309e595dbf45bc349ba58ed08ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50789906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada0dc9e49e286ac8d07c5b22e6560e935c4fc6959cb587674cae4ed4ecd6a2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 27 Apr 2019 11:57:27 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Sat, 27 Apr 2019 11:58:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 27 Apr 2019 11:58:14 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 27 Apr 2019 11:58:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 27 Apr 2019 11:58:15 GMT
EXPOSE 8888
# Sat, 27 Apr 2019 11:58:15 GMT
VOLUME [/var/lib/chronograf]
# Sat, 27 Apr 2019 11:58:16 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 27 Apr 2019 11:58:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 11:58:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b39ca4367b2cbe355f516969292748551932577a66b61f52112f9481b9553b`  
		Last Modified: Sat, 27 Apr 2019 11:58:36 GMT  
		Size: 27.6 MB (27605856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdaed4397ad0bda944af95e033248fbbfbce3ca3e894bb3c24062a4295cf51f`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c35afc908fd7dc2342d882bd1bed1e2bd4145ef295327d240a26103b5a802b`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7433af6f387028eec419269dc6f7da7d9636dd472f69371b30428c44bac82aa4`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:c13298063672e1da2a7ebde5536cb75bf5479a326f66fd662cab414e4ec8eaa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52246593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1f85404bc0545bac9f0b6454c54af726066667b5b55d866cd4a104b35f45e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:09:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 12:11:46 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Wed, 08 May 2019 12:12:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:12:36 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 12:12:37 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 12:12:38 GMT
EXPOSE 8888
# Wed, 08 May 2019 12:12:39 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 12:12:40 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 12:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 12:12:42 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbccf591ff8531c0bb5e2a99aff0b918bb350e3dc7ed7feb6fed30f477be3b4a`  
		Last Modified: Wed, 08 May 2019 12:13:01 GMT  
		Size: 4.1 MB (4079786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ebd950aa0a758f71841490072d578a919e305e482e3548eadaf215342c744`  
		Last Modified: Wed, 08 May 2019 12:13:46 GMT  
		Size: 27.8 MB (27808595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ac2c906316196679c42036c36abd816acae8340c3ab300be386c5dcf59c61b`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b018dad777b5d14a0e8ec80e922b3980166e16410f2269ee03fdd99cbdd6c2c9`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ac72f219d8ed42fa9a0185aa4c593dc74842776909eaffc12c51cde514bdd0`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.11-alpine`

```console
$ docker pull chronograf@sha256:348049cfa1c9d1564bd6ce0cf4300cd2cd35008922c66a98d9dbfa9a4c8c55b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:73fd1cfa5b65e477d6c9bf493a026d407dfb9ad982081a68438ae98cb616040d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9f327a668264b76ee944f7eccb3278f0c325273880b2ff0bfee36a4c149987`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Sat, 27 Apr 2019 00:23:58 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Sat, 27 Apr 2019 00:24:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 27 Apr 2019 00:24:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Sat, 27 Apr 2019 00:24:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 27 Apr 2019 00:24:04 GMT
EXPOSE 8888
# Sat, 27 Apr 2019 00:24:05 GMT
VOLUME [/var/lib/chronograf]
# Sat, 27 Apr 2019 00:24:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Sat, 27 Apr 2019 00:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 00:24:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf021967a9801f3653cc7aaad33de192ec0be9b9604d8cee6c64ac3d2d365f7`  
		Last Modified: Sat, 27 Apr 2019 00:24:31 GMT  
		Size: 15.0 MB (14980056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a4d007daa3682383b704a087e650cb82539b657ad523bcce5a333ddb562f9b`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec0a935e8715893a6f3454980d736cc510cfab9ff72f8a295cc6e8e6428861b`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c703def48bf2dae29059441f36a84e69d10dc5307dad62399440835717d05aa`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7-alpine`

```console
$ docker pull chronograf@sha256:348049cfa1c9d1564bd6ce0cf4300cd2cd35008922c66a98d9dbfa9a4c8c55b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:73fd1cfa5b65e477d6c9bf493a026d407dfb9ad982081a68438ae98cb616040d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9f327a668264b76ee944f7eccb3278f0c325273880b2ff0bfee36a4c149987`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Sat, 27 Apr 2019 00:23:58 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Sat, 27 Apr 2019 00:24:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 27 Apr 2019 00:24:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Sat, 27 Apr 2019 00:24:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 27 Apr 2019 00:24:04 GMT
EXPOSE 8888
# Sat, 27 Apr 2019 00:24:05 GMT
VOLUME [/var/lib/chronograf]
# Sat, 27 Apr 2019 00:24:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Sat, 27 Apr 2019 00:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 00:24:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf021967a9801f3653cc7aaad33de192ec0be9b9604d8cee6c64ac3d2d365f7`  
		Last Modified: Sat, 27 Apr 2019 00:24:31 GMT  
		Size: 15.0 MB (14980056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a4d007daa3682383b704a087e650cb82539b657ad523bcce5a333ddb562f9b`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec0a935e8715893a6f3454980d736cc510cfab9ff72f8a295cc6e8e6428861b`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c703def48bf2dae29059441f36a84e69d10dc5307dad62399440835717d05aa`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:348049cfa1c9d1564bd6ce0cf4300cd2cd35008922c66a98d9dbfa9a4c8c55b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:73fd1cfa5b65e477d6c9bf493a026d407dfb9ad982081a68438ae98cb616040d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9f327a668264b76ee944f7eccb3278f0c325273880b2ff0bfee36a4c149987`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Sat, 27 Apr 2019 00:23:58 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Sat, 27 Apr 2019 00:24:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 27 Apr 2019 00:24:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Sat, 27 Apr 2019 00:24:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 27 Apr 2019 00:24:04 GMT
EXPOSE 8888
# Sat, 27 Apr 2019 00:24:05 GMT
VOLUME [/var/lib/chronograf]
# Sat, 27 Apr 2019 00:24:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Sat, 27 Apr 2019 00:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 00:24:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf021967a9801f3653cc7aaad33de192ec0be9b9604d8cee6c64ac3d2d365f7`  
		Last Modified: Sat, 27 Apr 2019 00:24:31 GMT  
		Size: 15.0 MB (14980056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a4d007daa3682383b704a087e650cb82539b657ad523bcce5a333ddb562f9b`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec0a935e8715893a6f3454980d736cc510cfab9ff72f8a295cc6e8e6428861b`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c703def48bf2dae29059441f36a84e69d10dc5307dad62399440835717d05aa`  
		Last Modified: Sat, 27 Apr 2019 00:24:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:1e4a9cb3c6264ed53e7a894d6be5ff7f5df9f992797dda29328320f327162823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:8be33563c82a66f50e4080c80389a67d9cb5eb88922f4609660705b332bf4612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56847759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98d709a26d4ea3be4b3ba03e6b1fb1d767422eaf4a638ca7f650986bbe14067`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:18:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 01:19:28 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Wed, 08 May 2019 01:19:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 01:19:39 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 01:19:39 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 01:19:39 GMT
EXPOSE 8888
# Wed, 08 May 2019 01:19:40 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 01:19:40 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 01:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:19:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ab1d26348eec33eab9995bdecc32e75804dedc7a6830e6d8295c0fc3b45af7`  
		Last Modified: Wed, 08 May 2019 01:19:59 GMT  
		Size: 4.5 MB (4503501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe74cf007e77bbffe19a354b510df3ca7ca8a835bcac7075a2cd8c4132f637`  
		Last Modified: Wed, 08 May 2019 01:20:23 GMT  
		Size: 29.8 MB (29830513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c174463b3f453de68afbe8a6d1ab2063541c3c5fbafd65ce8fb3eef91751fc2a`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f299bbc1606cb8888aae4737eb57afca3d64609f8474b54fbb1a3857e61e7ce2`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f42a8a862a7eb073196c41b7d4733b4759a326a3af23cdd526128460ef182fe`  
		Last Modified: Wed, 08 May 2019 01:20:18 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:b8d001f091230c14348acb9875a8b04d20338309e595dbf45bc349ba58ed08ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50789906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada0dc9e49e286ac8d07c5b22e6560e935c4fc6959cb587674cae4ed4ecd6a2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 27 Apr 2019 11:57:27 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Sat, 27 Apr 2019 11:58:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 27 Apr 2019 11:58:14 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 27 Apr 2019 11:58:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 27 Apr 2019 11:58:15 GMT
EXPOSE 8888
# Sat, 27 Apr 2019 11:58:15 GMT
VOLUME [/var/lib/chronograf]
# Sat, 27 Apr 2019 11:58:16 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 27 Apr 2019 11:58:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 11:58:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b39ca4367b2cbe355f516969292748551932577a66b61f52112f9481b9553b`  
		Last Modified: Sat, 27 Apr 2019 11:58:36 GMT  
		Size: 27.6 MB (27605856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdaed4397ad0bda944af95e033248fbbfbce3ca3e894bb3c24062a4295cf51f`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c35afc908fd7dc2342d882bd1bed1e2bd4145ef295327d240a26103b5a802b`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7433af6f387028eec419269dc6f7da7d9636dd472f69371b30428c44bac82aa4`  
		Last Modified: Sat, 27 Apr 2019 11:58:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:c13298063672e1da2a7ebde5536cb75bf5479a326f66fd662cab414e4ec8eaa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52246593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1f85404bc0545bac9f0b6454c54af726066667b5b55d866cd4a104b35f45e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:09:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 12:11:46 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Wed, 08 May 2019 12:12:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 12:12:36 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 08 May 2019 12:12:37 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 08 May 2019 12:12:38 GMT
EXPOSE 8888
# Wed, 08 May 2019 12:12:39 GMT
VOLUME [/var/lib/chronograf]
# Wed, 08 May 2019 12:12:40 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 08 May 2019 12:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 12:12:42 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbccf591ff8531c0bb5e2a99aff0b918bb350e3dc7ed7feb6fed30f477be3b4a`  
		Last Modified: Wed, 08 May 2019 12:13:01 GMT  
		Size: 4.1 MB (4079786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ebd950aa0a758f71841490072d578a919e305e482e3548eadaf215342c744`  
		Last Modified: Wed, 08 May 2019 12:13:46 GMT  
		Size: 27.8 MB (27808595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ac2c906316196679c42036c36abd816acae8340c3ab300be386c5dcf59c61b`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b018dad777b5d14a0e8ec80e922b3980166e16410f2269ee03fdd99cbdd6c2c9`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ac72f219d8ed42fa9a0185aa4c593dc74842776909eaffc12c51cde514bdd0`  
		Last Modified: Wed, 08 May 2019 12:13:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
