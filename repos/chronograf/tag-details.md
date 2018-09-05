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
$ docker pull chronograf@sha256:ba9272bf931712708b2cf0a536e0b8ad4c97ebcda8c8effed5506b7a7cc52126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:7e5e654cf7a22f11ecb7c8555f8dfafcfbc4b198e599a1e9e3c6964c9253ebbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3aa387bf50bf6cacbdbab1990c671082a41b5e0ae632fc73d48b667aa3333`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 04 Sep 2018 23:04:19 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 04 Sep 2018 23:04:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:04:34 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:04:34 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 04 Sep 2018 23:04:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:04:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ded6d78d8b9128ef2922f65a07020a45fcce2e51f020676fb77f45f5f6894dc`  
		Last Modified: Tue, 04 Sep 2018 23:05:28 GMT  
		Size: 4.5 MB (4500369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9049bac83cbe5e04cbd3c7e0d863fbe954f9930371b6b96c8ab51966522bbd`  
		Last Modified: Tue, 04 Sep 2018 23:05:32 GMT  
		Size: 22.0 MB (22033548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882f6b3bdae8096263c6f76da83136c38efe4d6b746fb342a999e971addba9e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866084c57792326a1dfc6113f1e295632778f11225e8b48a78b659ac8807208`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbf485b4e77c2961c8538776dcc922e57f734fadee0f82ccdbc583a11bace4`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
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
$ docker pull chronograf@sha256:ba9272bf931712708b2cf0a536e0b8ad4c97ebcda8c8effed5506b7a7cc52126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:7e5e654cf7a22f11ecb7c8555f8dfafcfbc4b198e599a1e9e3c6964c9253ebbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3aa387bf50bf6cacbdbab1990c671082a41b5e0ae632fc73d48b667aa3333`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 04 Sep 2018 23:04:19 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 04 Sep 2018 23:04:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:04:34 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:04:34 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 04 Sep 2018 23:04:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:04:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ded6d78d8b9128ef2922f65a07020a45fcce2e51f020676fb77f45f5f6894dc`  
		Last Modified: Tue, 04 Sep 2018 23:05:28 GMT  
		Size: 4.5 MB (4500369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9049bac83cbe5e04cbd3c7e0d863fbe954f9930371b6b96c8ab51966522bbd`  
		Last Modified: Tue, 04 Sep 2018 23:05:32 GMT  
		Size: 22.0 MB (22033548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882f6b3bdae8096263c6f76da83136c38efe4d6b746fb342a999e971addba9e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866084c57792326a1dfc6113f1e295632778f11225e8b48a78b659ac8807208`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbf485b4e77c2961c8538776dcc922e57f734fadee0f82ccdbc583a11bace4`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
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
$ docker pull chronograf@sha256:ba9272bf931712708b2cf0a536e0b8ad4c97ebcda8c8effed5506b7a7cc52126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:7e5e654cf7a22f11ecb7c8555f8dfafcfbc4b198e599a1e9e3c6964c9253ebbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3aa387bf50bf6cacbdbab1990c671082a41b5e0ae632fc73d48b667aa3333`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 04 Sep 2018 23:04:19 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 04 Sep 2018 23:04:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:04:34 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:04:34 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:04:34 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 04 Sep 2018 23:04:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:04:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ded6d78d8b9128ef2922f65a07020a45fcce2e51f020676fb77f45f5f6894dc`  
		Last Modified: Tue, 04 Sep 2018 23:05:28 GMT  
		Size: 4.5 MB (4500369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9049bac83cbe5e04cbd3c7e0d863fbe954f9930371b6b96c8ab51966522bbd`  
		Last Modified: Tue, 04 Sep 2018 23:05:32 GMT  
		Size: 22.0 MB (22033548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882f6b3bdae8096263c6f76da83136c38efe4d6b746fb342a999e971addba9e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866084c57792326a1dfc6113f1e295632778f11225e8b48a78b659ac8807208`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbf485b4e77c2961c8538776dcc922e57f734fadee0f82ccdbc583a11bace4`  
		Last Modified: Tue, 04 Sep 2018 23:05:27 GMT  
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
$ docker pull chronograf@sha256:14b7690332fd80ab7b2674dcfafa6333d637d138c0d83adad8522e0a8e937c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:c2466d34b8480c163b8c11307ef8a858b8fe494fd71fd466fa659f726d34be4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14014148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a999399e726941ddfc782683674d006ea5c117442fca461d2ea8a20d85d069`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:02:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 04 Sep 2018 23:04:40 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 04 Sep 2018 23:04:40 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 04 Sep 2018 23:04:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:04:48 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:04:48 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 04 Sep 2018 23:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:04:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72645f13036d032a355da86f6dbd210460b976b408bd03617c93bf67107a4b0`  
		Last Modified: Thu, 30 Aug 2018 22:05:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a734d2446babb42d332054eac162e2a058a89bdbf614687248798711d7eb66e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:40 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8feae0ee970a3fb96813bc81c344dcdf67cfdd80001c0fe03338193934b652`  
		Last Modified: Tue, 04 Sep 2018 23:05:44 GMT  
		Size: 11.6 MB (11623672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ddd7f87ac53f2ee0e1c3e18a6c0d7f61049513155d4a091db32c9e6f6c203`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3243f8e86d4edaa99a4b21ed913f2e23ab846a069a16d9df722a96526086e8a0`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433e516d1e6f4f013aab7d15a5d8e6f5faaf3743fc1664d1cb0c03723590a46c`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:14b7690332fd80ab7b2674dcfafa6333d637d138c0d83adad8522e0a8e937c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:c2466d34b8480c163b8c11307ef8a858b8fe494fd71fd466fa659f726d34be4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14014148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a999399e726941ddfc782683674d006ea5c117442fca461d2ea8a20d85d069`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:02:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 04 Sep 2018 23:04:40 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 04 Sep 2018 23:04:40 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 04 Sep 2018 23:04:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:04:48 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:04:48 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 04 Sep 2018 23:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:04:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72645f13036d032a355da86f6dbd210460b976b408bd03617c93bf67107a4b0`  
		Last Modified: Thu, 30 Aug 2018 22:05:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a734d2446babb42d332054eac162e2a058a89bdbf614687248798711d7eb66e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:40 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8feae0ee970a3fb96813bc81c344dcdf67cfdd80001c0fe03338193934b652`  
		Last Modified: Tue, 04 Sep 2018 23:05:44 GMT  
		Size: 11.6 MB (11623672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ddd7f87ac53f2ee0e1c3e18a6c0d7f61049513155d4a091db32c9e6f6c203`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3243f8e86d4edaa99a4b21ed913f2e23ab846a069a16d9df722a96526086e8a0`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433e516d1e6f4f013aab7d15a5d8e6f5faaf3743fc1664d1cb0c03723590a46c`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:14b7690332fd80ab7b2674dcfafa6333d637d138c0d83adad8522e0a8e937c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:c2466d34b8480c163b8c11307ef8a858b8fe494fd71fd466fa659f726d34be4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14014148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a999399e726941ddfc782683674d006ea5c117442fca461d2ea8a20d85d069`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:02:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 04 Sep 2018 23:04:40 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 04 Sep 2018 23:04:40 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 04 Sep 2018 23:04:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:04:48 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:04:48 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:04:48 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 04 Sep 2018 23:04:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:04:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72645f13036d032a355da86f6dbd210460b976b408bd03617c93bf67107a4b0`  
		Last Modified: Thu, 30 Aug 2018 22:05:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a734d2446babb42d332054eac162e2a058a89bdbf614687248798711d7eb66e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:40 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8feae0ee970a3fb96813bc81c344dcdf67cfdd80001c0fe03338193934b652`  
		Last Modified: Tue, 04 Sep 2018 23:05:44 GMT  
		Size: 11.6 MB (11623672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ddd7f87ac53f2ee0e1c3e18a6c0d7f61049513155d4a091db32c9e6f6c203`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3243f8e86d4edaa99a4b21ed913f2e23ab846a069a16d9df722a96526086e8a0`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433e516d1e6f4f013aab7d15a5d8e6f5faaf3743fc1664d1cb0c03723590a46c`  
		Last Modified: Tue, 04 Sep 2018 23:05:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6`

```console
$ docker pull chronograf@sha256:950da567720115b6b965f1d309f220e4b98b25856fec29c5d75956f6f7d030e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:813834f1b424d33a91d209269014d03c0575c50cef7f03eee42c4d68ddb452c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cd3bfd857b4d3dbd860764ffc58e42a9c444f7af2c661983ab868256e13070`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 04 Sep 2018 23:04:52 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Tue, 04 Sep 2018 23:05:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 04 Sep 2018 23:05:04 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:05:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:05:05 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:05:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:05:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 04 Sep 2018 23:05:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:05:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ded6d78d8b9128ef2922f65a07020a45fcce2e51f020676fb77f45f5f6894dc`  
		Last Modified: Tue, 04 Sep 2018 23:05:28 GMT  
		Size: 4.5 MB (4500369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dfe8daa33cbed6554e84d6a2662a8df98119dcaeed489d33b91d7a442af3`  
		Last Modified: Tue, 04 Sep 2018 23:05:55 GMT  
		Size: 22.1 MB (22074550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a417fb67eb2716aac4f6312cb592a74eca83f9744529cbcfcf1d8f056d4a4c`  
		Last Modified: Tue, 04 Sep 2018 23:05:52 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240c172d43e60d845ff1978568e01f9214a3d598720c16b541f4d4637f6d0ff`  
		Last Modified: Tue, 04 Sep 2018 23:05:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe9a9d432d9503d39d1d401d264bec6854851f2f9a7ea32cb788328086cb8eb`  
		Last Modified: Tue, 04 Sep 2018 23:05:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:26ed6db13a6d88a9b0d2cf4d0c0fd76b00a58877936f5e59fa99c20c9a957059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43668757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7186413f11850e8357405438db73e24e141bb4f43b5115cb67fcad123531f04d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Aug 2018 11:58:53 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Sat, 04 Aug 2018 11:59:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 11:59:11 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Aug 2018 11:59:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Aug 2018 11:59:12 GMT
EXPOSE 8888/tcp
# Sat, 04 Aug 2018 11:59:13 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Aug 2018 11:59:13 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Aug 2018 11:59:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Aug 2018 11:59:14 GMT
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
	-	`sha256:7944d2ed4a49de8695e9983e194b1666b09653e9969a428f6a7849c8680657b9`  
		Last Modified: Sat, 04 Aug 2018 11:59:31 GMT  
		Size: 20.5 MB (20501002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f03f81904826117e3d1c2b954ba0028858ea3535846bb01cacabbc7bf7eedc`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b6a4ed9e83f1d632510de7e8f39aede27b9d69ec22fb657c5d93a985da12f7`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46af21b3018bb877193d98c967127d1c7ebf03dd19faecd4d74863cc92307372`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:99f145e0b6d4a5a88006d193752a051cbcc0c8ba43a8b2082dfa7c1d4da41007
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45131870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e99b2a57ab67858818e87e95d2a07918f57fb124991ca42dcddf12ae36521d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Aug 2018 08:40:14 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Sat, 04 Aug 2018 08:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 08:40:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Aug 2018 08:40:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Aug 2018 08:40:54 GMT
EXPOSE 8888/tcp
# Sat, 04 Aug 2018 08:40:55 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Aug 2018 08:40:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Aug 2018 08:40:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Aug 2018 08:40:57 GMT
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
	-	`sha256:94a06d938bb11e6d985f924ac10e0f08831fb64af8592268cff85d61ded4f4fa`  
		Last Modified: Sat, 04 Aug 2018 08:41:40 GMT  
		Size: 20.7 MB (20700686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6526643854819be4efca313ea7e3f61be74aabd79e8bc5b4e8b2ec823c7d85`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3c94694fd4fc6da3ed9c1a978e193b46e5f817bb381a88bb6db6ec1df82805`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce56f36828f6ccaa8c0fb4259558c1a2eb5bc79a5f669a90d49c884b17ff58`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.1`

```console
$ docker pull chronograf@sha256:950da567720115b6b965f1d309f220e4b98b25856fec29c5d75956f6f7d030e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.1` - linux; amd64

```console
$ docker pull chronograf@sha256:813834f1b424d33a91d209269014d03c0575c50cef7f03eee42c4d68ddb452c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cd3bfd857b4d3dbd860764ffc58e42a9c444f7af2c661983ab868256e13070`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 04 Sep 2018 23:04:52 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Tue, 04 Sep 2018 23:05:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 04 Sep 2018 23:05:04 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:05:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:05:05 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:05:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:05:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 04 Sep 2018 23:05:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:05:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ded6d78d8b9128ef2922f65a07020a45fcce2e51f020676fb77f45f5f6894dc`  
		Last Modified: Tue, 04 Sep 2018 23:05:28 GMT  
		Size: 4.5 MB (4500369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dfe8daa33cbed6554e84d6a2662a8df98119dcaeed489d33b91d7a442af3`  
		Last Modified: Tue, 04 Sep 2018 23:05:55 GMT  
		Size: 22.1 MB (22074550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a417fb67eb2716aac4f6312cb592a74eca83f9744529cbcfcf1d8f056d4a4c`  
		Last Modified: Tue, 04 Sep 2018 23:05:52 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240c172d43e60d845ff1978568e01f9214a3d598720c16b541f4d4637f6d0ff`  
		Last Modified: Tue, 04 Sep 2018 23:05:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe9a9d432d9503d39d1d401d264bec6854851f2f9a7ea32cb788328086cb8eb`  
		Last Modified: Tue, 04 Sep 2018 23:05:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:26ed6db13a6d88a9b0d2cf4d0c0fd76b00a58877936f5e59fa99c20c9a957059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43668757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7186413f11850e8357405438db73e24e141bb4f43b5115cb67fcad123531f04d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Aug 2018 11:58:53 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Sat, 04 Aug 2018 11:59:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 11:59:11 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Aug 2018 11:59:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Aug 2018 11:59:12 GMT
EXPOSE 8888/tcp
# Sat, 04 Aug 2018 11:59:13 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Aug 2018 11:59:13 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Aug 2018 11:59:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Aug 2018 11:59:14 GMT
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
	-	`sha256:7944d2ed4a49de8695e9983e194b1666b09653e9969a428f6a7849c8680657b9`  
		Last Modified: Sat, 04 Aug 2018 11:59:31 GMT  
		Size: 20.5 MB (20501002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f03f81904826117e3d1c2b954ba0028858ea3535846bb01cacabbc7bf7eedc`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b6a4ed9e83f1d632510de7e8f39aede27b9d69ec22fb657c5d93a985da12f7`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46af21b3018bb877193d98c967127d1c7ebf03dd19faecd4d74863cc92307372`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:99f145e0b6d4a5a88006d193752a051cbcc0c8ba43a8b2082dfa7c1d4da41007
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45131870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e99b2a57ab67858818e87e95d2a07918f57fb124991ca42dcddf12ae36521d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Aug 2018 08:40:14 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Sat, 04 Aug 2018 08:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 08:40:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Aug 2018 08:40:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Aug 2018 08:40:54 GMT
EXPOSE 8888/tcp
# Sat, 04 Aug 2018 08:40:55 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Aug 2018 08:40:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Aug 2018 08:40:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Aug 2018 08:40:57 GMT
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
	-	`sha256:94a06d938bb11e6d985f924ac10e0f08831fb64af8592268cff85d61ded4f4fa`  
		Last Modified: Sat, 04 Aug 2018 08:41:40 GMT  
		Size: 20.7 MB (20700686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6526643854819be4efca313ea7e3f61be74aabd79e8bc5b4e8b2ec823c7d85`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3c94694fd4fc6da3ed9c1a978e193b46e5f817bb381a88bb6db6ec1df82805`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce56f36828f6ccaa8c0fb4259558c1a2eb5bc79a5f669a90d49c884b17ff58`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.1-alpine`

```console
$ docker pull chronograf@sha256:d3cf6decdde0f4dd856ab9a5a41515a42d7fbff59887477e17efafe8601f3622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:df76dec8e07d4b0e8d829f8b783e6e9b46fc4c979f335267bf117e857aa031e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14124456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f9942e0f7a0742592b7e2993a6cc89057d66789a8af881f62ad082eeb10754`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:02:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 04 Sep 2018 23:04:40 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 04 Sep 2018 23:05:10 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Tue, 04 Sep 2018 23:05:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 04 Sep 2018 23:05:17 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:05:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:05:18 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:05:18 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:05:18 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 04 Sep 2018 23:05:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:05:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72645f13036d032a355da86f6dbd210460b976b408bd03617c93bf67107a4b0`  
		Last Modified: Thu, 30 Aug 2018 22:05:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a734d2446babb42d332054eac162e2a058a89bdbf614687248798711d7eb66e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:40 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5521b43865f5d3262b045d5454659f7f8a97bdc95aa74ae771cf052f8f7d8909`  
		Last Modified: Tue, 04 Sep 2018 23:06:06 GMT  
		Size: 11.7 MB (11733985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca5336a51c150857709b0b1a427e957670fe5f2a7a8991eea5a710749c911bf`  
		Last Modified: Tue, 04 Sep 2018 23:06:04 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c175c84244916d4e3dc50e289289a129c229cd71c5e39046978e63e831289b20`  
		Last Modified: Tue, 04 Sep 2018 23:06:05 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709eadada6d35850057ab002520e23be07ab077f6d354b2bb695ec25cf20eb83`  
		Last Modified: Tue, 04 Sep 2018 23:06:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:d3cf6decdde0f4dd856ab9a5a41515a42d7fbff59887477e17efafe8601f3622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:df76dec8e07d4b0e8d829f8b783e6e9b46fc4c979f335267bf117e857aa031e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14124456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f9942e0f7a0742592b7e2993a6cc89057d66789a8af881f62ad082eeb10754`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:02:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 04 Sep 2018 23:04:40 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 04 Sep 2018 23:05:10 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Tue, 04 Sep 2018 23:05:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 04 Sep 2018 23:05:17 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:05:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:05:18 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:05:18 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:05:18 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 04 Sep 2018 23:05:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:05:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72645f13036d032a355da86f6dbd210460b976b408bd03617c93bf67107a4b0`  
		Last Modified: Thu, 30 Aug 2018 22:05:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a734d2446babb42d332054eac162e2a058a89bdbf614687248798711d7eb66e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:40 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5521b43865f5d3262b045d5454659f7f8a97bdc95aa74ae771cf052f8f7d8909`  
		Last Modified: Tue, 04 Sep 2018 23:06:06 GMT  
		Size: 11.7 MB (11733985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca5336a51c150857709b0b1a427e957670fe5f2a7a8991eea5a710749c911bf`  
		Last Modified: Tue, 04 Sep 2018 23:06:04 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c175c84244916d4e3dc50e289289a129c229cd71c5e39046978e63e831289b20`  
		Last Modified: Tue, 04 Sep 2018 23:06:05 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709eadada6d35850057ab002520e23be07ab077f6d354b2bb695ec25cf20eb83`  
		Last Modified: Tue, 04 Sep 2018 23:06:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:d3cf6decdde0f4dd856ab9a5a41515a42d7fbff59887477e17efafe8601f3622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:df76dec8e07d4b0e8d829f8b783e6e9b46fc4c979f335267bf117e857aa031e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14124456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f9942e0f7a0742592b7e2993a6cc89057d66789a8af881f62ad082eeb10754`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:02:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 04 Sep 2018 23:04:40 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 04 Sep 2018 23:05:10 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Tue, 04 Sep 2018 23:05:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 04 Sep 2018 23:05:17 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:05:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:05:18 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:05:18 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:05:18 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 04 Sep 2018 23:05:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:05:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72645f13036d032a355da86f6dbd210460b976b408bd03617c93bf67107a4b0`  
		Last Modified: Thu, 30 Aug 2018 22:05:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a734d2446babb42d332054eac162e2a058a89bdbf614687248798711d7eb66e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:40 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5521b43865f5d3262b045d5454659f7f8a97bdc95aa74ae771cf052f8f7d8909`  
		Last Modified: Tue, 04 Sep 2018 23:06:06 GMT  
		Size: 11.7 MB (11733985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca5336a51c150857709b0b1a427e957670fe5f2a7a8991eea5a710749c911bf`  
		Last Modified: Tue, 04 Sep 2018 23:06:04 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c175c84244916d4e3dc50e289289a129c229cd71c5e39046978e63e831289b20`  
		Last Modified: Tue, 04 Sep 2018 23:06:05 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709eadada6d35850057ab002520e23be07ab077f6d354b2bb695ec25cf20eb83`  
		Last Modified: Tue, 04 Sep 2018 23:06:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:950da567720115b6b965f1d309f220e4b98b25856fec29c5d75956f6f7d030e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:813834f1b424d33a91d209269014d03c0575c50cef7f03eee42c4d68ddb452c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cd3bfd857b4d3dbd860764ffc58e42a9c444f7af2c661983ab868256e13070`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 04 Sep 2018 23:04:52 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Tue, 04 Sep 2018 23:05:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 04 Sep 2018 23:05:04 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:05:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:05:05 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:05:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:05:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 04 Sep 2018 23:05:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:05:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ded6d78d8b9128ef2922f65a07020a45fcce2e51f020676fb77f45f5f6894dc`  
		Last Modified: Tue, 04 Sep 2018 23:05:28 GMT  
		Size: 4.5 MB (4500369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dfe8daa33cbed6554e84d6a2662a8df98119dcaeed489d33b91d7a442af3`  
		Last Modified: Tue, 04 Sep 2018 23:05:55 GMT  
		Size: 22.1 MB (22074550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a417fb67eb2716aac4f6312cb592a74eca83f9744529cbcfcf1d8f056d4a4c`  
		Last Modified: Tue, 04 Sep 2018 23:05:52 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240c172d43e60d845ff1978568e01f9214a3d598720c16b541f4d4637f6d0ff`  
		Last Modified: Tue, 04 Sep 2018 23:05:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe9a9d432d9503d39d1d401d264bec6854851f2f9a7ea32cb788328086cb8eb`  
		Last Modified: Tue, 04 Sep 2018 23:05:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:26ed6db13a6d88a9b0d2cf4d0c0fd76b00a58877936f5e59fa99c20c9a957059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43668757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7186413f11850e8357405438db73e24e141bb4f43b5115cb67fcad123531f04d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Aug 2018 11:58:53 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Sat, 04 Aug 2018 11:59:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 11:59:11 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Aug 2018 11:59:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Aug 2018 11:59:12 GMT
EXPOSE 8888/tcp
# Sat, 04 Aug 2018 11:59:13 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Aug 2018 11:59:13 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Aug 2018 11:59:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Aug 2018 11:59:14 GMT
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
	-	`sha256:7944d2ed4a49de8695e9983e194b1666b09653e9969a428f6a7849c8680657b9`  
		Last Modified: Sat, 04 Aug 2018 11:59:31 GMT  
		Size: 20.5 MB (20501002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f03f81904826117e3d1c2b954ba0028858ea3535846bb01cacabbc7bf7eedc`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b6a4ed9e83f1d632510de7e8f39aede27b9d69ec22fb657c5d93a985da12f7`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46af21b3018bb877193d98c967127d1c7ebf03dd19faecd4d74863cc92307372`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:99f145e0b6d4a5a88006d193752a051cbcc0c8ba43a8b2082dfa7c1d4da41007
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45131870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e99b2a57ab67858818e87e95d2a07918f57fb124991ca42dcddf12ae36521d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:27:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Aug 2018 08:40:14 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Sat, 04 Aug 2018 08:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 08:40:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Aug 2018 08:40:53 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Aug 2018 08:40:54 GMT
EXPOSE 8888/tcp
# Sat, 04 Aug 2018 08:40:55 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Aug 2018 08:40:55 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Aug 2018 08:40:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Aug 2018 08:40:57 GMT
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
	-	`sha256:94a06d938bb11e6d985f924ac10e0f08831fb64af8592268cff85d61ded4f4fa`  
		Last Modified: Sat, 04 Aug 2018 08:41:40 GMT  
		Size: 20.7 MB (20700686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6526643854819be4efca313ea7e3f61be74aabd79e8bc5b4e8b2ec823c7d85`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3c94694fd4fc6da3ed9c1a978e193b46e5f817bb381a88bb6db6ec1df82805`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce56f36828f6ccaa8c0fb4259558c1a2eb5bc79a5f669a90d49c884b17ff58`  
		Last Modified: Sat, 04 Aug 2018 08:41:32 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
