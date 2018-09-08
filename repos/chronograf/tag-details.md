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
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:1d8488861e064b197b17d7ea3df6ac671090d45388d031f1a6dfc3ae13df5ea2
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
$ docker pull chronograf@sha256:a860c310ad2e7ca1d2e2be23a4f84c1cdfe6d2dc8f4d36f1e5f8a28c5baf8dd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43612254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d384174f2301170885d037f931abc89b144ee1b4c3add89133144e3bb250cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:32:39 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 12:32:40 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 05 Sep 2018 12:32:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 12:33:00 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 12:33:00 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 12:33:01 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 12:33:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 12:33:02 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 12:33:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 12:33:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83495d4601b2e67bb7dac70ca9e7b3b854c45aea2a30d4332d7caaf662cdc14e`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 3.9 MB (3873190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d588c9651d71d88ad863758fcef385a21b3e0450d668b3d037e97e25028ca319`  
		Last Modified: Wed, 05 Sep 2018 12:34:05 GMT  
		Size: 20.4 MB (20444508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a89cb3a6be5bdd1d2d1e2ce44d3e12b43237647466d93cd70c4754f78e99fc`  
		Last Modified: Wed, 05 Sep 2018 12:33:57 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6878021bd36d6961d0d2463dcc7b308e84a7508eb2ccdf77335acc4bdfc6adb`  
		Last Modified: Wed, 05 Sep 2018 12:33:57 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbbd95210f897a10e35e22dbac5ce700a4cfb2d5f96afbaf7a9940008fc0b72`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:770b8bf094b0349847b5e84987689bf869a522d154ef3a11ef67ec97570ce2e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45079139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c8ab82719cc67e09ecbb603c95e09ecbbca69b63a93a222d67e718256f5a1e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:12:15 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 05 Sep 2018 10:14:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 10:14:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 10:14:20 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 10:14:21 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 10:14:23 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 10:14:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 10:14:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:14:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd177d11ba28398cb8381eddb735605132189a44cf727b33713a8e4d1c7fb031`  
		Last Modified: Wed, 05 Sep 2018 10:16:41 GMT  
		Size: 4.1 MB (4075471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0482e439d65c324d60a197082ecfd624bb71750fdfd49bca6980a35c2a5330`  
		Last Modified: Wed, 05 Sep 2018 10:16:49 GMT  
		Size: 20.6 MB (20647625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86e4187e1216f4b1b998c4721ade4ba700640d389abaa6113cd44cdb120a6b9`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f4c29902152d87f8b5929ee1390c23fd51fce7660510c56ae2c3449751fa43`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7ae8d508a1ff528dc25b34a3a2dbb4f2b751676b4cb8f52bbe705253767b2b`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:1d8488861e064b197b17d7ea3df6ac671090d45388d031f1a6dfc3ae13df5ea2
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
$ docker pull chronograf@sha256:a860c310ad2e7ca1d2e2be23a4f84c1cdfe6d2dc8f4d36f1e5f8a28c5baf8dd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43612254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d384174f2301170885d037f931abc89b144ee1b4c3add89133144e3bb250cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:32:39 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 12:32:40 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 05 Sep 2018 12:32:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 12:33:00 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 12:33:00 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 12:33:01 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 12:33:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 12:33:02 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 12:33:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 12:33:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83495d4601b2e67bb7dac70ca9e7b3b854c45aea2a30d4332d7caaf662cdc14e`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 3.9 MB (3873190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d588c9651d71d88ad863758fcef385a21b3e0450d668b3d037e97e25028ca319`  
		Last Modified: Wed, 05 Sep 2018 12:34:05 GMT  
		Size: 20.4 MB (20444508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a89cb3a6be5bdd1d2d1e2ce44d3e12b43237647466d93cd70c4754f78e99fc`  
		Last Modified: Wed, 05 Sep 2018 12:33:57 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6878021bd36d6961d0d2463dcc7b308e84a7508eb2ccdf77335acc4bdfc6adb`  
		Last Modified: Wed, 05 Sep 2018 12:33:57 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbbd95210f897a10e35e22dbac5ce700a4cfb2d5f96afbaf7a9940008fc0b72`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:770b8bf094b0349847b5e84987689bf869a522d154ef3a11ef67ec97570ce2e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45079139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c8ab82719cc67e09ecbb603c95e09ecbbca69b63a93a222d67e718256f5a1e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:12:15 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 05 Sep 2018 10:14:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 10:14:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 10:14:20 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 10:14:21 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 10:14:23 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 10:14:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 10:14:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:14:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd177d11ba28398cb8381eddb735605132189a44cf727b33713a8e4d1c7fb031`  
		Last Modified: Wed, 05 Sep 2018 10:16:41 GMT  
		Size: 4.1 MB (4075471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0482e439d65c324d60a197082ecfd624bb71750fdfd49bca6980a35c2a5330`  
		Last Modified: Wed, 05 Sep 2018 10:16:49 GMT  
		Size: 20.6 MB (20647625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86e4187e1216f4b1b998c4721ade4ba700640d389abaa6113cd44cdb120a6b9`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f4c29902152d87f8b5929ee1390c23fd51fce7660510c56ae2c3449751fa43`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7ae8d508a1ff528dc25b34a3a2dbb4f2b751676b4cb8f52bbe705253767b2b`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:1d8488861e064b197b17d7ea3df6ac671090d45388d031f1a6dfc3ae13df5ea2
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
$ docker pull chronograf@sha256:a860c310ad2e7ca1d2e2be23a4f84c1cdfe6d2dc8f4d36f1e5f8a28c5baf8dd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43612254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d384174f2301170885d037f931abc89b144ee1b4c3add89133144e3bb250cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:32:39 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 12:32:40 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 05 Sep 2018 12:32:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 12:33:00 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 12:33:00 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 12:33:01 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 12:33:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 12:33:02 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 12:33:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 12:33:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83495d4601b2e67bb7dac70ca9e7b3b854c45aea2a30d4332d7caaf662cdc14e`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 3.9 MB (3873190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d588c9651d71d88ad863758fcef385a21b3e0450d668b3d037e97e25028ca319`  
		Last Modified: Wed, 05 Sep 2018 12:34:05 GMT  
		Size: 20.4 MB (20444508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a89cb3a6be5bdd1d2d1e2ce44d3e12b43237647466d93cd70c4754f78e99fc`  
		Last Modified: Wed, 05 Sep 2018 12:33:57 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6878021bd36d6961d0d2463dcc7b308e84a7508eb2ccdf77335acc4bdfc6adb`  
		Last Modified: Wed, 05 Sep 2018 12:33:57 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbbd95210f897a10e35e22dbac5ce700a4cfb2d5f96afbaf7a9940008fc0b72`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:770b8bf094b0349847b5e84987689bf869a522d154ef3a11ef67ec97570ce2e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45079139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c8ab82719cc67e09ecbb603c95e09ecbbca69b63a93a222d67e718256f5a1e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:12:15 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 05 Sep 2018 10:14:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 10:14:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 10:14:20 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 10:14:21 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 10:14:23 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 10:14:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 10:14:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:14:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd177d11ba28398cb8381eddb735605132189a44cf727b33713a8e4d1c7fb031`  
		Last Modified: Wed, 05 Sep 2018 10:16:41 GMT  
		Size: 4.1 MB (4075471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0482e439d65c324d60a197082ecfd624bb71750fdfd49bca6980a35c2a5330`  
		Last Modified: Wed, 05 Sep 2018 10:16:49 GMT  
		Size: 20.6 MB (20647625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86e4187e1216f4b1b998c4721ade4ba700640d389abaa6113cd44cdb120a6b9`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f4c29902152d87f8b5929ee1390c23fd51fce7660510c56ae2c3449751fa43`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7ae8d508a1ff528dc25b34a3a2dbb4f2b751676b4cb8f52bbe705253767b2b`  
		Last Modified: Wed, 05 Sep 2018 10:16:39 GMT  
		Size: 240.0 B  
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
$ docker pull chronograf@sha256:e3549df85bb0914981ee77a6ec1c1dd9e085f796f671330fa9319ac4945cbf9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:30c7a3a1fae5e45aa28ff5d5f326eca11aa81d39c5c17ffbd309bc7a307785d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49088755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fd0a33f7bf2537a5c01e9adde19f707d0b474301e8c6eea4dcc621300b1646`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 07 Sep 2018 18:19:37 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 07 Sep 2018 18:20:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 07 Sep 2018 18:20:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 07 Sep 2018 18:20:58 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 07 Sep 2018 18:20:58 GMT
EXPOSE 8888/tcp
# Fri, 07 Sep 2018 18:20:58 GMT
VOLUME [/var/lib/chronograf]
# Fri, 07 Sep 2018 18:20:59 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 07 Sep 2018 18:20:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 18:20:59 GMT
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
	-	`sha256:5ef6986b56db9c58b16200e766e424d07314e0bdafc3bb89048c8308587a506c`  
		Last Modified: Fri, 07 Sep 2018 18:21:33 GMT  
		Size: 22.1 MB (22078024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a8daa839b494a8263bb0c2ae05c814d9a8bab4bb7751fe2c3cdffac61fa491`  
		Last Modified: Fri, 07 Sep 2018 18:21:29 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be6a7978d949b0fbba691c4cba8dc4c51426939a317799b3d6ba422b7a8526f`  
		Last Modified: Fri, 07 Sep 2018 18:21:28 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed12a14c4ba522152ae52b7c52f9ac1f1db5da2d918484776beae38ff2423185`  
		Last Modified: Fri, 07 Sep 2018 18:21:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:91da97c34bf6acf0cc8c92ad6fd155ec060980b5dd9a4c05707772c7f5addaa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43672306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae26070333dfa6f31af5d45f882bbd93a96d183d86924252dddc1bd5009398f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:32:39 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 08 Sep 2018 11:58:26 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 08 Sep 2018 11:58:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 08 Sep 2018 11:58:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 08 Sep 2018 11:58:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 08 Sep 2018 11:58:48 GMT
EXPOSE 8888/tcp
# Sat, 08 Sep 2018 11:58:49 GMT
VOLUME [/var/lib/chronograf]
# Sat, 08 Sep 2018 11:58:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 08 Sep 2018 11:58:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 08 Sep 2018 11:58:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83495d4601b2e67bb7dac70ca9e7b3b854c45aea2a30d4332d7caaf662cdc14e`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 3.9 MB (3873190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6824db1649b9c884e93ac65b076ce58e3ef6824bdc6d157d5a5f3dad16d72b4`  
		Last Modified: Sat, 08 Sep 2018 11:59:20 GMT  
		Size: 20.5 MB (20504558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9390ab66bc0bc364e32ea2e4df5815d8c10e9981d2341014edec592e307c9b05`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8d3c3169c003435aae64027e00117bd831acee3797052d9037272aa09fce98`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e37e206ed4fd972aaef472cadc1296c8a12aa0b4b2c45118003ae590f1663a`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6ed338d7fb62aaacd9f727bdb96145fe49aaae5322b3b3fec50a9374e98c9944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45132406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad7ee32b24ac7d4d53e7ee3c7a661545efba34bccfce88ffa1b30eb0a30d6f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:14:53 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Wed, 05 Sep 2018 10:15:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 10:15:53 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 10:15:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 10:15:55 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 10:15:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 10:15:57 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 10:15:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:15:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd177d11ba28398cb8381eddb735605132189a44cf727b33713a8e4d1c7fb031`  
		Last Modified: Wed, 05 Sep 2018 10:16:41 GMT  
		Size: 4.1 MB (4075471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec03035dc1c7a0ba08d0749e9b6713716dfe865fc1d3a8acd05bd171399632c5`  
		Last Modified: Wed, 05 Sep 2018 10:18:49 GMT  
		Size: 20.7 MB (20700892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841b88bb501a1c1fc523af1bce239102991bc6a7c039cd65b09a81f2dd7d6aa2`  
		Last Modified: Wed, 05 Sep 2018 10:18:41 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eea29db3d859690839242a306a37a5e71a19e1472e59da1946a135afc6d8e2c`  
		Last Modified: Wed, 05 Sep 2018 10:18:43 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3692b167d819e24b52b42f3f8fd3ff542ed4ff514325ac6fafb06b686c521`  
		Last Modified: Wed, 05 Sep 2018 10:18:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2`

```console
$ docker pull chronograf@sha256:e3549df85bb0914981ee77a6ec1c1dd9e085f796f671330fa9319ac4945cbf9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.2` - linux; amd64

```console
$ docker pull chronograf@sha256:30c7a3a1fae5e45aa28ff5d5f326eca11aa81d39c5c17ffbd309bc7a307785d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49088755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fd0a33f7bf2537a5c01e9adde19f707d0b474301e8c6eea4dcc621300b1646`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 07 Sep 2018 18:19:37 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 07 Sep 2018 18:20:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 07 Sep 2018 18:20:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 07 Sep 2018 18:20:58 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 07 Sep 2018 18:20:58 GMT
EXPOSE 8888/tcp
# Fri, 07 Sep 2018 18:20:58 GMT
VOLUME [/var/lib/chronograf]
# Fri, 07 Sep 2018 18:20:59 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 07 Sep 2018 18:20:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 18:20:59 GMT
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
	-	`sha256:5ef6986b56db9c58b16200e766e424d07314e0bdafc3bb89048c8308587a506c`  
		Last Modified: Fri, 07 Sep 2018 18:21:33 GMT  
		Size: 22.1 MB (22078024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a8daa839b494a8263bb0c2ae05c814d9a8bab4bb7751fe2c3cdffac61fa491`  
		Last Modified: Fri, 07 Sep 2018 18:21:29 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be6a7978d949b0fbba691c4cba8dc4c51426939a317799b3d6ba422b7a8526f`  
		Last Modified: Fri, 07 Sep 2018 18:21:28 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed12a14c4ba522152ae52b7c52f9ac1f1db5da2d918484776beae38ff2423185`  
		Last Modified: Fri, 07 Sep 2018 18:21:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:91da97c34bf6acf0cc8c92ad6fd155ec060980b5dd9a4c05707772c7f5addaa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43672306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae26070333dfa6f31af5d45f882bbd93a96d183d86924252dddc1bd5009398f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:32:39 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 08 Sep 2018 11:58:26 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 08 Sep 2018 11:58:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 08 Sep 2018 11:58:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 08 Sep 2018 11:58:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 08 Sep 2018 11:58:48 GMT
EXPOSE 8888/tcp
# Sat, 08 Sep 2018 11:58:49 GMT
VOLUME [/var/lib/chronograf]
# Sat, 08 Sep 2018 11:58:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 08 Sep 2018 11:58:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 08 Sep 2018 11:58:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83495d4601b2e67bb7dac70ca9e7b3b854c45aea2a30d4332d7caaf662cdc14e`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 3.9 MB (3873190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6824db1649b9c884e93ac65b076ce58e3ef6824bdc6d157d5a5f3dad16d72b4`  
		Last Modified: Sat, 08 Sep 2018 11:59:20 GMT  
		Size: 20.5 MB (20504558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9390ab66bc0bc364e32ea2e4df5815d8c10e9981d2341014edec592e307c9b05`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8d3c3169c003435aae64027e00117bd831acee3797052d9037272aa09fce98`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e37e206ed4fd972aaef472cadc1296c8a12aa0b4b2c45118003ae590f1663a`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6ed338d7fb62aaacd9f727bdb96145fe49aaae5322b3b3fec50a9374e98c9944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45132406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad7ee32b24ac7d4d53e7ee3c7a661545efba34bccfce88ffa1b30eb0a30d6f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:14:53 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Wed, 05 Sep 2018 10:15:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 10:15:53 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 10:15:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 10:15:55 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 10:15:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 10:15:57 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 10:15:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:15:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd177d11ba28398cb8381eddb735605132189a44cf727b33713a8e4d1c7fb031`  
		Last Modified: Wed, 05 Sep 2018 10:16:41 GMT  
		Size: 4.1 MB (4075471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec03035dc1c7a0ba08d0749e9b6713716dfe865fc1d3a8acd05bd171399632c5`  
		Last Modified: Wed, 05 Sep 2018 10:18:49 GMT  
		Size: 20.7 MB (20700892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841b88bb501a1c1fc523af1bce239102991bc6a7c039cd65b09a81f2dd7d6aa2`  
		Last Modified: Wed, 05 Sep 2018 10:18:41 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eea29db3d859690839242a306a37a5e71a19e1472e59da1946a135afc6d8e2c`  
		Last Modified: Wed, 05 Sep 2018 10:18:43 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3692b167d819e24b52b42f3f8fd3ff542ed4ff514325ac6fafb06b686c521`  
		Last Modified: Wed, 05 Sep 2018 10:18:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2-alpine`

```console
$ docker pull chronograf@sha256:f53c08442aded78d56e3b820ea69e561e9db21b156c1f1386ac74ab20991ba5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:77ed3c5d9317de3a202dff9bc3e4c9dbd5e46363da5b8e43a2ccb4f3b22bff36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14127679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c30d1d6fb0b7795bcc09596c4ae5010ecd09791eb412e0aa0c02f2688dd87bd`
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
# Fri, 07 Sep 2018 18:21:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 07 Sep 2018 18:21:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 07 Sep 2018 18:21:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 07 Sep 2018 18:21:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 07 Sep 2018 18:21:16 GMT
EXPOSE 8888/tcp
# Fri, 07 Sep 2018 18:21:16 GMT
VOLUME [/var/lib/chronograf]
# Fri, 07 Sep 2018 18:21:16 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 07 Sep 2018 18:21:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 18:21:17 GMT
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
	-	`sha256:43d8275bbc691b548b6ab330b3189f2aa254e0b70b91ec211f403c06c0a76132`  
		Last Modified: Fri, 07 Sep 2018 18:21:59 GMT  
		Size: 11.7 MB (11737203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c89b2020aa412c74f2aaf45c57479da359989449f0f7b44f339d2ee86630f`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7df387a018acdc8013d03fbabf8ffcb1a92470b9782f89bb564ecf63588c4ef`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfc1e8ee6aacd0f088269496323274bb7c4c5b0bb3efd5498926fd912ddda32`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:f53c08442aded78d56e3b820ea69e561e9db21b156c1f1386ac74ab20991ba5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:77ed3c5d9317de3a202dff9bc3e4c9dbd5e46363da5b8e43a2ccb4f3b22bff36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14127679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c30d1d6fb0b7795bcc09596c4ae5010ecd09791eb412e0aa0c02f2688dd87bd`
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
# Fri, 07 Sep 2018 18:21:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 07 Sep 2018 18:21:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 07 Sep 2018 18:21:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 07 Sep 2018 18:21:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 07 Sep 2018 18:21:16 GMT
EXPOSE 8888/tcp
# Fri, 07 Sep 2018 18:21:16 GMT
VOLUME [/var/lib/chronograf]
# Fri, 07 Sep 2018 18:21:16 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 07 Sep 2018 18:21:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 18:21:17 GMT
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
	-	`sha256:43d8275bbc691b548b6ab330b3189f2aa254e0b70b91ec211f403c06c0a76132`  
		Last Modified: Fri, 07 Sep 2018 18:21:59 GMT  
		Size: 11.7 MB (11737203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c89b2020aa412c74f2aaf45c57479da359989449f0f7b44f339d2ee86630f`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7df387a018acdc8013d03fbabf8ffcb1a92470b9782f89bb564ecf63588c4ef`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfc1e8ee6aacd0f088269496323274bb7c4c5b0bb3efd5498926fd912ddda32`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:f53c08442aded78d56e3b820ea69e561e9db21b156c1f1386ac74ab20991ba5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:77ed3c5d9317de3a202dff9bc3e4c9dbd5e46363da5b8e43a2ccb4f3b22bff36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14127679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c30d1d6fb0b7795bcc09596c4ae5010ecd09791eb412e0aa0c02f2688dd87bd`
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
# Fri, 07 Sep 2018 18:21:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 07 Sep 2018 18:21:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 07 Sep 2018 18:21:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Fri, 07 Sep 2018 18:21:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 07 Sep 2018 18:21:16 GMT
EXPOSE 8888/tcp
# Fri, 07 Sep 2018 18:21:16 GMT
VOLUME [/var/lib/chronograf]
# Fri, 07 Sep 2018 18:21:16 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Fri, 07 Sep 2018 18:21:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 18:21:17 GMT
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
	-	`sha256:43d8275bbc691b548b6ab330b3189f2aa254e0b70b91ec211f403c06c0a76132`  
		Last Modified: Fri, 07 Sep 2018 18:21:59 GMT  
		Size: 11.7 MB (11737203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8c89b2020aa412c74f2aaf45c57479da359989449f0f7b44f339d2ee86630f`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7df387a018acdc8013d03fbabf8ffcb1a92470b9782f89bb564ecf63588c4ef`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfc1e8ee6aacd0f088269496323274bb7c4c5b0bb3efd5498926fd912ddda32`  
		Last Modified: Fri, 07 Sep 2018 18:21:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:e3549df85bb0914981ee77a6ec1c1dd9e085f796f671330fa9319ac4945cbf9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:30c7a3a1fae5e45aa28ff5d5f326eca11aa81d39c5c17ffbd309bc7a307785d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49088755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fd0a33f7bf2537a5c01e9adde19f707d0b474301e8c6eea4dcc621300b1646`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 07 Sep 2018 18:19:37 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 07 Sep 2018 18:20:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 07 Sep 2018 18:20:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 07 Sep 2018 18:20:58 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 07 Sep 2018 18:20:58 GMT
EXPOSE 8888/tcp
# Fri, 07 Sep 2018 18:20:58 GMT
VOLUME [/var/lib/chronograf]
# Fri, 07 Sep 2018 18:20:59 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 07 Sep 2018 18:20:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Sep 2018 18:20:59 GMT
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
	-	`sha256:5ef6986b56db9c58b16200e766e424d07314e0bdafc3bb89048c8308587a506c`  
		Last Modified: Fri, 07 Sep 2018 18:21:33 GMT  
		Size: 22.1 MB (22078024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a8daa839b494a8263bb0c2ae05c814d9a8bab4bb7751fe2c3cdffac61fa491`  
		Last Modified: Fri, 07 Sep 2018 18:21:29 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be6a7978d949b0fbba691c4cba8dc4c51426939a317799b3d6ba422b7a8526f`  
		Last Modified: Fri, 07 Sep 2018 18:21:28 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed12a14c4ba522152ae52b7c52f9ac1f1db5da2d918484776beae38ff2423185`  
		Last Modified: Fri, 07 Sep 2018 18:21:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:91da97c34bf6acf0cc8c92ad6fd155ec060980b5dd9a4c05707772c7f5addaa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43672306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae26070333dfa6f31af5d45f882bbd93a96d183d86924252dddc1bd5009398f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:32:39 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 08 Sep 2018 11:58:26 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 08 Sep 2018 11:58:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 08 Sep 2018 11:58:47 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 08 Sep 2018 11:58:48 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 08 Sep 2018 11:58:48 GMT
EXPOSE 8888/tcp
# Sat, 08 Sep 2018 11:58:49 GMT
VOLUME [/var/lib/chronograf]
# Sat, 08 Sep 2018 11:58:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 08 Sep 2018 11:58:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 08 Sep 2018 11:58:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83495d4601b2e67bb7dac70ca9e7b3b854c45aea2a30d4332d7caaf662cdc14e`  
		Last Modified: Wed, 05 Sep 2018 12:33:58 GMT  
		Size: 3.9 MB (3873190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6824db1649b9c884e93ac65b076ce58e3ef6824bdc6d157d5a5f3dad16d72b4`  
		Last Modified: Sat, 08 Sep 2018 11:59:20 GMT  
		Size: 20.5 MB (20504558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9390ab66bc0bc364e32ea2e4df5815d8c10e9981d2341014edec592e307c9b05`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8d3c3169c003435aae64027e00117bd831acee3797052d9037272aa09fce98`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e37e206ed4fd972aaef472cadc1296c8a12aa0b4b2c45118003ae590f1663a`  
		Last Modified: Sat, 08 Sep 2018 11:59:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6ed338d7fb62aaacd9f727bdb96145fe49aaae5322b3b3fec50a9374e98c9944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45132406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad7ee32b24ac7d4d53e7ee3c7a661545efba34bccfce88ffa1b30eb0a30d6f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:14:53 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Wed, 05 Sep 2018 10:15:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 10:15:53 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 10:15:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 10:15:55 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 10:15:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 10:15:57 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 10:15:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:15:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd177d11ba28398cb8381eddb735605132189a44cf727b33713a8e4d1c7fb031`  
		Last Modified: Wed, 05 Sep 2018 10:16:41 GMT  
		Size: 4.1 MB (4075471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec03035dc1c7a0ba08d0749e9b6713716dfe865fc1d3a8acd05bd171399632c5`  
		Last Modified: Wed, 05 Sep 2018 10:18:49 GMT  
		Size: 20.7 MB (20700892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841b88bb501a1c1fc523af1bce239102991bc6a7c039cd65b09a81f2dd7d6aa2`  
		Last Modified: Wed, 05 Sep 2018 10:18:41 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eea29db3d859690839242a306a37a5e71a19e1472e59da1946a135afc6d8e2c`  
		Last Modified: Wed, 05 Sep 2018 10:18:43 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3692b167d819e24b52b42f3f8fd3ff542ed4ff514325ac6fafb06b686c521`  
		Last Modified: Wed, 05 Sep 2018 10:18:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
