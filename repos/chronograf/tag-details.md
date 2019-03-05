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
-	[`chronograf:1.7.8`](#chronograf178)
-	[`chronograf:1.7.8-alpine`](#chronograf178-alpine)
-	[`chronograf:1.7-alpine`](#chronograf17-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:76a5fa32358fb3ade1f375b655026648cac49ac86712b1dff3e1896879a4e0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:9759359647d3714eebdc04621393dce4bf11b84fcb4c4d41fec5f87b823888ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49076947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439b5f3651c62227ca17135feb9fe886f134fb9638b813e5c5585b683cec7623`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:45:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 02:45:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 05 Mar 2019 02:46:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 02:46:12 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 02:46:13 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 02:46:13 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 02:46:14 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 02:46:15 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 02:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 02:46:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fe4434913f32a482c3f4ae398d70686a093f58765f2d30f3f46f4ebc9dfaf`  
		Last Modified: Tue, 05 Mar 2019 02:47:17 GMT  
		Size: 4.5 MB (4503526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76641e17aecc732ab312054d039339c4d9a361626f28eddab18b7e2d9761267b`  
		Last Modified: Tue, 05 Mar 2019 02:47:21 GMT  
		Size: 22.1 MB (22052992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcfda243ff7402d00ea86904e424ae68e44890041b5ccfffff0c5fef04168ca`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7d475312d40d71346ed8b1343b3b7c2785ed5f69490366b9aeebecf45d8667`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a02b9efb75614b608c5945118f09c4e50013e6f64ccb77d9a440e461bfc20e`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1d8e5021083f9f3aeaf9f6d6981b4219a1a4faa0b16732dfb2d77ad10a544756
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43647956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3376069b763ef9b3c4bd6dccc8cfb8d99080f75b1b5f9c421c2520ea17f45c08`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:42:12 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 15:42:13 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Feb 2019 15:42:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 15:42:33 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Thu, 07 Feb 2019 15:42:34 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Feb 2019 15:42:34 GMT
EXPOSE 8888
# Thu, 07 Feb 2019 15:42:35 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Feb 2019 15:42:35 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Thu, 07 Feb 2019 15:42:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 15:42:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0b9b37c5d450d1d14bdc332de922a5618e4b27e883f86398a823e65f6170a8`  
		Last Modified: Thu, 07 Feb 2019 15:43:48 GMT  
		Size: 3.9 MB (3877122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535505261e0010520698d16a9894341c2f96806c9535cadbd4112d3927307984`  
		Last Modified: Thu, 07 Feb 2019 15:43:54 GMT  
		Size: 20.5 MB (20456237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5459c410b2baad22c6ddb5b3111035ce2141ed2323f52db34848ea12fcb48726`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f0ebbac0168f441531aa3889da8de71ef49b6d1264b5a530a2051920d254e3`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd091af42aecd007d469b735a55115bd8078c272d9fd48e0eb53c87af4cd7b8`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:aaf2b98963ed04e44c764bada861382e7f9aa3a7a6f94e6c3564782d03d83cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45114378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cc851730d047598f702c198716c04a708c34eea8cef44e4baf0d64e818d81f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:47:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 21:47:31 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Feb 2019 21:48:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 21:48:53 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 06 Feb 2019 21:48:54 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Feb 2019 21:48:55 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 21:48:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Feb 2019 21:48:57 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 06 Feb 2019 21:48:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 21:48:58 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40515e1de64ee01d3c83c7635db289fbfd50decab265c7b32103b52619aa2e93`  
		Last Modified: Wed, 06 Feb 2019 21:51:53 GMT  
		Size: 4.1 MB (4078440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e86bc3db196bb84fba5296e7ff92d1b847cb96c126386bf64274db1fdcb4adc`  
		Last Modified: Wed, 06 Feb 2019 21:51:59 GMT  
		Size: 20.7 MB (20661373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d53fa7a23fc435ec5dbfaccc6f6199ca58210f35c8f4f9eed8935e1f33554`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb209da3349562594486eefbc510de0a3ea2aaa86a272ddbf6d04d9a03951f2`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127c0aba04bd7b032ac88a08cc41ed0bc1c8554ab76b90584795575b2f4d1af3`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:76a5fa32358fb3ade1f375b655026648cac49ac86712b1dff3e1896879a4e0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:9759359647d3714eebdc04621393dce4bf11b84fcb4c4d41fec5f87b823888ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49076947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439b5f3651c62227ca17135feb9fe886f134fb9638b813e5c5585b683cec7623`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:45:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 02:45:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 05 Mar 2019 02:46:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 02:46:12 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 02:46:13 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 02:46:13 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 02:46:14 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 02:46:15 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 02:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 02:46:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fe4434913f32a482c3f4ae398d70686a093f58765f2d30f3f46f4ebc9dfaf`  
		Last Modified: Tue, 05 Mar 2019 02:47:17 GMT  
		Size: 4.5 MB (4503526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76641e17aecc732ab312054d039339c4d9a361626f28eddab18b7e2d9761267b`  
		Last Modified: Tue, 05 Mar 2019 02:47:21 GMT  
		Size: 22.1 MB (22052992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcfda243ff7402d00ea86904e424ae68e44890041b5ccfffff0c5fef04168ca`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7d475312d40d71346ed8b1343b3b7c2785ed5f69490366b9aeebecf45d8667`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a02b9efb75614b608c5945118f09c4e50013e6f64ccb77d9a440e461bfc20e`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1d8e5021083f9f3aeaf9f6d6981b4219a1a4faa0b16732dfb2d77ad10a544756
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43647956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3376069b763ef9b3c4bd6dccc8cfb8d99080f75b1b5f9c421c2520ea17f45c08`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:42:12 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 15:42:13 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Feb 2019 15:42:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 15:42:33 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Thu, 07 Feb 2019 15:42:34 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Feb 2019 15:42:34 GMT
EXPOSE 8888
# Thu, 07 Feb 2019 15:42:35 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Feb 2019 15:42:35 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Thu, 07 Feb 2019 15:42:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 15:42:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0b9b37c5d450d1d14bdc332de922a5618e4b27e883f86398a823e65f6170a8`  
		Last Modified: Thu, 07 Feb 2019 15:43:48 GMT  
		Size: 3.9 MB (3877122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535505261e0010520698d16a9894341c2f96806c9535cadbd4112d3927307984`  
		Last Modified: Thu, 07 Feb 2019 15:43:54 GMT  
		Size: 20.5 MB (20456237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5459c410b2baad22c6ddb5b3111035ce2141ed2323f52db34848ea12fcb48726`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f0ebbac0168f441531aa3889da8de71ef49b6d1264b5a530a2051920d254e3`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd091af42aecd007d469b735a55115bd8078c272d9fd48e0eb53c87af4cd7b8`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:aaf2b98963ed04e44c764bada861382e7f9aa3a7a6f94e6c3564782d03d83cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45114378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cc851730d047598f702c198716c04a708c34eea8cef44e4baf0d64e818d81f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:47:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 21:47:31 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Feb 2019 21:48:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 21:48:53 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 06 Feb 2019 21:48:54 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Feb 2019 21:48:55 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 21:48:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Feb 2019 21:48:57 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 06 Feb 2019 21:48:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 21:48:58 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40515e1de64ee01d3c83c7635db289fbfd50decab265c7b32103b52619aa2e93`  
		Last Modified: Wed, 06 Feb 2019 21:51:53 GMT  
		Size: 4.1 MB (4078440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e86bc3db196bb84fba5296e7ff92d1b847cb96c126386bf64274db1fdcb4adc`  
		Last Modified: Wed, 06 Feb 2019 21:51:59 GMT  
		Size: 20.7 MB (20661373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d53fa7a23fc435ec5dbfaccc6f6199ca58210f35c8f4f9eed8935e1f33554`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb209da3349562594486eefbc510de0a3ea2aaa86a272ddbf6d04d9a03951f2`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127c0aba04bd7b032ac88a08cc41ed0bc1c8554ab76b90584795575b2f4d1af3`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:76a5fa32358fb3ade1f375b655026648cac49ac86712b1dff3e1896879a4e0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:9759359647d3714eebdc04621393dce4bf11b84fcb4c4d41fec5f87b823888ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49076947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439b5f3651c62227ca17135feb9fe886f134fb9638b813e5c5585b683cec7623`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:45:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 02:45:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 05 Mar 2019 02:46:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 02:46:12 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 02:46:13 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 02:46:13 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 02:46:14 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 02:46:15 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 02:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 02:46:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fe4434913f32a482c3f4ae398d70686a093f58765f2d30f3f46f4ebc9dfaf`  
		Last Modified: Tue, 05 Mar 2019 02:47:17 GMT  
		Size: 4.5 MB (4503526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76641e17aecc732ab312054d039339c4d9a361626f28eddab18b7e2d9761267b`  
		Last Modified: Tue, 05 Mar 2019 02:47:21 GMT  
		Size: 22.1 MB (22052992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcfda243ff7402d00ea86904e424ae68e44890041b5ccfffff0c5fef04168ca`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7d475312d40d71346ed8b1343b3b7c2785ed5f69490366b9aeebecf45d8667`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a02b9efb75614b608c5945118f09c4e50013e6f64ccb77d9a440e461bfc20e`  
		Last Modified: Tue, 05 Mar 2019 02:47:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1d8e5021083f9f3aeaf9f6d6981b4219a1a4faa0b16732dfb2d77ad10a544756
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43647956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3376069b763ef9b3c4bd6dccc8cfb8d99080f75b1b5f9c421c2520ea17f45c08`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:42:12 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 15:42:13 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Feb 2019 15:42:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 15:42:33 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Thu, 07 Feb 2019 15:42:34 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Feb 2019 15:42:34 GMT
EXPOSE 8888
# Thu, 07 Feb 2019 15:42:35 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Feb 2019 15:42:35 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Thu, 07 Feb 2019 15:42:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 15:42:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0b9b37c5d450d1d14bdc332de922a5618e4b27e883f86398a823e65f6170a8`  
		Last Modified: Thu, 07 Feb 2019 15:43:48 GMT  
		Size: 3.9 MB (3877122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535505261e0010520698d16a9894341c2f96806c9535cadbd4112d3927307984`  
		Last Modified: Thu, 07 Feb 2019 15:43:54 GMT  
		Size: 20.5 MB (20456237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5459c410b2baad22c6ddb5b3111035ce2141ed2323f52db34848ea12fcb48726`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f0ebbac0168f441531aa3889da8de71ef49b6d1264b5a530a2051920d254e3`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd091af42aecd007d469b735a55115bd8078c272d9fd48e0eb53c87af4cd7b8`  
		Last Modified: Thu, 07 Feb 2019 15:43:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:aaf2b98963ed04e44c764bada861382e7f9aa3a7a6f94e6c3564782d03d83cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45114378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cc851730d047598f702c198716c04a708c34eea8cef44e4baf0d64e818d81f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:47:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 21:47:31 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Feb 2019 21:48:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 21:48:53 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 06 Feb 2019 21:48:54 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Feb 2019 21:48:55 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 21:48:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Feb 2019 21:48:57 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 06 Feb 2019 21:48:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 21:48:58 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40515e1de64ee01d3c83c7635db289fbfd50decab265c7b32103b52619aa2e93`  
		Last Modified: Wed, 06 Feb 2019 21:51:53 GMT  
		Size: 4.1 MB (4078440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e86bc3db196bb84fba5296e7ff92d1b847cb96c126386bf64274db1fdcb4adc`  
		Last Modified: Wed, 06 Feb 2019 21:51:59 GMT  
		Size: 20.7 MB (20661373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d53fa7a23fc435ec5dbfaccc6f6199ca58210f35c8f4f9eed8935e1f33554`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb209da3349562594486eefbc510de0a3ea2aaa86a272ddbf6d04d9a03951f2`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127c0aba04bd7b032ac88a08cc41ed0bc1c8554ab76b90584795575b2f4d1af3`  
		Last Modified: Wed, 06 Feb 2019 21:51:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1-alpine`

```console
$ docker pull chronograf@sha256:5911d391b391fc817a48c03737ddec550fbb7b8034eb6e7b816dfdf71bf30d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:b792068301b590257bed768fe17453a89735aa983d4a966642491ce40120da58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68167b4b10b95a4575bcc5c7a3b31fffaca7a46b298b9daa7972fa563af02fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 23:35:53 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 30 Jan 2019 23:36:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 23:36:00 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 30 Jan 2019 23:36:00 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 30 Jan 2019 23:36:00 GMT
EXPOSE 8888
# Wed, 30 Jan 2019 23:36:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 30 Jan 2019 23:36:01 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:36:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:36:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf466a9ce3110b0222bd5422a128b2c19ceb65b1fa753cf9442981bbebe15e7`  
		Last Modified: Wed, 30 Jan 2019 23:37:02 GMT  
		Size: 11.6 MB (11623988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e9c9ef6aedb7ca2743abbbd0b3ce1cc0c121c0fa559ad9368e58b341fcc5ab`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbca8b74472bfa99762433a00d5cbb7f4d8a170282b8789d79cabcddb73307e6`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474602534db1a2da5fe78714f115d1df00b6ab28d14ae472bd32b38a25480d0b`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:5911d391b391fc817a48c03737ddec550fbb7b8034eb6e7b816dfdf71bf30d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:b792068301b590257bed768fe17453a89735aa983d4a966642491ce40120da58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68167b4b10b95a4575bcc5c7a3b31fffaca7a46b298b9daa7972fa563af02fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 23:35:53 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 30 Jan 2019 23:36:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 23:36:00 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 30 Jan 2019 23:36:00 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 30 Jan 2019 23:36:00 GMT
EXPOSE 8888
# Wed, 30 Jan 2019 23:36:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 30 Jan 2019 23:36:01 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:36:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:36:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf466a9ce3110b0222bd5422a128b2c19ceb65b1fa753cf9442981bbebe15e7`  
		Last Modified: Wed, 30 Jan 2019 23:37:02 GMT  
		Size: 11.6 MB (11623988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e9c9ef6aedb7ca2743abbbd0b3ce1cc0c121c0fa559ad9368e58b341fcc5ab`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbca8b74472bfa99762433a00d5cbb7f4d8a170282b8789d79cabcddb73307e6`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474602534db1a2da5fe78714f115d1df00b6ab28d14ae472bd32b38a25480d0b`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:5911d391b391fc817a48c03737ddec550fbb7b8034eb6e7b816dfdf71bf30d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:b792068301b590257bed768fe17453a89735aa983d4a966642491ce40120da58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68167b4b10b95a4575bcc5c7a3b31fffaca7a46b298b9daa7972fa563af02fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 23:35:53 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 30 Jan 2019 23:36:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 23:36:00 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 30 Jan 2019 23:36:00 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 30 Jan 2019 23:36:00 GMT
EXPOSE 8888
# Wed, 30 Jan 2019 23:36:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 30 Jan 2019 23:36:01 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:36:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:36:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf466a9ce3110b0222bd5422a128b2c19ceb65b1fa753cf9442981bbebe15e7`  
		Last Modified: Wed, 30 Jan 2019 23:37:02 GMT  
		Size: 11.6 MB (11623988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e9c9ef6aedb7ca2743abbbd0b3ce1cc0c121c0fa559ad9368e58b341fcc5ab`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbca8b74472bfa99762433a00d5cbb7f4d8a170282b8789d79cabcddb73307e6`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474602534db1a2da5fe78714f115d1df00b6ab28d14ae472bd32b38a25480d0b`  
		Last Modified: Wed, 30 Jan 2019 23:36:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6`

```console
$ docker pull chronograf@sha256:dfa16b7e750f98cf2ab87dbcfef214ebcc3595af13dcc0e1b1f86324b34acb33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:fda63dcf5e20ddb6b1d14a6ba17a6f29c2a644015c9d27bb828b5d2890ba240e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49120116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcd8f2fc1127198cd508e54fc5ce71c45c85645d91a5000bad14e66afcc3f0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:45:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 02:46:24 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 05 Mar 2019 02:46:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 02:46:37 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 02:46:37 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 02:46:38 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 02:46:38 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 02:46:39 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 02:46:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 02:46:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fe4434913f32a482c3f4ae398d70686a093f58765f2d30f3f46f4ebc9dfaf`  
		Last Modified: Tue, 05 Mar 2019 02:47:17 GMT  
		Size: 4.5 MB (4503526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a31f15eab023a6abd9830488d6fdf5422f79459f0862deef6f8df132792c9d`  
		Last Modified: Tue, 05 Mar 2019 02:47:31 GMT  
		Size: 22.1 MB (22096156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7facd539c2d8b95b2809582e7d2534a90e08a763d1b30fce8b723462bebc80db`  
		Last Modified: Tue, 05 Mar 2019 02:47:26 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef58f7afe5ef91aee4779fd4a2d0edf2d57a933a68ff3c29c1b0b15b3e19d469`  
		Last Modified: Tue, 05 Mar 2019 02:47:26 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7400cf6dc4386f1304e6365ce5b00716a584072ca6b5c514ec9db79cb20510c2`  
		Last Modified: Tue, 05 Mar 2019 02:47:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:dea6445d75dac0c33da4bf47803652287e866beed6dfdccf6bcb34562b5c2b15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43711794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7be5d313afafbb0107941957f309786e17d63db1a180da1744c2d9d91294b53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:42:12 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 15:42:44 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Thu, 07 Feb 2019 15:43:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 15:43:05 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Thu, 07 Feb 2019 15:43:05 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Feb 2019 15:43:06 GMT
EXPOSE 8888
# Thu, 07 Feb 2019 15:43:06 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Feb 2019 15:43:07 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Thu, 07 Feb 2019 15:43:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 15:43:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0b9b37c5d450d1d14bdc332de922a5618e4b27e883f86398a823e65f6170a8`  
		Last Modified: Thu, 07 Feb 2019 15:43:48 GMT  
		Size: 3.9 MB (3877122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76df6ef0bab6c2d2a7fe3de71fb1813fb0b4c443cd113a2f637f9e9f5a4e1eb`  
		Last Modified: Thu, 07 Feb 2019 15:44:08 GMT  
		Size: 20.5 MB (20520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efa70fd5b4e963d8f7e074b70758180181e844f5dd5d0b40bb5c4c3086c1491`  
		Last Modified: Thu, 07 Feb 2019 15:44:01 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df7b3ae6a3fc690463b58ba52374cbe3ddf01155b93ff4576eb2dae033688a7`  
		Last Modified: Thu, 07 Feb 2019 15:44:01 GMT  
		Size: 11.9 KB (11913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95d1c2e0ec858eab1c985b609c7da4ee906539ddc0a54889fc6223892fb684`  
		Last Modified: Thu, 07 Feb 2019 15:44:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:0a65ab3277222907698400fd984ef0f1186bb1274926bc639e531e4f5b9386bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45173420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a010be760057d1c50ad75f223aff7683d82d913d06e1701a23eba24557fe213e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:47:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 21:49:15 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 06 Feb 2019 21:50:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 21:50:15 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 06 Feb 2019 21:50:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Feb 2019 21:50:16 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 21:50:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Feb 2019 21:50:17 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 06 Feb 2019 21:50:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 21:50:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40515e1de64ee01d3c83c7635db289fbfd50decab265c7b32103b52619aa2e93`  
		Last Modified: Wed, 06 Feb 2019 21:51:53 GMT  
		Size: 4.1 MB (4078440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2421ad1ba74c8560f143c52fb95addfc1d0e625f027c58a467403edecdcff23`  
		Last Modified: Wed, 06 Feb 2019 21:52:18 GMT  
		Size: 20.7 MB (20720425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108167d37bd136574fe9d6ccf98f673aa17fc6cb9bb50aec5208e1c77b06952a`  
		Last Modified: Wed, 06 Feb 2019 21:52:10 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f343a88e76ea6d22ae775c84226e4386079d42d3ed9ad71b3d57a8d7b5ba56e4`  
		Last Modified: Wed, 06 Feb 2019 21:52:10 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5ddaedc238d20e4f9fcea3dee5958ecc53b0f86800aeb28f366a49f80642f9`  
		Last Modified: Wed, 06 Feb 2019 21:52:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2`

```console
$ docker pull chronograf@sha256:dfa16b7e750f98cf2ab87dbcfef214ebcc3595af13dcc0e1b1f86324b34acb33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.2` - linux; amd64

```console
$ docker pull chronograf@sha256:fda63dcf5e20ddb6b1d14a6ba17a6f29c2a644015c9d27bb828b5d2890ba240e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49120116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcd8f2fc1127198cd508e54fc5ce71c45c85645d91a5000bad14e66afcc3f0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:45:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 02:46:24 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 05 Mar 2019 02:46:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 02:46:37 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 02:46:37 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 02:46:38 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 02:46:38 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 02:46:39 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 02:46:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 02:46:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fe4434913f32a482c3f4ae398d70686a093f58765f2d30f3f46f4ebc9dfaf`  
		Last Modified: Tue, 05 Mar 2019 02:47:17 GMT  
		Size: 4.5 MB (4503526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a31f15eab023a6abd9830488d6fdf5422f79459f0862deef6f8df132792c9d`  
		Last Modified: Tue, 05 Mar 2019 02:47:31 GMT  
		Size: 22.1 MB (22096156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7facd539c2d8b95b2809582e7d2534a90e08a763d1b30fce8b723462bebc80db`  
		Last Modified: Tue, 05 Mar 2019 02:47:26 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef58f7afe5ef91aee4779fd4a2d0edf2d57a933a68ff3c29c1b0b15b3e19d469`  
		Last Modified: Tue, 05 Mar 2019 02:47:26 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7400cf6dc4386f1304e6365ce5b00716a584072ca6b5c514ec9db79cb20510c2`  
		Last Modified: Tue, 05 Mar 2019 02:47:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:dea6445d75dac0c33da4bf47803652287e866beed6dfdccf6bcb34562b5c2b15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43711794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7be5d313afafbb0107941957f309786e17d63db1a180da1744c2d9d91294b53`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:42:12 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 15:42:44 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Thu, 07 Feb 2019 15:43:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 15:43:05 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Thu, 07 Feb 2019 15:43:05 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Feb 2019 15:43:06 GMT
EXPOSE 8888
# Thu, 07 Feb 2019 15:43:06 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Feb 2019 15:43:07 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Thu, 07 Feb 2019 15:43:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 15:43:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0b9b37c5d450d1d14bdc332de922a5618e4b27e883f86398a823e65f6170a8`  
		Last Modified: Thu, 07 Feb 2019 15:43:48 GMT  
		Size: 3.9 MB (3877122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76df6ef0bab6c2d2a7fe3de71fb1813fb0b4c443cd113a2f637f9e9f5a4e1eb`  
		Last Modified: Thu, 07 Feb 2019 15:44:08 GMT  
		Size: 20.5 MB (20520070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efa70fd5b4e963d8f7e074b70758180181e844f5dd5d0b40bb5c4c3086c1491`  
		Last Modified: Thu, 07 Feb 2019 15:44:01 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df7b3ae6a3fc690463b58ba52374cbe3ddf01155b93ff4576eb2dae033688a7`  
		Last Modified: Thu, 07 Feb 2019 15:44:01 GMT  
		Size: 11.9 KB (11913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95d1c2e0ec858eab1c985b609c7da4ee906539ddc0a54889fc6223892fb684`  
		Last Modified: Thu, 07 Feb 2019 15:44:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:0a65ab3277222907698400fd984ef0f1186bb1274926bc639e531e4f5b9386bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45173420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a010be760057d1c50ad75f223aff7683d82d913d06e1701a23eba24557fe213e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:47:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 21:49:15 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 06 Feb 2019 21:50:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 21:50:15 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 06 Feb 2019 21:50:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Feb 2019 21:50:16 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 21:50:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Feb 2019 21:50:17 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 06 Feb 2019 21:50:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 21:50:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40515e1de64ee01d3c83c7635db289fbfd50decab265c7b32103b52619aa2e93`  
		Last Modified: Wed, 06 Feb 2019 21:51:53 GMT  
		Size: 4.1 MB (4078440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2421ad1ba74c8560f143c52fb95addfc1d0e625f027c58a467403edecdcff23`  
		Last Modified: Wed, 06 Feb 2019 21:52:18 GMT  
		Size: 20.7 MB (20720425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108167d37bd136574fe9d6ccf98f673aa17fc6cb9bb50aec5208e1c77b06952a`  
		Last Modified: Wed, 06 Feb 2019 21:52:10 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f343a88e76ea6d22ae775c84226e4386079d42d3ed9ad71b3d57a8d7b5ba56e4`  
		Last Modified: Wed, 06 Feb 2019 21:52:10 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5ddaedc238d20e4f9fcea3dee5958ecc53b0f86800aeb28f366a49f80642f9`  
		Last Modified: Wed, 06 Feb 2019 21:52:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2-alpine`

```console
$ docker pull chronograf@sha256:8897302c445315633d13cefa4122641c09fe76eb060264904514a1b096cadf4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:22da7e19fb59cf1b0e8c839acd70699da94df048dff08ec58d4a088992272f6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14277425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b72a0baacb94ca4c747c8f3547712a0c87b51b55aeb3a522073d5c2584fb313`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 23:36:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 30 Jan 2019 23:36:16 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 23:36:16 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 30 Jan 2019 23:36:16 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 30 Jan 2019 23:36:17 GMT
EXPOSE 8888
# Wed, 30 Jan 2019 23:36:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 30 Jan 2019 23:36:17 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:36:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72122ae73575201f58990d8cbd819246cd189a7940e1ac4f636e4591dae7335b`  
		Last Modified: Wed, 30 Jan 2019 23:37:12 GMT  
		Size: 11.7 MB (11736722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112773cdd8f607db827d92f990f30d8481809637bc6a8ea4b71682ea234f4c39`  
		Last Modified: Wed, 30 Jan 2019 23:37:08 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51368b425151128dbffbe7fc9cb0dbf89e9b52200914cafbc70538b168861899`  
		Last Modified: Wed, 30 Jan 2019 23:37:08 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8770f479bf30adff448032edf88ce6c9adff26b87e28465ba1f4510e5e4b8a`  
		Last Modified: Wed, 30 Jan 2019 23:37:08 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:8897302c445315633d13cefa4122641c09fe76eb060264904514a1b096cadf4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:22da7e19fb59cf1b0e8c839acd70699da94df048dff08ec58d4a088992272f6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14277425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b72a0baacb94ca4c747c8f3547712a0c87b51b55aeb3a522073d5c2584fb313`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 23:36:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 30 Jan 2019 23:36:16 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 23:36:16 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 30 Jan 2019 23:36:16 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 30 Jan 2019 23:36:17 GMT
EXPOSE 8888
# Wed, 30 Jan 2019 23:36:17 GMT
VOLUME [/var/lib/chronograf]
# Wed, 30 Jan 2019 23:36:17 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:36:18 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72122ae73575201f58990d8cbd819246cd189a7940e1ac4f636e4591dae7335b`  
		Last Modified: Wed, 30 Jan 2019 23:37:12 GMT  
		Size: 11.7 MB (11736722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112773cdd8f607db827d92f990f30d8481809637bc6a8ea4b71682ea234f4c39`  
		Last Modified: Wed, 30 Jan 2019 23:37:08 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51368b425151128dbffbe7fc9cb0dbf89e9b52200914cafbc70538b168861899`  
		Last Modified: Wed, 30 Jan 2019 23:37:08 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8770f479bf30adff448032edf88ce6c9adff26b87e28465ba1f4510e5e4b8a`  
		Last Modified: Wed, 30 Jan 2019 23:37:08 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7`

```console
$ docker pull chronograf@sha256:1896ee0245c2e09bbd0764be0f7b03a8a89ef9cfa4ade7b1fdc7770e052baff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7` - linux; amd64

```console
$ docker pull chronograf@sha256:8834668ca1b21b85676c84c66e8e4131d73eade3a1e95e79ba22f1d149669f6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55225799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40dce7f2b9ec231ceb3cd00dfe03aed2705a5b01d3713879f7bcd8a67bfc77d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:45:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 02:46:46 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 05 Mar 2019 02:46:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 02:46:59 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 02:46:59 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 02:47:00 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 02:47:00 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 02:47:01 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 02:47:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 02:47:02 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fe4434913f32a482c3f4ae398d70686a093f58765f2d30f3f46f4ebc9dfaf`  
		Last Modified: Tue, 05 Mar 2019 02:47:17 GMT  
		Size: 4.5 MB (4503526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84933e7552256453313a6b7c1884142961dbefb0920e7efa4a2ddc8ae835b5f`  
		Last Modified: Tue, 05 Mar 2019 02:47:39 GMT  
		Size: 28.2 MB (28201840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2d9302ad0f9ec19cf3c3376e120ca711ac694a98bd9667198f45f65cfe1625`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc47b2342d5fabed5019946bd3dfd5984cabd12092e4ad6722ffbeecf54d013`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13655fbfe23333176735cd9f44b3f862e0990c06021720b7e34f88d28d82078`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:94987d957a88e4e3c59e13e23154d8906cf3005a8e0ed055f36ea778ee7c1b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49207059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c015e90ad7cef0759ee40846db8c38766ae73b445632d246d371d24be0cd1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:42:12 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Feb 2019 12:58:07 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Fri, 15 Feb 2019 12:58:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Feb 2019 12:58:35 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 15 Feb 2019 12:58:36 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 15 Feb 2019 12:58:37 GMT
EXPOSE 8888
# Fri, 15 Feb 2019 12:58:37 GMT
VOLUME [/var/lib/chronograf]
# Fri, 15 Feb 2019 12:58:38 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 15 Feb 2019 12:58:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Feb 2019 12:58:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0b9b37c5d450d1d14bdc332de922a5618e4b27e883f86398a823e65f6170a8`  
		Last Modified: Thu, 07 Feb 2019 15:43:48 GMT  
		Size: 3.9 MB (3877122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778da86c8ca9d2d60eb3cfbc11aa50bc2ed8c982a14c0ae6560ce02cf77816f`  
		Last Modified: Fri, 15 Feb 2019 12:59:01 GMT  
		Size: 26.0 MB (26015334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf25a2070bf3269cdf64a580fb64c7d03ce623ea0ba10764f8514bfabda7b77`  
		Last Modified: Fri, 15 Feb 2019 12:58:54 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98e7bd05eba4b3187f6cb9764b8c364c493fc3ffe049a0e112715d0fa22d3c`  
		Last Modified: Fri, 15 Feb 2019 12:58:54 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050f2cdd040b3516434a43a5e7b1cde4cae5be314ddfe5add8c5691c5024defd`  
		Last Modified: Fri, 15 Feb 2019 12:58:53 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:b0d6d9debf69bfe5e5ab3f042b587cf9e78b6dd3bd8c7b16aab8790643d677ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50674022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc79beec23ea7311d6e6b34b1fd0885f889d9a090701323fac093c90ff75940`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:47:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Feb 2019 09:39:59 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Fri, 15 Feb 2019 09:40:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Feb 2019 09:40:46 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 15 Feb 2019 09:40:46 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 15 Feb 2019 09:40:47 GMT
EXPOSE 8888
# Fri, 15 Feb 2019 09:40:48 GMT
VOLUME [/var/lib/chronograf]
# Fri, 15 Feb 2019 09:40:48 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 15 Feb 2019 09:40:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Feb 2019 09:40:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40515e1de64ee01d3c83c7635db289fbfd50decab265c7b32103b52619aa2e93`  
		Last Modified: Wed, 06 Feb 2019 21:51:53 GMT  
		Size: 4.1 MB (4078440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa07efa05e4c55b6b021e0658ed5c4fab1efd8eecae293e23784d9fe8db2937`  
		Last Modified: Fri, 15 Feb 2019 09:41:20 GMT  
		Size: 26.2 MB (26221019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb65a4339856f64bcd74f5cb7d8244807d9ecaaae54f265b74e758c973aa2090`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 12.3 KB (12254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add0293766ccfb7ed7a51a2423066f0339006ff97631507fc11c2cd817b7169`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3e8be10281a3d4f4cd4dce8aa41f2aa915c04d92c55f22f0b823b44f88fa42`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.8`

```console
$ docker pull chronograf@sha256:1896ee0245c2e09bbd0764be0f7b03a8a89ef9cfa4ade7b1fdc7770e052baff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7.8` - linux; amd64

```console
$ docker pull chronograf@sha256:8834668ca1b21b85676c84c66e8e4131d73eade3a1e95e79ba22f1d149669f6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55225799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40dce7f2b9ec231ceb3cd00dfe03aed2705a5b01d3713879f7bcd8a67bfc77d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:45:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 02:46:46 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 05 Mar 2019 02:46:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 02:46:59 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 02:46:59 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 02:47:00 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 02:47:00 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 02:47:01 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 02:47:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 02:47:02 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fe4434913f32a482c3f4ae398d70686a093f58765f2d30f3f46f4ebc9dfaf`  
		Last Modified: Tue, 05 Mar 2019 02:47:17 GMT  
		Size: 4.5 MB (4503526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84933e7552256453313a6b7c1884142961dbefb0920e7efa4a2ddc8ae835b5f`  
		Last Modified: Tue, 05 Mar 2019 02:47:39 GMT  
		Size: 28.2 MB (28201840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2d9302ad0f9ec19cf3c3376e120ca711ac694a98bd9667198f45f65cfe1625`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc47b2342d5fabed5019946bd3dfd5984cabd12092e4ad6722ffbeecf54d013`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13655fbfe23333176735cd9f44b3f862e0990c06021720b7e34f88d28d82078`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.8` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:94987d957a88e4e3c59e13e23154d8906cf3005a8e0ed055f36ea778ee7c1b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49207059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c015e90ad7cef0759ee40846db8c38766ae73b445632d246d371d24be0cd1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:42:12 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Feb 2019 12:58:07 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Fri, 15 Feb 2019 12:58:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Feb 2019 12:58:35 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 15 Feb 2019 12:58:36 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 15 Feb 2019 12:58:37 GMT
EXPOSE 8888
# Fri, 15 Feb 2019 12:58:37 GMT
VOLUME [/var/lib/chronograf]
# Fri, 15 Feb 2019 12:58:38 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 15 Feb 2019 12:58:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Feb 2019 12:58:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0b9b37c5d450d1d14bdc332de922a5618e4b27e883f86398a823e65f6170a8`  
		Last Modified: Thu, 07 Feb 2019 15:43:48 GMT  
		Size: 3.9 MB (3877122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778da86c8ca9d2d60eb3cfbc11aa50bc2ed8c982a14c0ae6560ce02cf77816f`  
		Last Modified: Fri, 15 Feb 2019 12:59:01 GMT  
		Size: 26.0 MB (26015334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf25a2070bf3269cdf64a580fb64c7d03ce623ea0ba10764f8514bfabda7b77`  
		Last Modified: Fri, 15 Feb 2019 12:58:54 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98e7bd05eba4b3187f6cb9764b8c364c493fc3ffe049a0e112715d0fa22d3c`  
		Last Modified: Fri, 15 Feb 2019 12:58:54 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050f2cdd040b3516434a43a5e7b1cde4cae5be314ddfe5add8c5691c5024defd`  
		Last Modified: Fri, 15 Feb 2019 12:58:53 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.8` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:b0d6d9debf69bfe5e5ab3f042b587cf9e78b6dd3bd8c7b16aab8790643d677ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50674022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc79beec23ea7311d6e6b34b1fd0885f889d9a090701323fac093c90ff75940`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:47:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Feb 2019 09:39:59 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Fri, 15 Feb 2019 09:40:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Feb 2019 09:40:46 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 15 Feb 2019 09:40:46 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 15 Feb 2019 09:40:47 GMT
EXPOSE 8888
# Fri, 15 Feb 2019 09:40:48 GMT
VOLUME [/var/lib/chronograf]
# Fri, 15 Feb 2019 09:40:48 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 15 Feb 2019 09:40:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Feb 2019 09:40:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40515e1de64ee01d3c83c7635db289fbfd50decab265c7b32103b52619aa2e93`  
		Last Modified: Wed, 06 Feb 2019 21:51:53 GMT  
		Size: 4.1 MB (4078440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa07efa05e4c55b6b021e0658ed5c4fab1efd8eecae293e23784d9fe8db2937`  
		Last Modified: Fri, 15 Feb 2019 09:41:20 GMT  
		Size: 26.2 MB (26221019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb65a4339856f64bcd74f5cb7d8244807d9ecaaae54f265b74e758c973aa2090`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 12.3 KB (12254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add0293766ccfb7ed7a51a2423066f0339006ff97631507fc11c2cd817b7169`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3e8be10281a3d4f4cd4dce8aa41f2aa915c04d92c55f22f0b823b44f88fa42`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.8-alpine`

```console
$ docker pull chronograf@sha256:0bf351bd29b7c7d1f4c155a9af0a6c05c3ba18e73feaa98d5a6617454f838a51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7.8-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:403972a3e509699ff2660401c85ba7939bf2e7175f038cee5eabc6d01a6becbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16692739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870f8abe82ef354d605e6e633c39a8f2d83d64e17e87c2963f49246fb58507aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:19:50 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Thu, 14 Feb 2019 23:19:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:19:55 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 14 Feb 2019 23:19:55 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 14 Feb 2019 23:19:56 GMT
EXPOSE 8888
# Thu, 14 Feb 2019 23:19:56 GMT
VOLUME [/var/lib/chronograf]
# Thu, 14 Feb 2019 23:19:56 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:19:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d44d3300c41147925e20f1e7d660573bca51b57af82e431734d376670ca3ec2`  
		Last Modified: Thu, 14 Feb 2019 23:20:20 GMT  
		Size: 14.2 MB (14152043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40829036c423625b8d01fa29864d9bb3a7d8e98351ecc3a258c9dbb4fa0a8655`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20820aec85e03de8e24cb3b18e85a98ccd1f6635a19ed042d878b3211ccc9a7`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d984947e0d37e2f42b232ab7f8ecf0979091f2d16a3fc33d8166e682de1a92b0`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7-alpine`

```console
$ docker pull chronograf@sha256:0bf351bd29b7c7d1f4c155a9af0a6c05c3ba18e73feaa98d5a6617454f838a51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:403972a3e509699ff2660401c85ba7939bf2e7175f038cee5eabc6d01a6becbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16692739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870f8abe82ef354d605e6e633c39a8f2d83d64e17e87c2963f49246fb58507aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:19:50 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Thu, 14 Feb 2019 23:19:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:19:55 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 14 Feb 2019 23:19:55 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 14 Feb 2019 23:19:56 GMT
EXPOSE 8888
# Thu, 14 Feb 2019 23:19:56 GMT
VOLUME [/var/lib/chronograf]
# Thu, 14 Feb 2019 23:19:56 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:19:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d44d3300c41147925e20f1e7d660573bca51b57af82e431734d376670ca3ec2`  
		Last Modified: Thu, 14 Feb 2019 23:20:20 GMT  
		Size: 14.2 MB (14152043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40829036c423625b8d01fa29864d9bb3a7d8e98351ecc3a258c9dbb4fa0a8655`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20820aec85e03de8e24cb3b18e85a98ccd1f6635a19ed042d878b3211ccc9a7`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d984947e0d37e2f42b232ab7f8ecf0979091f2d16a3fc33d8166e682de1a92b0`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:0bf351bd29b7c7d1f4c155a9af0a6c05c3ba18e73feaa98d5a6617454f838a51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:403972a3e509699ff2660401c85ba7939bf2e7175f038cee5eabc6d01a6becbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16692739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870f8abe82ef354d605e6e633c39a8f2d83d64e17e87c2963f49246fb58507aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:19:50 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Thu, 14 Feb 2019 23:19:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:19:55 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 14 Feb 2019 23:19:55 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 14 Feb 2019 23:19:56 GMT
EXPOSE 8888
# Thu, 14 Feb 2019 23:19:56 GMT
VOLUME [/var/lib/chronograf]
# Thu, 14 Feb 2019 23:19:56 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:19:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d44d3300c41147925e20f1e7d660573bca51b57af82e431734d376670ca3ec2`  
		Last Modified: Thu, 14 Feb 2019 23:20:20 GMT  
		Size: 14.2 MB (14152043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40829036c423625b8d01fa29864d9bb3a7d8e98351ecc3a258c9dbb4fa0a8655`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20820aec85e03de8e24cb3b18e85a98ccd1f6635a19ed042d878b3211ccc9a7`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d984947e0d37e2f42b232ab7f8ecf0979091f2d16a3fc33d8166e682de1a92b0`  
		Last Modified: Thu, 14 Feb 2019 23:20:17 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:1896ee0245c2e09bbd0764be0f7b03a8a89ef9cfa4ade7b1fdc7770e052baff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:8834668ca1b21b85676c84c66e8e4131d73eade3a1e95e79ba22f1d149669f6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55225799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40dce7f2b9ec231ceb3cd00dfe03aed2705a5b01d3713879f7bcd8a67bfc77d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:45:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 02:46:46 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 05 Mar 2019 02:46:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 02:46:59 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 02:46:59 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 02:47:00 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 02:47:00 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 02:47:01 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 02:47:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 02:47:02 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0fe4434913f32a482c3f4ae398d70686a093f58765f2d30f3f46f4ebc9dfaf`  
		Last Modified: Tue, 05 Mar 2019 02:47:17 GMT  
		Size: 4.5 MB (4503526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84933e7552256453313a6b7c1884142961dbefb0920e7efa4a2ddc8ae835b5f`  
		Last Modified: Tue, 05 Mar 2019 02:47:39 GMT  
		Size: 28.2 MB (28201840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2d9302ad0f9ec19cf3c3376e120ca711ac694a98bd9667198f45f65cfe1625`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc47b2342d5fabed5019946bd3dfd5984cabd12092e4ad6722ffbeecf54d013`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13655fbfe23333176735cd9f44b3f862e0990c06021720b7e34f88d28d82078`  
		Last Modified: Tue, 05 Mar 2019 02:47:34 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:94987d957a88e4e3c59e13e23154d8906cf3005a8e0ed055f36ea778ee7c1b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49207059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c015e90ad7cef0759ee40846db8c38766ae73b445632d246d371d24be0cd1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:42:12 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Feb 2019 12:58:07 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Fri, 15 Feb 2019 12:58:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Feb 2019 12:58:35 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 15 Feb 2019 12:58:36 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 15 Feb 2019 12:58:37 GMT
EXPOSE 8888
# Fri, 15 Feb 2019 12:58:37 GMT
VOLUME [/var/lib/chronograf]
# Fri, 15 Feb 2019 12:58:38 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 15 Feb 2019 12:58:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Feb 2019 12:58:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0b9b37c5d450d1d14bdc332de922a5618e4b27e883f86398a823e65f6170a8`  
		Last Modified: Thu, 07 Feb 2019 15:43:48 GMT  
		Size: 3.9 MB (3877122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1778da86c8ca9d2d60eb3cfbc11aa50bc2ed8c982a14c0ae6560ce02cf77816f`  
		Last Modified: Fri, 15 Feb 2019 12:59:01 GMT  
		Size: 26.0 MB (26015334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf25a2070bf3269cdf64a580fb64c7d03ce623ea0ba10764f8514bfabda7b77`  
		Last Modified: Fri, 15 Feb 2019 12:58:54 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98e7bd05eba4b3187f6cb9764b8c364c493fc3ffe049a0e112715d0fa22d3c`  
		Last Modified: Fri, 15 Feb 2019 12:58:54 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050f2cdd040b3516434a43a5e7b1cde4cae5be314ddfe5add8c5691c5024defd`  
		Last Modified: Fri, 15 Feb 2019 12:58:53 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:b0d6d9debf69bfe5e5ab3f042b587cf9e78b6dd3bd8c7b16aab8790643d677ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50674022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc79beec23ea7311d6e6b34b1fd0885f889d9a090701323fac093c90ff75940`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:47:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Feb 2019 09:39:59 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Fri, 15 Feb 2019 09:40:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Feb 2019 09:40:46 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 15 Feb 2019 09:40:46 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 15 Feb 2019 09:40:47 GMT
EXPOSE 8888
# Fri, 15 Feb 2019 09:40:48 GMT
VOLUME [/var/lib/chronograf]
# Fri, 15 Feb 2019 09:40:48 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 15 Feb 2019 09:40:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Feb 2019 09:40:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40515e1de64ee01d3c83c7635db289fbfd50decab265c7b32103b52619aa2e93`  
		Last Modified: Wed, 06 Feb 2019 21:51:53 GMT  
		Size: 4.1 MB (4078440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa07efa05e4c55b6b021e0658ed5c4fab1efd8eecae293e23784d9fe8db2937`  
		Last Modified: Fri, 15 Feb 2019 09:41:20 GMT  
		Size: 26.2 MB (26221019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb65a4339856f64bcd74f5cb7d8244807d9ecaaae54f265b74e758c973aa2090`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 12.3 KB (12254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add0293766ccfb7ed7a51a2423066f0339006ff97631507fc11c2cd817b7169`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3e8be10281a3d4f4cd4dce8aa41f2aa915c04d92c55f22f0b823b44f88fa42`  
		Last Modified: Fri, 15 Feb 2019 09:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
