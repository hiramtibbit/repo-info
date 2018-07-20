<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.5`](#chronograf15)
-	[`chronograf:1.5.0`](#chronograf150)
-	[`chronograf:1.5.0.1`](#chronograf1501)
-	[`chronograf:1.5.0.1-alpine`](#chronograf1501-alpine)
-	[`chronograf:1.5.0-alpine`](#chronograf150-alpine)
-	[`chronograf:1.5-alpine`](#chronograf15-alpine)
-	[`chronograf:1.6`](#chronograf16)
-	[`chronograf:1.6.0`](#chronograf160)
-	[`chronograf:1.6.0-alpine`](#chronograf160-alpine)
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
$ docker pull chronograf@sha256:fad70916835a025ac6334a757304be05a8871233172bd28446fa9639f45120a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:241b68c4d206454587eedfd58bd430fd642f45921f0753bb29bfce9497c55790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49079999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa90abbbfd0e05bb07d8cb9bcc4e2f6df4d4306a6a0d69416896cf7ba150f35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 18:20:20 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Fri, 20 Jul 2018 18:20:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jul 2018 18:20:40 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 20 Jul 2018 18:20:41 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 20 Jul 2018 18:20:41 GMT
EXPOSE 8888/tcp
# Fri, 20 Jul 2018 18:20:41 GMT
VOLUME [/var/lib/chronograf]
# Fri, 20 Jul 2018 18:20:42 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 20 Jul 2018 18:20:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 18:20:42 GMT
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
	-	`sha256:c7ede7e1e799b939fd8d212405545c710c0b44777a032ad241fc953479c1c5e8`  
		Last Modified: Fri, 20 Jul 2018 18:22:01 GMT  
		Size: 22.1 MB (22069329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbd93609407c7bcd5b907248b03af4f726ea50e43de2ae3945f3bcb5466d16a`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5903119688d5645bf6505183b957b0406c52408e8c3b5974af5d3e0d812fdc`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd538ff4ba5cd8927d99a137f3ee4c289b6e456f19f16bbce796c66da3df4672`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.0`

```console
$ docker pull chronograf@sha256:fad70916835a025ac6334a757304be05a8871233172bd28446fa9639f45120a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.0` - linux; amd64

```console
$ docker pull chronograf@sha256:241b68c4d206454587eedfd58bd430fd642f45921f0753bb29bfce9497c55790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49079999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa90abbbfd0e05bb07d8cb9bcc4e2f6df4d4306a6a0d69416896cf7ba150f35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 18:20:20 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Fri, 20 Jul 2018 18:20:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jul 2018 18:20:40 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 20 Jul 2018 18:20:41 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 20 Jul 2018 18:20:41 GMT
EXPOSE 8888/tcp
# Fri, 20 Jul 2018 18:20:41 GMT
VOLUME [/var/lib/chronograf]
# Fri, 20 Jul 2018 18:20:42 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 20 Jul 2018 18:20:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 18:20:42 GMT
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
	-	`sha256:c7ede7e1e799b939fd8d212405545c710c0b44777a032ad241fc953479c1c5e8`  
		Last Modified: Fri, 20 Jul 2018 18:22:01 GMT  
		Size: 22.1 MB (22069329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbd93609407c7bcd5b907248b03af4f726ea50e43de2ae3945f3bcb5466d16a`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5903119688d5645bf6505183b957b0406c52408e8c3b5974af5d3e0d812fdc`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd538ff4ba5cd8927d99a137f3ee4c289b6e456f19f16bbce796c66da3df4672`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.0-alpine`

```console
$ docker pull chronograf@sha256:85801ae35f3820a4922626117c0d8ff750be1d8e4029d500170b7173c465474b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5290c4bd64e0984f559b624e6eec9d4be0ec6339903c227481b67d0a14d3e491
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14120829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f333761d3a13f6179887d79f42845bb10c67221bf9d67c7c0f69405ba21a4588`
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
# Fri, 20 Jul 2018 18:21:16 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Fri, 20 Jul 2018 18:21:25 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 20 Jul 2018 18:21:25 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 20 Jul 2018 18:21:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 20 Jul 2018 18:21:26 GMT
EXPOSE 8888/tcp
# Fri, 20 Jul 2018 18:21:26 GMT
VOLUME [/var/lib/chronograf]
# Fri, 20 Jul 2018 18:21:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 20 Jul 2018 18:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 18:21:27 GMT
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
	-	`sha256:d61ff8392b0f8ac9668de8f3ae167d760e9f7be87dc5b01153b57a9fdd00e0c3`  
		Last Modified: Fri, 20 Jul 2018 18:23:01 GMT  
		Size: 11.7 MB (11730362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e682da222873828a5202ebb2e58b5b044e5ad508665877baca0d05fe6fc324`  
		Last Modified: Fri, 20 Jul 2018 18:22:56 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d2c9a1a7a202bbad3c7aa32251e5354189ad0c33cbd3f3c68ffc775ff495f1`  
		Last Modified: Fri, 20 Jul 2018 18:22:56 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4088d55b45dc62ccef6319ef2cb6ff23622f12ab163a8c2d4ca405e3f9ab5d1b`  
		Last Modified: Fri, 20 Jul 2018 18:22:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:85801ae35f3820a4922626117c0d8ff750be1d8e4029d500170b7173c465474b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5290c4bd64e0984f559b624e6eec9d4be0ec6339903c227481b67d0a14d3e491
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14120829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f333761d3a13f6179887d79f42845bb10c67221bf9d67c7c0f69405ba21a4588`
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
# Fri, 20 Jul 2018 18:21:16 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Fri, 20 Jul 2018 18:21:25 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 20 Jul 2018 18:21:25 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 20 Jul 2018 18:21:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 20 Jul 2018 18:21:26 GMT
EXPOSE 8888/tcp
# Fri, 20 Jul 2018 18:21:26 GMT
VOLUME [/var/lib/chronograf]
# Fri, 20 Jul 2018 18:21:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 20 Jul 2018 18:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 18:21:27 GMT
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
	-	`sha256:d61ff8392b0f8ac9668de8f3ae167d760e9f7be87dc5b01153b57a9fdd00e0c3`  
		Last Modified: Fri, 20 Jul 2018 18:23:01 GMT  
		Size: 11.7 MB (11730362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e682da222873828a5202ebb2e58b5b044e5ad508665877baca0d05fe6fc324`  
		Last Modified: Fri, 20 Jul 2018 18:22:56 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d2c9a1a7a202bbad3c7aa32251e5354189ad0c33cbd3f3c68ffc775ff495f1`  
		Last Modified: Fri, 20 Jul 2018 18:22:56 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4088d55b45dc62ccef6319ef2cb6ff23622f12ab163a8c2d4ca405e3f9ab5d1b`  
		Last Modified: Fri, 20 Jul 2018 18:22:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:85801ae35f3820a4922626117c0d8ff750be1d8e4029d500170b7173c465474b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5290c4bd64e0984f559b624e6eec9d4be0ec6339903c227481b67d0a14d3e491
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14120829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f333761d3a13f6179887d79f42845bb10c67221bf9d67c7c0f69405ba21a4588`
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
# Fri, 20 Jul 2018 18:21:16 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Fri, 20 Jul 2018 18:21:25 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 20 Jul 2018 18:21:25 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 20 Jul 2018 18:21:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 20 Jul 2018 18:21:26 GMT
EXPOSE 8888/tcp
# Fri, 20 Jul 2018 18:21:26 GMT
VOLUME [/var/lib/chronograf]
# Fri, 20 Jul 2018 18:21:27 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 20 Jul 2018 18:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 18:21:27 GMT
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
	-	`sha256:d61ff8392b0f8ac9668de8f3ae167d760e9f7be87dc5b01153b57a9fdd00e0c3`  
		Last Modified: Fri, 20 Jul 2018 18:23:01 GMT  
		Size: 11.7 MB (11730362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e682da222873828a5202ebb2e58b5b044e5ad508665877baca0d05fe6fc324`  
		Last Modified: Fri, 20 Jul 2018 18:22:56 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d2c9a1a7a202bbad3c7aa32251e5354189ad0c33cbd3f3c68ffc775ff495f1`  
		Last Modified: Fri, 20 Jul 2018 18:22:56 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4088d55b45dc62ccef6319ef2cb6ff23622f12ab163a8c2d4ca405e3f9ab5d1b`  
		Last Modified: Fri, 20 Jul 2018 18:22:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:fad70916835a025ac6334a757304be05a8871233172bd28446fa9639f45120a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:241b68c4d206454587eedfd58bd430fd642f45921f0753bb29bfce9497c55790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49079999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa90abbbfd0e05bb07d8cb9bcc4e2f6df4d4306a6a0d69416896cf7ba150f35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 18:20:20 GMT
ENV CHRONOGRAF_VERSION=1.6.0
# Fri, 20 Jul 2018 18:20:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jul 2018 18:20:40 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 20 Jul 2018 18:20:41 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 20 Jul 2018 18:20:41 GMT
EXPOSE 8888/tcp
# Fri, 20 Jul 2018 18:20:41 GMT
VOLUME [/var/lib/chronograf]
# Fri, 20 Jul 2018 18:20:42 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 20 Jul 2018 18:20:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 18:20:42 GMT
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
	-	`sha256:c7ede7e1e799b939fd8d212405545c710c0b44777a032ad241fc953479c1c5e8`  
		Last Modified: Fri, 20 Jul 2018 18:22:01 GMT  
		Size: 22.1 MB (22069329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbd93609407c7bcd5b907248b03af4f726ea50e43de2ae3945f3bcb5466d16a`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5903119688d5645bf6505183b957b0406c52408e8c3b5974af5d3e0d812fdc`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd538ff4ba5cd8927d99a137f3ee4c289b6e456f19f16bbce796c66da3df4672`  
		Last Modified: Fri, 20 Jul 2018 18:21:52 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
