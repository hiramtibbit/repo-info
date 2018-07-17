<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.4`](#chronograf14)
-	[`chronograf:1.4.4`](#chronograf144)
-	[`chronograf:1.4.4.2`](#chronograf1442)
-	[`chronograf:1.4.4.2-alpine`](#chronograf1442-alpine)
-	[`chronograf:1.4.4-alpine`](#chronograf144-alpine)
-	[`chronograf:1.4-alpine`](#chronograf14-alpine)
-	[`chronograf:1.5`](#chronograf15)
-	[`chronograf:1.5.0`](#chronograf150)
-	[`chronograf:1.5.0.1`](#chronograf1501)
-	[`chronograf:1.5.0.1-alpine`](#chronograf1501-alpine)
-	[`chronograf:1.5.0-alpine`](#chronograf150-alpine)
-	[`chronograf:1.5-alpine`](#chronograf15-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.4`

```console
$ docker pull chronograf@sha256:ed9c0abb0098fa8d75529a8336cc31ea70b44e0efe71cd7729b706a95a2edd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4` - linux; amd64

```console
$ docker pull chronograf@sha256:bd4f8203db45f5ace68067f584888ac1d2b7f32ce183dc90f294fa85d3b833da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48504568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1df1583f0c04eeac81b3b0587019c9dd7a8f4e3c1a697f998f54e8b17e4ec0ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 01:20:23 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Tue, 17 Jul 2018 01:20:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 01:20:45 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:20:45 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:20:46 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:20:46 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:20:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 01:20:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:20:47 GMT
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
	-	`sha256:9cab767aa8fbc74355eeda24b655bb8c7662e3e28cf06f4a668c0441b416a7e6`  
		Last Modified: Tue, 17 Jul 2018 01:22:55 GMT  
		Size: 21.5 MB (21493898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7705303195469d6d0461c546c2bd61e64e6dcdd378df89b4b82f23948308a172`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa98e6809cbf87f525dd96bed8d233d1ae3bd550694237b1c34bfc8b1b548f9`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94e6de5c0d843d14820cc2b8da809794191f553ba4a14e2351853729f75311`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:4c8e5bc449a2d5ca85cb07e5f84e4eaf025fa75846618d5642f16e6314e9e0a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43104828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b796c25b31ed7af2e8ac47b6d79d375379a572d9ec2f6dceba832a0acbb479aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:32:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 12:32:22 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 27 Jun 2018 12:32:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:32:39 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 12:32:39 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 12:32:40 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 12:32:40 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 12:32:40 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 12:32:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 12:32:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eb997914bb9d8a6e114c125348ba71cb266c6c05fba612f55fe5e9f7f7f29a`  
		Last Modified: Wed, 27 Jun 2018 12:33:23 GMT  
		Size: 3.9 MB (3873161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c377fa5515014c3b25023e1e83b0067c63b650142db5e343351f25f15e5f4`  
		Last Modified: Wed, 27 Jun 2018 12:33:29 GMT  
		Size: 19.9 MB (19920999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ab1664d5b8d558ed791b441b2b35164a811c00b925c49692371b8c95a10e1d`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7a89bff23c0fbb30c6aeab0ff65705337b81df9d4a8cc619939f84682e7b21`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2b9642c167087dc29777d1d888c363862a02577611784fc4946662c759b34`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a87146b27231340078e4c126518f7cdd72e23725029d99b6db03af2bd7956af0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44570540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b533c6f467130d9a7dc11205099093045ddc34b54c81f8fb2516af3fa275cd09`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:26:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 11:26:32 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 27 Jun 2018 11:27:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:27:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 11:27:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 11:27:19 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 11:27:20 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 11:27:22 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 11:27:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 11:27:24 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624eee8d0596d4678feb2ed4ecef0248589f810c2ad2ee2ba68278c40abe755c`  
		Last Modified: Wed, 27 Jun 2018 11:29:10 GMT  
		Size: 4.1 MB (4075191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af00f902d20a024320868294bed9e77ef9bb36b8cca4578a777fbe27be5927df`  
		Last Modified: Wed, 27 Jun 2018 11:29:17 GMT  
		Size: 20.1 MB (20122879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91ab867255be6655041352e06b3c0399b82f79641adc72919b79b9a67bdcf7`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67be0e4f7622d77d0f93d0a8ea8396bb1ea21c27b075e1055c574557192ecc07`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4781141360de2c4f42247b3b3975a98cfb9e6a3dcdd039b1c98ff6c6f99bd3bd`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4`

```console
$ docker pull chronograf@sha256:ed9c0abb0098fa8d75529a8336cc31ea70b44e0efe71cd7729b706a95a2edd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.4` - linux; amd64

```console
$ docker pull chronograf@sha256:bd4f8203db45f5ace68067f584888ac1d2b7f32ce183dc90f294fa85d3b833da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48504568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1df1583f0c04eeac81b3b0587019c9dd7a8f4e3c1a697f998f54e8b17e4ec0ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 01:20:23 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Tue, 17 Jul 2018 01:20:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 01:20:45 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:20:45 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:20:46 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:20:46 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:20:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 01:20:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:20:47 GMT
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
	-	`sha256:9cab767aa8fbc74355eeda24b655bb8c7662e3e28cf06f4a668c0441b416a7e6`  
		Last Modified: Tue, 17 Jul 2018 01:22:55 GMT  
		Size: 21.5 MB (21493898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7705303195469d6d0461c546c2bd61e64e6dcdd378df89b4b82f23948308a172`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa98e6809cbf87f525dd96bed8d233d1ae3bd550694237b1c34bfc8b1b548f9`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94e6de5c0d843d14820cc2b8da809794191f553ba4a14e2351853729f75311`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:4c8e5bc449a2d5ca85cb07e5f84e4eaf025fa75846618d5642f16e6314e9e0a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43104828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b796c25b31ed7af2e8ac47b6d79d375379a572d9ec2f6dceba832a0acbb479aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:32:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 12:32:22 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 27 Jun 2018 12:32:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:32:39 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 12:32:39 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 12:32:40 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 12:32:40 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 12:32:40 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 12:32:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 12:32:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eb997914bb9d8a6e114c125348ba71cb266c6c05fba612f55fe5e9f7f7f29a`  
		Last Modified: Wed, 27 Jun 2018 12:33:23 GMT  
		Size: 3.9 MB (3873161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c377fa5515014c3b25023e1e83b0067c63b650142db5e343351f25f15e5f4`  
		Last Modified: Wed, 27 Jun 2018 12:33:29 GMT  
		Size: 19.9 MB (19920999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ab1664d5b8d558ed791b441b2b35164a811c00b925c49692371b8c95a10e1d`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7a89bff23c0fbb30c6aeab0ff65705337b81df9d4a8cc619939f84682e7b21`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2b9642c167087dc29777d1d888c363862a02577611784fc4946662c759b34`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a87146b27231340078e4c126518f7cdd72e23725029d99b6db03af2bd7956af0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44570540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b533c6f467130d9a7dc11205099093045ddc34b54c81f8fb2516af3fa275cd09`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:26:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 11:26:32 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 27 Jun 2018 11:27:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:27:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 11:27:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 11:27:19 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 11:27:20 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 11:27:22 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 11:27:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 11:27:24 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624eee8d0596d4678feb2ed4ecef0248589f810c2ad2ee2ba68278c40abe755c`  
		Last Modified: Wed, 27 Jun 2018 11:29:10 GMT  
		Size: 4.1 MB (4075191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af00f902d20a024320868294bed9e77ef9bb36b8cca4578a777fbe27be5927df`  
		Last Modified: Wed, 27 Jun 2018 11:29:17 GMT  
		Size: 20.1 MB (20122879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91ab867255be6655041352e06b3c0399b82f79641adc72919b79b9a67bdcf7`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67be0e4f7622d77d0f93d0a8ea8396bb1ea21c27b075e1055c574557192ecc07`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4781141360de2c4f42247b3b3975a98cfb9e6a3dcdd039b1c98ff6c6f99bd3bd`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4.2`

```console
$ docker pull chronograf@sha256:ed9c0abb0098fa8d75529a8336cc31ea70b44e0efe71cd7729b706a95a2edd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.4.2` - linux; amd64

```console
$ docker pull chronograf@sha256:bd4f8203db45f5ace68067f584888ac1d2b7f32ce183dc90f294fa85d3b833da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48504568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1df1583f0c04eeac81b3b0587019c9dd7a8f4e3c1a697f998f54e8b17e4ec0ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:20:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 01:20:23 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Tue, 17 Jul 2018 01:20:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 01:20:45 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:20:45 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:20:46 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:20:46 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:20:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 17 Jul 2018 01:20:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:20:47 GMT
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
	-	`sha256:9cab767aa8fbc74355eeda24b655bb8c7662e3e28cf06f4a668c0441b416a7e6`  
		Last Modified: Tue, 17 Jul 2018 01:22:55 GMT  
		Size: 21.5 MB (21493898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7705303195469d6d0461c546c2bd61e64e6dcdd378df89b4b82f23948308a172`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa98e6809cbf87f525dd96bed8d233d1ae3bd550694237b1c34bfc8b1b548f9`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94e6de5c0d843d14820cc2b8da809794191f553ba4a14e2351853729f75311`  
		Last Modified: Tue, 17 Jul 2018 01:22:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:4c8e5bc449a2d5ca85cb07e5f84e4eaf025fa75846618d5642f16e6314e9e0a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43104828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b796c25b31ed7af2e8ac47b6d79d375379a572d9ec2f6dceba832a0acbb479aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:32:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 12:32:22 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 27 Jun 2018 12:32:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:32:39 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 12:32:39 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 12:32:40 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 12:32:40 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 12:32:40 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 12:32:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 12:32:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eb997914bb9d8a6e114c125348ba71cb266c6c05fba612f55fe5e9f7f7f29a`  
		Last Modified: Wed, 27 Jun 2018 12:33:23 GMT  
		Size: 3.9 MB (3873161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c377fa5515014c3b25023e1e83b0067c63b650142db5e343351f25f15e5f4`  
		Last Modified: Wed, 27 Jun 2018 12:33:29 GMT  
		Size: 19.9 MB (19920999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ab1664d5b8d558ed791b441b2b35164a811c00b925c49692371b8c95a10e1d`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7a89bff23c0fbb30c6aeab0ff65705337b81df9d4a8cc619939f84682e7b21`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2b9642c167087dc29777d1d888c363862a02577611784fc4946662c759b34`  
		Last Modified: Wed, 27 Jun 2018 12:33:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a87146b27231340078e4c126518f7cdd72e23725029d99b6db03af2bd7956af0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44570540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b533c6f467130d9a7dc11205099093045ddc34b54c81f8fb2516af3fa275cd09`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:26:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 11:26:32 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 27 Jun 2018 11:27:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:27:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 11:27:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 11:27:19 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 11:27:20 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 11:27:22 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 11:27:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 11:27:24 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624eee8d0596d4678feb2ed4ecef0248589f810c2ad2ee2ba68278c40abe755c`  
		Last Modified: Wed, 27 Jun 2018 11:29:10 GMT  
		Size: 4.1 MB (4075191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af00f902d20a024320868294bed9e77ef9bb36b8cca4578a777fbe27be5927df`  
		Last Modified: Wed, 27 Jun 2018 11:29:17 GMT  
		Size: 20.1 MB (20122879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91ab867255be6655041352e06b3c0399b82f79641adc72919b79b9a67bdcf7`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67be0e4f7622d77d0f93d0a8ea8396bb1ea21c27b075e1055c574557192ecc07`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4781141360de2c4f42247b3b3975a98cfb9e6a3dcdd039b1c98ff6c6f99bd3bd`  
		Last Modified: Wed, 27 Jun 2018 11:29:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4.2-alpine`

```console
$ docker pull chronograf@sha256:443737364c3457f2c4a4a220c027517708cff64f4d91927c9d28f623f005ed4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.4.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e8bbbf191f8a116d606858955c5d89a3da919acb4ba83d9238cf8fc3e90da854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13595507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4067644b796e2e2ac3088dc10017ee94f0ee39a60f79f2bead03703feb987ab2`
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
# Tue, 17 Jul 2018 01:21:07 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Tue, 17 Jul 2018 01:21:16 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 01:21:17 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:21:17 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:21:17 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:21:17 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:21:18 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 17 Jul 2018 01:21:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:21:18 GMT
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
	-	`sha256:ce8d925a9fa9cd033fe977ea4c175151f09453139e6064b0bccfe2eb909e6950`  
		Last Modified: Tue, 17 Jul 2018 01:23:43 GMT  
		Size: 11.2 MB (11205033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1725ca34640e978f377bd6d2416def1e83f85f1d2c1cb883fefec98810d18fac`  
		Last Modified: Tue, 17 Jul 2018 01:23:40 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcb3b37b660b5fa936ed36097c67b8bec2dd62b7f913369f9186e222e4745b6`  
		Last Modified: Tue, 17 Jul 2018 01:23:39 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06bfa326da5318f4a8b3d03f573f3c992e58778e6435d003d43fe9628ea117`  
		Last Modified: Tue, 17 Jul 2018 01:23:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4-alpine`

```console
$ docker pull chronograf@sha256:443737364c3457f2c4a4a220c027517708cff64f4d91927c9d28f623f005ed4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e8bbbf191f8a116d606858955c5d89a3da919acb4ba83d9238cf8fc3e90da854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13595507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4067644b796e2e2ac3088dc10017ee94f0ee39a60f79f2bead03703feb987ab2`
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
# Tue, 17 Jul 2018 01:21:07 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Tue, 17 Jul 2018 01:21:16 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 01:21:17 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:21:17 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:21:17 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:21:17 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:21:18 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 17 Jul 2018 01:21:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:21:18 GMT
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
	-	`sha256:ce8d925a9fa9cd033fe977ea4c175151f09453139e6064b0bccfe2eb909e6950`  
		Last Modified: Tue, 17 Jul 2018 01:23:43 GMT  
		Size: 11.2 MB (11205033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1725ca34640e978f377bd6d2416def1e83f85f1d2c1cb883fefec98810d18fac`  
		Last Modified: Tue, 17 Jul 2018 01:23:40 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcb3b37b660b5fa936ed36097c67b8bec2dd62b7f913369f9186e222e4745b6`  
		Last Modified: Tue, 17 Jul 2018 01:23:39 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06bfa326da5318f4a8b3d03f573f3c992e58778e6435d003d43fe9628ea117`  
		Last Modified: Tue, 17 Jul 2018 01:23:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4-alpine`

```console
$ docker pull chronograf@sha256:443737364c3457f2c4a4a220c027517708cff64f4d91927c9d28f623f005ed4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e8bbbf191f8a116d606858955c5d89a3da919acb4ba83d9238cf8fc3e90da854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13595507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4067644b796e2e2ac3088dc10017ee94f0ee39a60f79f2bead03703feb987ab2`
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
# Tue, 17 Jul 2018 01:21:07 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Tue, 17 Jul 2018 01:21:16 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 01:21:17 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 17 Jul 2018 01:21:17 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 17 Jul 2018 01:21:17 GMT
EXPOSE 8888/tcp
# Tue, 17 Jul 2018 01:21:17 GMT
VOLUME [/var/lib/chronograf]
# Tue, 17 Jul 2018 01:21:18 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 17 Jul 2018 01:21:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:21:18 GMT
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
	-	`sha256:ce8d925a9fa9cd033fe977ea4c175151f09453139e6064b0bccfe2eb909e6950`  
		Last Modified: Tue, 17 Jul 2018 01:23:43 GMT  
		Size: 11.2 MB (11205033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1725ca34640e978f377bd6d2416def1e83f85f1d2c1cb883fefec98810d18fac`  
		Last Modified: Tue, 17 Jul 2018 01:23:40 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcb3b37b660b5fa936ed36097c67b8bec2dd62b7f913369f9186e222e4745b6`  
		Last Modified: Tue, 17 Jul 2018 01:23:39 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06bfa326da5318f4a8b3d03f573f3c992e58778e6435d003d43fe9628ea117`  
		Last Modified: Tue, 17 Jul 2018 01:23:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:ac52c31c8313139bb99f5ec97dee475db8b2bf243ea1b55c53b944c8b564dfee
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
$ docker pull chronograf@sha256:ff2d5fd9ebabda71cfca93c965b3aacccf12f8030774f3c44888652914841407
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43662969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fefdce8b5239f2c228dc59f53cb5cb948d9de32bb61c1cca8f52c0cb96aadab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:32:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 12:32:49 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 12:33:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:33:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 12:33:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 12:33:06 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 12:33:07 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 12:33:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 12:33:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 12:33:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eb997914bb9d8a6e114c125348ba71cb266c6c05fba612f55fe5e9f7f7f29a`  
		Last Modified: Wed, 27 Jun 2018 12:33:23 GMT  
		Size: 3.9 MB (3873161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7117ec5b954fcfd2cf45dd6d47924e05e15cab9b6fe56f84fdb67acbe84c24`  
		Last Modified: Wed, 27 Jun 2018 12:33:54 GMT  
		Size: 20.5 MB (20479136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da7729c4e5eb711f29fc1c9f95dc8c20ca6aeaa2b7be1603b963d30dd03ef82`  
		Last Modified: Wed, 27 Jun 2018 12:33:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b764bceebc322447446bf16702f0935b88174142d0e8694ddffc75dc6d0e4`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2785b535f25c2d7970fd823bcddc26057662e72befa20f083739ce87cbf04`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a8e656bc244cd8c667eaaed42373c7b96c0c2a54d8138f6df04ecb3a23f83602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee31d6f46a30b1987458b2019d903eb9df560c4909bed645ae9cb9d17b39f62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:26:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 11:27:45 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 11:28:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:28:22 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 11:28:23 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 11:28:31 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 11:28:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 11:28:33 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 11:28:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 11:28:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624eee8d0596d4678feb2ed4ecef0248589f810c2ad2ee2ba68278c40abe755c`  
		Last Modified: Wed, 27 Jun 2018 11:29:10 GMT  
		Size: 4.1 MB (4075191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dbe495673fb1e047d30d5e212001703dd3b6036ff2b8e0d08ad2d2056360e5`  
		Last Modified: Wed, 27 Jun 2018 11:30:07 GMT  
		Size: 20.7 MB (20680694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b16db27dc7394121ea2ae6a384953f340d70172a37ef4050a987bcfedfb25f`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851949009872ee100e7783fe3f599babc41e67d3e7aa7a8bd4ef21c020972678`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823750097fed4657d2d05cc1bfb68ae1d5197f48dc8e6028d04196ffc60d3004`  
		Last Modified: Wed, 27 Jun 2018 11:30:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:ac52c31c8313139bb99f5ec97dee475db8b2bf243ea1b55c53b944c8b564dfee
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
$ docker pull chronograf@sha256:ff2d5fd9ebabda71cfca93c965b3aacccf12f8030774f3c44888652914841407
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43662969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fefdce8b5239f2c228dc59f53cb5cb948d9de32bb61c1cca8f52c0cb96aadab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:32:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 12:32:49 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 12:33:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:33:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 12:33:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 12:33:06 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 12:33:07 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 12:33:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 12:33:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 12:33:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eb997914bb9d8a6e114c125348ba71cb266c6c05fba612f55fe5e9f7f7f29a`  
		Last Modified: Wed, 27 Jun 2018 12:33:23 GMT  
		Size: 3.9 MB (3873161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7117ec5b954fcfd2cf45dd6d47924e05e15cab9b6fe56f84fdb67acbe84c24`  
		Last Modified: Wed, 27 Jun 2018 12:33:54 GMT  
		Size: 20.5 MB (20479136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da7729c4e5eb711f29fc1c9f95dc8c20ca6aeaa2b7be1603b963d30dd03ef82`  
		Last Modified: Wed, 27 Jun 2018 12:33:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b764bceebc322447446bf16702f0935b88174142d0e8694ddffc75dc6d0e4`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2785b535f25c2d7970fd823bcddc26057662e72befa20f083739ce87cbf04`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a8e656bc244cd8c667eaaed42373c7b96c0c2a54d8138f6df04ecb3a23f83602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee31d6f46a30b1987458b2019d903eb9df560c4909bed645ae9cb9d17b39f62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:26:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 11:27:45 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 11:28:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:28:22 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 11:28:23 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 11:28:31 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 11:28:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 11:28:33 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 11:28:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 11:28:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624eee8d0596d4678feb2ed4ecef0248589f810c2ad2ee2ba68278c40abe755c`  
		Last Modified: Wed, 27 Jun 2018 11:29:10 GMT  
		Size: 4.1 MB (4075191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dbe495673fb1e047d30d5e212001703dd3b6036ff2b8e0d08ad2d2056360e5`  
		Last Modified: Wed, 27 Jun 2018 11:30:07 GMT  
		Size: 20.7 MB (20680694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b16db27dc7394121ea2ae6a384953f340d70172a37ef4050a987bcfedfb25f`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851949009872ee100e7783fe3f599babc41e67d3e7aa7a8bd4ef21c020972678`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823750097fed4657d2d05cc1bfb68ae1d5197f48dc8e6028d04196ffc60d3004`  
		Last Modified: Wed, 27 Jun 2018 11:30:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:ac52c31c8313139bb99f5ec97dee475db8b2bf243ea1b55c53b944c8b564dfee
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
$ docker pull chronograf@sha256:ff2d5fd9ebabda71cfca93c965b3aacccf12f8030774f3c44888652914841407
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43662969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fefdce8b5239f2c228dc59f53cb5cb948d9de32bb61c1cca8f52c0cb96aadab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:32:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 12:32:49 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 12:33:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:33:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 12:33:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 12:33:06 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 12:33:07 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 12:33:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 12:33:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 12:33:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eb997914bb9d8a6e114c125348ba71cb266c6c05fba612f55fe5e9f7f7f29a`  
		Last Modified: Wed, 27 Jun 2018 12:33:23 GMT  
		Size: 3.9 MB (3873161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7117ec5b954fcfd2cf45dd6d47924e05e15cab9b6fe56f84fdb67acbe84c24`  
		Last Modified: Wed, 27 Jun 2018 12:33:54 GMT  
		Size: 20.5 MB (20479136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da7729c4e5eb711f29fc1c9f95dc8c20ca6aeaa2b7be1603b963d30dd03ef82`  
		Last Modified: Wed, 27 Jun 2018 12:33:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b764bceebc322447446bf16702f0935b88174142d0e8694ddffc75dc6d0e4`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2785b535f25c2d7970fd823bcddc26057662e72befa20f083739ce87cbf04`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a8e656bc244cd8c667eaaed42373c7b96c0c2a54d8138f6df04ecb3a23f83602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee31d6f46a30b1987458b2019d903eb9df560c4909bed645ae9cb9d17b39f62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:26:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 11:27:45 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 11:28:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:28:22 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 11:28:23 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 11:28:31 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 11:28:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 11:28:33 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 11:28:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 11:28:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624eee8d0596d4678feb2ed4ecef0248589f810c2ad2ee2ba68278c40abe755c`  
		Last Modified: Wed, 27 Jun 2018 11:29:10 GMT  
		Size: 4.1 MB (4075191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dbe495673fb1e047d30d5e212001703dd3b6036ff2b8e0d08ad2d2056360e5`  
		Last Modified: Wed, 27 Jun 2018 11:30:07 GMT  
		Size: 20.7 MB (20680694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b16db27dc7394121ea2ae6a384953f340d70172a37ef4050a987bcfedfb25f`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851949009872ee100e7783fe3f599babc41e67d3e7aa7a8bd4ef21c020972678`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823750097fed4657d2d05cc1bfb68ae1d5197f48dc8e6028d04196ffc60d3004`  
		Last Modified: Wed, 27 Jun 2018 11:30:01 GMT  
		Size: 240.0 B  
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

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:a6633d4588e1a4a7739b6af1f828df632a0308449b0abf6ff99d9f2501b8c066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

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

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:ac52c31c8313139bb99f5ec97dee475db8b2bf243ea1b55c53b944c8b564dfee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

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

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:ff2d5fd9ebabda71cfca93c965b3aacccf12f8030774f3c44888652914841407
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43662969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fefdce8b5239f2c228dc59f53cb5cb948d9de32bb61c1cca8f52c0cb96aadab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:32:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 12:32:49 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 12:33:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:33:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 12:33:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 12:33:06 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 12:33:07 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 12:33:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 12:33:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 12:33:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eb997914bb9d8a6e114c125348ba71cb266c6c05fba612f55fe5e9f7f7f29a`  
		Last Modified: Wed, 27 Jun 2018 12:33:23 GMT  
		Size: 3.9 MB (3873161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7117ec5b954fcfd2cf45dd6d47924e05e15cab9b6fe56f84fdb67acbe84c24`  
		Last Modified: Wed, 27 Jun 2018 12:33:54 GMT  
		Size: 20.5 MB (20479136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da7729c4e5eb711f29fc1c9f95dc8c20ca6aeaa2b7be1603b963d30dd03ef82`  
		Last Modified: Wed, 27 Jun 2018 12:33:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b764bceebc322447446bf16702f0935b88174142d0e8694ddffc75dc6d0e4`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2785b535f25c2d7970fd823bcddc26057662e72befa20f083739ce87cbf04`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a8e656bc244cd8c667eaaed42373c7b96c0c2a54d8138f6df04ecb3a23f83602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee31d6f46a30b1987458b2019d903eb9df560c4909bed645ae9cb9d17b39f62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:26:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 11:27:45 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 11:28:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:28:22 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 11:28:23 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 11:28:31 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 11:28:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 11:28:33 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 11:28:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 11:28:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624eee8d0596d4678feb2ed4ecef0248589f810c2ad2ee2ba68278c40abe755c`  
		Last Modified: Wed, 27 Jun 2018 11:29:10 GMT  
		Size: 4.1 MB (4075191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dbe495673fb1e047d30d5e212001703dd3b6036ff2b8e0d08ad2d2056360e5`  
		Last Modified: Wed, 27 Jun 2018 11:30:07 GMT  
		Size: 20.7 MB (20680694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b16db27dc7394121ea2ae6a384953f340d70172a37ef4050a987bcfedfb25f`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851949009872ee100e7783fe3f599babc41e67d3e7aa7a8bd4ef21c020972678`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823750097fed4657d2d05cc1bfb68ae1d5197f48dc8e6028d04196ffc60d3004`  
		Last Modified: Wed, 27 Jun 2018 11:30:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
