<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.5`](#chronograf15)
-	[`chronograf:1.5.0`](#chronograf150)
-	[`chronograf:1.5.0.1`](#chronograf1501)
-	[`chronograf:1.5.0.1-alpine`](#chronograf1501-alpine)
-	[`chronograf:1.5.0-alpine`](#chronograf150-alpine)
-	[`chronograf:1.5-alpine`](#chronograf15-alpine)
-	[`chronograf:1.6`](#chronograf16)
-	[`chronograf:1.6.1`](#chronograf161)
-	[`chronograf:1.6.1-alpine`](#chronograf161-alpine)
-	[`chronograf:1.6-alpine`](#chronograf16-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:fb50a3821cb2c8863803762602b4fba3f2a782d3d5b18e67bac9b0568cdd017a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:4f1859a21e5425393e88ba7a5ece7031dd6a8e46767673e29be6c1647a2b9771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec48a306ae8162052edf81155e3de095376df4a6c1ddafea7318c273fd2f659`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 01:21:32 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 01:21:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 01:21:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:21:52 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:21:53 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:21:53 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:21:53 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 01:21:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:21:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b1441043a087140f4600b9fce9ad2558337b410e2a76d6bb10959c34e36f`  
		Last Modified: Tue, 17 Jul 2018 01:22:48 GMT  
		Size: 4.5 MB (4500372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca65357419d25368bd91f34755b26b625231b713a4d31144e12d420d27f86b7`  
		Last Modified: Tue, 17 Jul 2018 01:24:43 GMT  
		Size: 22.0 MB (22033516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc62ac1ca57cccb2d9d366acfeecb203b7814f54ed7eec4564ec5307ee2ccb`  
		Last Modified: Tue, 17 Jul 2018 01:24:33 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f389bc4ffd03c5ac26a83969ecbffc9a34853b0f5b9699ad218cd9d7b6e1fbac`  
		Last Modified: Tue, 17 Jul 2018 01:24:34 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2749161bf6815ee444e1ffdea87509bafaeb393530d4b3fb9c24b835c6d24739`  
		Last Modified: Tue, 17 Jul 2018 01:24:34 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:e237b6b537f6a2e6b9d4ea4ec88cffda8f5e847604d4fcdbfde55cda094a565d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43612183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dc4c0e9193dbc951e766a5f267bbf1d819c924c12866e25fdc4a2432609073`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 14:16:06 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 14:16:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:16:26 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 14:16:32 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 14:16:33 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 14:16:33 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 14:16:34 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 14:16:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 14:16:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cf45c882b806e89bfc72bf429786f2252363328a0af138650fc6886feb8f3a`  
		Last Modified: Tue, 17 Jul 2018 14:17:03 GMT  
		Size: 3.9 MB (3873177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce3a38abb31c26987f7b74455e9700e5eecc5a84101b3eb8daec37b558ee751`  
		Last Modified: Tue, 17 Jul 2018 14:17:48 GMT  
		Size: 20.4 MB (20444432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fffc5fc8fe9cce790fcc5968f4366badc1e31c0144c1953e7fb65cce90c3eb0`  
		Last Modified: Tue, 17 Jul 2018 14:17:55 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac530d7d20091e6c86fb828cf58dda86533803b36335e14ad6eca621de4f28f2`  
		Last Modified: Tue, 17 Jul 2018 14:17:42 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab78e16b0dd20e5e1c7f105d4dade2f801ea23cfc62fcb2e78ec58375b6183f`  
		Last Modified: Tue, 17 Jul 2018 14:17:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8aa702428aeb6b0ec0a85c0edc4643f474d087430d5982cff23d7255aab748f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45078582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec3bcb0e998040b99ea20bcb9a42424d8d6af1d2408234c0222ecc22b21d5f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 14:27:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 14:28:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:28:46 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 14:28:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 14:28:48 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 14:28:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 14:28:50 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 14:28:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 14:28:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a011d81ce6cb81db31082a7d2dee4e84b50fb16f676e1473d631821c81d04`  
		Last Modified: Tue, 17 Jul 2018 14:29:23 GMT  
		Size: 4.1 MB (4075147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98269d632808c4a85d58d6a2f2835f5bbc373bd15534292c9181903e3ce01986`  
		Last Modified: Tue, 17 Jul 2018 14:30:20 GMT  
		Size: 20.6 MB (20647401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfc22b0cbbff5dfc530a75f7782927516c657714b513a520a928898d170e11`  
		Last Modified: Tue, 17 Jul 2018 14:30:12 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bef3643cb50d5f9f8b1e71a4fa5ee0ab7084efe480f85920b34759d3106bd44`  
		Last Modified: Tue, 17 Jul 2018 14:30:13 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3737a33d3bbbe3cab4e155dd1b876f2c9400261fc04e34b65075ee57ff56171`  
		Last Modified: Tue, 17 Jul 2018 14:30:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:fb50a3821cb2c8863803762602b4fba3f2a782d3d5b18e67bac9b0568cdd017a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:4f1859a21e5425393e88ba7a5ece7031dd6a8e46767673e29be6c1647a2b9771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec48a306ae8162052edf81155e3de095376df4a6c1ddafea7318c273fd2f659`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 01:21:32 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 01:21:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 01:21:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:21:52 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:21:53 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:21:53 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:21:53 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 01:21:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:21:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b1441043a087140f4600b9fce9ad2558337b410e2a76d6bb10959c34e36f`  
		Last Modified: Tue, 17 Jul 2018 01:22:48 GMT  
		Size: 4.5 MB (4500372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca65357419d25368bd91f34755b26b625231b713a4d31144e12d420d27f86b7`  
		Last Modified: Tue, 17 Jul 2018 01:24:43 GMT  
		Size: 22.0 MB (22033516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc62ac1ca57cccb2d9d366acfeecb203b7814f54ed7eec4564ec5307ee2ccb`  
		Last Modified: Tue, 17 Jul 2018 01:24:33 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f389bc4ffd03c5ac26a83969ecbffc9a34853b0f5b9699ad218cd9d7b6e1fbac`  
		Last Modified: Tue, 17 Jul 2018 01:24:34 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2749161bf6815ee444e1ffdea87509bafaeb393530d4b3fb9c24b835c6d24739`  
		Last Modified: Tue, 17 Jul 2018 01:24:34 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:e237b6b537f6a2e6b9d4ea4ec88cffda8f5e847604d4fcdbfde55cda094a565d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43612183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dc4c0e9193dbc951e766a5f267bbf1d819c924c12866e25fdc4a2432609073`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 14:16:06 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 14:16:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:16:26 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 14:16:32 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 14:16:33 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 14:16:33 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 14:16:34 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 14:16:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 14:16:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cf45c882b806e89bfc72bf429786f2252363328a0af138650fc6886feb8f3a`  
		Last Modified: Tue, 17 Jul 2018 14:17:03 GMT  
		Size: 3.9 MB (3873177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce3a38abb31c26987f7b74455e9700e5eecc5a84101b3eb8daec37b558ee751`  
		Last Modified: Tue, 17 Jul 2018 14:17:48 GMT  
		Size: 20.4 MB (20444432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fffc5fc8fe9cce790fcc5968f4366badc1e31c0144c1953e7fb65cce90c3eb0`  
		Last Modified: Tue, 17 Jul 2018 14:17:55 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac530d7d20091e6c86fb828cf58dda86533803b36335e14ad6eca621de4f28f2`  
		Last Modified: Tue, 17 Jul 2018 14:17:42 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab78e16b0dd20e5e1c7f105d4dade2f801ea23cfc62fcb2e78ec58375b6183f`  
		Last Modified: Tue, 17 Jul 2018 14:17:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8aa702428aeb6b0ec0a85c0edc4643f474d087430d5982cff23d7255aab748f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45078582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec3bcb0e998040b99ea20bcb9a42424d8d6af1d2408234c0222ecc22b21d5f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 14:27:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 14:28:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:28:46 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 14:28:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 14:28:48 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 14:28:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 14:28:50 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 14:28:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 14:28:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a011d81ce6cb81db31082a7d2dee4e84b50fb16f676e1473d631821c81d04`  
		Last Modified: Tue, 17 Jul 2018 14:29:23 GMT  
		Size: 4.1 MB (4075147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98269d632808c4a85d58d6a2f2835f5bbc373bd15534292c9181903e3ce01986`  
		Last Modified: Tue, 17 Jul 2018 14:30:20 GMT  
		Size: 20.6 MB (20647401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfc22b0cbbff5dfc530a75f7782927516c657714b513a520a928898d170e11`  
		Last Modified: Tue, 17 Jul 2018 14:30:12 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bef3643cb50d5f9f8b1e71a4fa5ee0ab7084efe480f85920b34759d3106bd44`  
		Last Modified: Tue, 17 Jul 2018 14:30:13 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3737a33d3bbbe3cab4e155dd1b876f2c9400261fc04e34b65075ee57ff56171`  
		Last Modified: Tue, 17 Jul 2018 14:30:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:fb50a3821cb2c8863803762602b4fba3f2a782d3d5b18e67bac9b0568cdd017a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:4f1859a21e5425393e88ba7a5ece7031dd6a8e46767673e29be6c1647a2b9771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec48a306ae8162052edf81155e3de095376df4a6c1ddafea7318c273fd2f659`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 01:21:32 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 01:21:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 01:21:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:21:52 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:21:53 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:21:53 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:21:53 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 01:21:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:21:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b1441043a087140f4600b9fce9ad2558337b410e2a76d6bb10959c34e36f`  
		Last Modified: Tue, 17 Jul 2018 01:22:48 GMT  
		Size: 4.5 MB (4500372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca65357419d25368bd91f34755b26b625231b713a4d31144e12d420d27f86b7`  
		Last Modified: Tue, 17 Jul 2018 01:24:43 GMT  
		Size: 22.0 MB (22033516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc62ac1ca57cccb2d9d366acfeecb203b7814f54ed7eec4564ec5307ee2ccb`  
		Last Modified: Tue, 17 Jul 2018 01:24:33 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f389bc4ffd03c5ac26a83969ecbffc9a34853b0f5b9699ad218cd9d7b6e1fbac`  
		Last Modified: Tue, 17 Jul 2018 01:24:34 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2749161bf6815ee444e1ffdea87509bafaeb393530d4b3fb9c24b835c6d24739`  
		Last Modified: Tue, 17 Jul 2018 01:24:34 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:e237b6b537f6a2e6b9d4ea4ec88cffda8f5e847604d4fcdbfde55cda094a565d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43612183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dc4c0e9193dbc951e766a5f267bbf1d819c924c12866e25fdc4a2432609073`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 14:16:06 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 14:16:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:16:26 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 14:16:32 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 14:16:33 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 14:16:33 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 14:16:34 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 14:16:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 14:16:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cf45c882b806e89bfc72bf429786f2252363328a0af138650fc6886feb8f3a`  
		Last Modified: Tue, 17 Jul 2018 14:17:03 GMT  
		Size: 3.9 MB (3873177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce3a38abb31c26987f7b74455e9700e5eecc5a84101b3eb8daec37b558ee751`  
		Last Modified: Tue, 17 Jul 2018 14:17:48 GMT  
		Size: 20.4 MB (20444432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fffc5fc8fe9cce790fcc5968f4366badc1e31c0144c1953e7fb65cce90c3eb0`  
		Last Modified: Tue, 17 Jul 2018 14:17:55 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac530d7d20091e6c86fb828cf58dda86533803b36335e14ad6eca621de4f28f2`  
		Last Modified: Tue, 17 Jul 2018 14:17:42 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab78e16b0dd20e5e1c7f105d4dade2f801ea23cfc62fcb2e78ec58375b6183f`  
		Last Modified: Tue, 17 Jul 2018 14:17:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8aa702428aeb6b0ec0a85c0edc4643f474d087430d5982cff23d7255aab748f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45078582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec3bcb0e998040b99ea20bcb9a42424d8d6af1d2408234c0222ecc22b21d5f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 14:27:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 14:28:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 14:28:46 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 14:28:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 14:28:48 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 14:28:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 14:28:50 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 14:28:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 14:28:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a011d81ce6cb81db31082a7d2dee4e84b50fb16f676e1473d631821c81d04`  
		Last Modified: Tue, 17 Jul 2018 14:29:23 GMT  
		Size: 4.1 MB (4075147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98269d632808c4a85d58d6a2f2835f5bbc373bd15534292c9181903e3ce01986`  
		Last Modified: Tue, 17 Jul 2018 14:30:20 GMT  
		Size: 20.6 MB (20647401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfc22b0cbbff5dfc530a75f7782927516c657714b513a520a928898d170e11`  
		Last Modified: Tue, 17 Jul 2018 14:30:12 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bef3643cb50d5f9f8b1e71a4fa5ee0ab7084efe480f85920b34759d3106bd44`  
		Last Modified: Tue, 17 Jul 2018 14:30:13 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3737a33d3bbbe3cab4e155dd1b876f2c9400261fc04e34b65075ee57ff56171`  
		Last Modified: Tue, 17 Jul 2018 14:30:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1-alpine`

```console
$ docker pull chronograf@sha256:a6633d4588e1a4a7739b6af1f828df632a0308449b0abf6ff99d9f2501b8c066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:63aa0f06ada1552339497ba79c3c423079ef0cf1256a142c98f5ff8a16288807
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14014138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34322d8b234f540acad2b8e34e83e7f3d449957e8e6fb95e73ad91519527b97e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 17 Jul 2018 01:22:11 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 01:22:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 01:22:21 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:22:21 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:22:21 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:22:21 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:22:22 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 17 Jul 2018 01:22:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:22:22 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f05bcfb26874dbbf8fb99bb5f715b757f853c8cf9e2a1f71b738c297181f06`  
		Last Modified: Tue, 17 Jul 2018 01:25:51 GMT  
		Size: 11.6 MB (11623659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3753662d55d9a658ac4d8283545597c25c587f3285de3639bfd05b6a5b9e08b0`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e9b5bd0f8b8af54e3fc2b80ac1099012f73bf09beb9b80d4956f2b2e99de57`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254b815899f27e178b0e8e022bbd9cde08805b7602aec059728973a1d77e0be0`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:a6633d4588e1a4a7739b6af1f828df632a0308449b0abf6ff99d9f2501b8c066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:63aa0f06ada1552339497ba79c3c423079ef0cf1256a142c98f5ff8a16288807
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14014138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34322d8b234f540acad2b8e34e83e7f3d449957e8e6fb95e73ad91519527b97e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 17 Jul 2018 01:22:11 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 01:22:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 01:22:21 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:22:21 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:22:21 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:22:21 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:22:22 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 17 Jul 2018 01:22:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:22:22 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f05bcfb26874dbbf8fb99bb5f715b757f853c8cf9e2a1f71b738c297181f06`  
		Last Modified: Tue, 17 Jul 2018 01:25:51 GMT  
		Size: 11.6 MB (11623659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3753662d55d9a658ac4d8283545597c25c587f3285de3639bfd05b6a5b9e08b0`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e9b5bd0f8b8af54e3fc2b80ac1099012f73bf09beb9b80d4956f2b2e99de57`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254b815899f27e178b0e8e022bbd9cde08805b7602aec059728973a1d77e0be0`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:a6633d4588e1a4a7739b6af1f828df632a0308449b0abf6ff99d9f2501b8c066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:63aa0f06ada1552339497ba79c3c423079ef0cf1256a142c98f5ff8a16288807
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14014138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34322d8b234f540acad2b8e34e83e7f3d449957e8e6fb95e73ad91519527b97e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 17 Jul 2018 01:22:11 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 17 Jul 2018 01:22:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 01:22:21 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:22:21 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:22:21 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:22:21 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:22:22 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 17 Jul 2018 01:22:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:22:22 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f05bcfb26874dbbf8fb99bb5f715b757f853c8cf9e2a1f71b738c297181f06`  
		Last Modified: Tue, 17 Jul 2018 01:25:51 GMT  
		Size: 11.6 MB (11623659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3753662d55d9a658ac4d8283545597c25c587f3285de3639bfd05b6a5b9e08b0`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e9b5bd0f8b8af54e3fc2b80ac1099012f73bf09beb9b80d4956f2b2e99de57`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254b815899f27e178b0e8e022bbd9cde08805b7602aec059728973a1d77e0be0`  
		Last Modified: Tue, 17 Jul 2018 01:25:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6`

```console
$ docker pull chronograf@sha256:a47762fbe2a111409a6bb443a00775a4cadad2a7d1a9cc25b9d2c026f63c4e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:ee9262a1f43014b5629497506516ca781953d164e6b3594eab71bcd3e6732266
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb3ed80bc690afcf2eedc41e141671f82695ba9c8172fbdde12c7c61f0a6f90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Aug 2018 19:20:43 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Fri, 03 Aug 2018 19:21:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 03 Aug 2018 19:21:07 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 03 Aug 2018 19:21:07 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Aug 2018 19:21:07 GMT
EXPOSE 8888/tcp
# Fri, 03 Aug 2018 19:21:08 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Aug 2018 19:21:08 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 03 Aug 2018 19:21:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Aug 2018 19:21:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b1441043a087140f4600b9fce9ad2558337b410e2a76d6bb10959c34e36f`  
		Last Modified: Tue, 17 Jul 2018 01:22:48 GMT  
		Size: 4.5 MB (4500372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4278f23d4f6aeebe894c0e3b2c73b8c71628ae498212732cbe61deb80d8540`  
		Last Modified: Fri, 03 Aug 2018 19:22:44 GMT  
		Size: 22.1 MB (22074670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4c9e70ed9a10dd4c5756a108fee3218534d100995ee6a6b6d005ed5ec90db8`  
		Last Modified: Fri, 03 Aug 2018 19:22:37 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d99269a06d7cec7af54bc0bd8e44738a9c671d400de0a9c6847dba5161b653b`  
		Last Modified: Fri, 03 Aug 2018 19:22:36 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f70b37760c5b2941079b879b096c002d15d854185ef6c31ae877125e7a4c11`  
		Last Modified: Fri, 03 Aug 2018 19:22:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:fb8ec0a9b72423274c2aee956a189855571794f56e30b6de6d6db2df73fbcf99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43665433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc1d063691d6807d3c0497a31914f75a6fcb8db4b1d3ecd8c9f4a5febc2dfb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 21 Jul 2018 11:57:52 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Sat, 21 Jul 2018 11:58:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:58:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 21 Jul 2018 11:58:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 21 Jul 2018 11:58:17 GMT
EXPOSE 8888/tcp
# Sat, 21 Jul 2018 11:58:17 GMT
VOLUME [/var/lib/chronograf]
# Sat, 21 Jul 2018 11:58:18 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 21 Jul 2018 11:58:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 11:58:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cf45c882b806e89bfc72bf429786f2252363328a0af138650fc6886feb8f3a`  
		Last Modified: Tue, 17 Jul 2018 14:17:03 GMT  
		Size: 3.9 MB (3873177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d684186a43618a1d5046c9c95b1b4e105cd1e437d9eab181de7bba1c3b8a0d`  
		Last Modified: Sat, 21 Jul 2018 11:58:52 GMT  
		Size: 20.5 MB (20497683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801df581a94a9bfbf999d14257286058cde000f4ebf1175f4a06f94f8c70d04`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46f5f94dd838614b3efda5b7599f5930a663fa088e39144b0244d079a5275a3`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e89bb000d6dfa05ad2ccaf7f2d01ec3d82640371e50e19431b651bd2e8a28`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2937c2db68d1620980c9e0bb730993a48016ab75fe76b7f3c7f960f381953224
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45127859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a098baa16d46d92535e326cf6bacf5be26efe0fff9e7c93f911d342c4b95878`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 21 Jul 2018 08:40:28 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Sat, 21 Jul 2018 08:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 08:41:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 21 Jul 2018 08:41:13 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 21 Jul 2018 08:41:14 GMT
EXPOSE 8888/tcp
# Sat, 21 Jul 2018 08:41:15 GMT
VOLUME [/var/lib/chronograf]
# Sat, 21 Jul 2018 08:41:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 21 Jul 2018 08:41:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 08:41:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a011d81ce6cb81db31082a7d2dee4e84b50fb16f676e1473d631821c81d04`  
		Last Modified: Tue, 17 Jul 2018 14:29:23 GMT  
		Size: 4.1 MB (4075147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0fbdf3f9c57d04372b462a6289663dcae1cbe4293ddba60e04ffba1aebb4e9`  
		Last Modified: Sat, 21 Jul 2018 08:41:57 GMT  
		Size: 20.7 MB (20696672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64770befa17e9a7c9994e04559a525fd68b13132bf9d1e646b09539c371d15b1`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53863b8f537daf3874cde09416f55d805c938d6637ccd63dab4ca424d2a68399`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a71dc3c24bec50db4aca67838e7815de8597cb64c9121bad0a7899f53dd68de`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.1`

```console
$ docker pull chronograf@sha256:a47762fbe2a111409a6bb443a00775a4cadad2a7d1a9cc25b9d2c026f63c4e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.1` - linux; amd64

```console
$ docker pull chronograf@sha256:ee9262a1f43014b5629497506516ca781953d164e6b3594eab71bcd3e6732266
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb3ed80bc690afcf2eedc41e141671f82695ba9c8172fbdde12c7c61f0a6f90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Aug 2018 19:20:43 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Fri, 03 Aug 2018 19:21:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 03 Aug 2018 19:21:07 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 03 Aug 2018 19:21:07 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Aug 2018 19:21:07 GMT
EXPOSE 8888/tcp
# Fri, 03 Aug 2018 19:21:08 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Aug 2018 19:21:08 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 03 Aug 2018 19:21:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Aug 2018 19:21:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b1441043a087140f4600b9fce9ad2558337b410e2a76d6bb10959c34e36f`  
		Last Modified: Tue, 17 Jul 2018 01:22:48 GMT  
		Size: 4.5 MB (4500372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4278f23d4f6aeebe894c0e3b2c73b8c71628ae498212732cbe61deb80d8540`  
		Last Modified: Fri, 03 Aug 2018 19:22:44 GMT  
		Size: 22.1 MB (22074670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4c9e70ed9a10dd4c5756a108fee3218534d100995ee6a6b6d005ed5ec90db8`  
		Last Modified: Fri, 03 Aug 2018 19:22:37 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d99269a06d7cec7af54bc0bd8e44738a9c671d400de0a9c6847dba5161b653b`  
		Last Modified: Fri, 03 Aug 2018 19:22:36 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f70b37760c5b2941079b879b096c002d15d854185ef6c31ae877125e7a4c11`  
		Last Modified: Fri, 03 Aug 2018 19:22:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:fb8ec0a9b72423274c2aee956a189855571794f56e30b6de6d6db2df73fbcf99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43665433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc1d063691d6807d3c0497a31914f75a6fcb8db4b1d3ecd8c9f4a5febc2dfb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 21 Jul 2018 11:57:52 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Sat, 21 Jul 2018 11:58:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:58:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 21 Jul 2018 11:58:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 21 Jul 2018 11:58:17 GMT
EXPOSE 8888/tcp
# Sat, 21 Jul 2018 11:58:17 GMT
VOLUME [/var/lib/chronograf]
# Sat, 21 Jul 2018 11:58:18 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 21 Jul 2018 11:58:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 11:58:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cf45c882b806e89bfc72bf429786f2252363328a0af138650fc6886feb8f3a`  
		Last Modified: Tue, 17 Jul 2018 14:17:03 GMT  
		Size: 3.9 MB (3873177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d684186a43618a1d5046c9c95b1b4e105cd1e437d9eab181de7bba1c3b8a0d`  
		Last Modified: Sat, 21 Jul 2018 11:58:52 GMT  
		Size: 20.5 MB (20497683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801df581a94a9bfbf999d14257286058cde000f4ebf1175f4a06f94f8c70d04`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46f5f94dd838614b3efda5b7599f5930a663fa088e39144b0244d079a5275a3`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e89bb000d6dfa05ad2ccaf7f2d01ec3d82640371e50e19431b651bd2e8a28`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2937c2db68d1620980c9e0bb730993a48016ab75fe76b7f3c7f960f381953224
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45127859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a098baa16d46d92535e326cf6bacf5be26efe0fff9e7c93f911d342c4b95878`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 21 Jul 2018 08:40:28 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Sat, 21 Jul 2018 08:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 08:41:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 21 Jul 2018 08:41:13 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 21 Jul 2018 08:41:14 GMT
EXPOSE 8888/tcp
# Sat, 21 Jul 2018 08:41:15 GMT
VOLUME [/var/lib/chronograf]
# Sat, 21 Jul 2018 08:41:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 21 Jul 2018 08:41:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 08:41:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a011d81ce6cb81db31082a7d2dee4e84b50fb16f676e1473d631821c81d04`  
		Last Modified: Tue, 17 Jul 2018 14:29:23 GMT  
		Size: 4.1 MB (4075147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0fbdf3f9c57d04372b462a6289663dcae1cbe4293ddba60e04ffba1aebb4e9`  
		Last Modified: Sat, 21 Jul 2018 08:41:57 GMT  
		Size: 20.7 MB (20696672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64770befa17e9a7c9994e04559a525fd68b13132bf9d1e646b09539c371d15b1`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53863b8f537daf3874cde09416f55d805c938d6637ccd63dab4ca424d2a68399`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a71dc3c24bec50db4aca67838e7815de8597cb64c9121bad0a7899f53dd68de`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.1-alpine`

```console
$ docker pull chronograf@sha256:9e8ab0090d54e4525b432b457b1dbc70db1dd985244ded71d7180dd110e765c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e705f82451d8d1232cfabd3c95ad476964bc8caf20296ee0a2c4f0dfea742bff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14124458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ef3a395011fa53e84fe038c2157fc86a032dde44b784d39edc398cd5f05a92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Aug 2018 19:21:55 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Fri, 03 Aug 2018 19:22:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Aug 2018 19:22:05 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 03 Aug 2018 19:22:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Aug 2018 19:22:06 GMT
EXPOSE 8888/tcp
# Fri, 03 Aug 2018 19:22:06 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Aug 2018 19:22:07 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 03 Aug 2018 19:22:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Aug 2018 19:22:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d327ff270f939bbb661187815e0ab340832108c4008c912713c9763e8d7f32`  
		Last Modified: Fri, 03 Aug 2018 19:23:49 GMT  
		Size: 11.7 MB (11733986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f74b90344a58e8ad67bcdb655d44282b4b34ee02b7cf1c7dd451d17bb46978`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124b502ae1fa97fd2cb294a1c71ba06395c58a19f90d9fb9fc3e66a8d411934d`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4266ae9e92bb0f586657a9ea0b929489393b429c18e34adc5700d525ef9207f6`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:9e8ab0090d54e4525b432b457b1dbc70db1dd985244ded71d7180dd110e765c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e705f82451d8d1232cfabd3c95ad476964bc8caf20296ee0a2c4f0dfea742bff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14124458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ef3a395011fa53e84fe038c2157fc86a032dde44b784d39edc398cd5f05a92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Aug 2018 19:21:55 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Fri, 03 Aug 2018 19:22:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Aug 2018 19:22:05 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 03 Aug 2018 19:22:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Aug 2018 19:22:06 GMT
EXPOSE 8888/tcp
# Fri, 03 Aug 2018 19:22:06 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Aug 2018 19:22:07 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 03 Aug 2018 19:22:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Aug 2018 19:22:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d327ff270f939bbb661187815e0ab340832108c4008c912713c9763e8d7f32`  
		Last Modified: Fri, 03 Aug 2018 19:23:49 GMT  
		Size: 11.7 MB (11733986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f74b90344a58e8ad67bcdb655d44282b4b34ee02b7cf1c7dd451d17bb46978`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124b502ae1fa97fd2cb294a1c71ba06395c58a19f90d9fb9fc3e66a8d411934d`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4266ae9e92bb0f586657a9ea0b929489393b429c18e34adc5700d525ef9207f6`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:9e8ab0090d54e4525b432b457b1dbc70db1dd985244ded71d7180dd110e765c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e705f82451d8d1232cfabd3c95ad476964bc8caf20296ee0a2c4f0dfea742bff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14124458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ef3a395011fa53e84fe038c2157fc86a032dde44b784d39edc398cd5f05a92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 03 Aug 2018 19:21:55 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Fri, 03 Aug 2018 19:22:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Aug 2018 19:22:05 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 03 Aug 2018 19:22:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Aug 2018 19:22:06 GMT
EXPOSE 8888/tcp
# Fri, 03 Aug 2018 19:22:06 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Aug 2018 19:22:07 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 03 Aug 2018 19:22:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Aug 2018 19:22:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d327ff270f939bbb661187815e0ab340832108c4008c912713c9763e8d7f32`  
		Last Modified: Fri, 03 Aug 2018 19:23:49 GMT  
		Size: 11.7 MB (11733986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f74b90344a58e8ad67bcdb655d44282b4b34ee02b7cf1c7dd451d17bb46978`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124b502ae1fa97fd2cb294a1c71ba06395c58a19f90d9fb9fc3e66a8d411934d`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4266ae9e92bb0f586657a9ea0b929489393b429c18e34adc5700d525ef9207f6`  
		Last Modified: Fri, 03 Aug 2018 19:23:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:a47762fbe2a111409a6bb443a00775a4cadad2a7d1a9cc25b9d2c026f63c4e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:ee9262a1f43014b5629497506516ca781953d164e6b3594eab71bcd3e6732266
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb3ed80bc690afcf2eedc41e141671f82695ba9c8172fbdde12c7c61f0a6f90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Aug 2018 19:20:43 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Fri, 03 Aug 2018 19:21:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 03 Aug 2018 19:21:07 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 03 Aug 2018 19:21:07 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 03 Aug 2018 19:21:07 GMT
EXPOSE 8888/tcp
# Fri, 03 Aug 2018 19:21:08 GMT
VOLUME [/var/lib/chronograf]
# Fri, 03 Aug 2018 19:21:08 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 03 Aug 2018 19:21:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Aug 2018 19:21:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b1441043a087140f4600b9fce9ad2558337b410e2a76d6bb10959c34e36f`  
		Last Modified: Tue, 17 Jul 2018 01:22:48 GMT  
		Size: 4.5 MB (4500372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4278f23d4f6aeebe894c0e3b2c73b8c71628ae498212732cbe61deb80d8540`  
		Last Modified: Fri, 03 Aug 2018 19:22:44 GMT  
		Size: 22.1 MB (22074670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4c9e70ed9a10dd4c5756a108fee3218534d100995ee6a6b6d005ed5ec90db8`  
		Last Modified: Fri, 03 Aug 2018 19:22:37 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d99269a06d7cec7af54bc0bd8e44738a9c671d400de0a9c6847dba5161b653b`  
		Last Modified: Fri, 03 Aug 2018 19:22:36 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f70b37760c5b2941079b879b096c002d15d854185ef6c31ae877125e7a4c11`  
		Last Modified: Fri, 03 Aug 2018 19:22:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:fb8ec0a9b72423274c2aee956a189855571794f56e30b6de6d6db2df73fbcf99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43665433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc1d063691d6807d3c0497a31914f75a6fcb8db4b1d3ecd8c9f4a5febc2dfb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 21 Jul 2018 11:57:52 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Sat, 21 Jul 2018 11:58:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:58:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 21 Jul 2018 11:58:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 21 Jul 2018 11:58:17 GMT
EXPOSE 8888/tcp
# Sat, 21 Jul 2018 11:58:17 GMT
VOLUME [/var/lib/chronograf]
# Sat, 21 Jul 2018 11:58:18 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 21 Jul 2018 11:58:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 11:58:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cf45c882b806e89bfc72bf429786f2252363328a0af138650fc6886feb8f3a`  
		Last Modified: Tue, 17 Jul 2018 14:17:03 GMT  
		Size: 3.9 MB (3873177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d684186a43618a1d5046c9c95b1b4e105cd1e437d9eab181de7bba1c3b8a0d`  
		Last Modified: Sat, 21 Jul 2018 11:58:52 GMT  
		Size: 20.5 MB (20497683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801df581a94a9bfbf999d14257286058cde000f4ebf1175f4a06f94f8c70d04`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46f5f94dd838614b3efda5b7599f5930a663fa088e39144b0244d079a5275a3`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69e89bb000d6dfa05ad2ccaf7f2d01ec3d82640371e50e19431b651bd2e8a28`  
		Last Modified: Sat, 21 Jul 2018 11:58:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2937c2db68d1620980c9e0bb730993a48016ab75fe76b7f3c7f960f381953224
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45127859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a098baa16d46d92535e326cf6bacf5be26efe0fff9e7c93f911d342c4b95878`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 21 Jul 2018 08:40:28 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Sat, 21 Jul 2018 08:41:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 08:41:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 21 Jul 2018 08:41:13 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 21 Jul 2018 08:41:14 GMT
EXPOSE 8888/tcp
# Sat, 21 Jul 2018 08:41:15 GMT
VOLUME [/var/lib/chronograf]
# Sat, 21 Jul 2018 08:41:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 21 Jul 2018 08:41:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 08:41:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a011d81ce6cb81db31082a7d2dee4e84b50fb16f676e1473d631821c81d04`  
		Last Modified: Tue, 17 Jul 2018 14:29:23 GMT  
		Size: 4.1 MB (4075147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0fbdf3f9c57d04372b462a6289663dcae1cbe4293ddba60e04ffba1aebb4e9`  
		Last Modified: Sat, 21 Jul 2018 08:41:57 GMT  
		Size: 20.7 MB (20696672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64770befa17e9a7c9994e04559a525fd68b13132bf9d1e646b09539c371d15b1`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53863b8f537daf3874cde09416f55d805c938d6637ccd63dab4ca424d2a68399`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a71dc3c24bec50db4aca67838e7815de8597cb64c9121bad0a7899f53dd68de`  
		Last Modified: Sat, 21 Jul 2018 08:41:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
