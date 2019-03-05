<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.4`](#kapacitor14)
-	[`kapacitor:1.4.1`](#kapacitor141)
-	[`kapacitor:1.4.1-alpine`](#kapacitor141-alpine)
-	[`kapacitor:1.4-alpine`](#kapacitor14-alpine)
-	[`kapacitor:1.5`](#kapacitor15)
-	[`kapacitor:1.5.2`](#kapacitor152)
-	[`kapacitor:1.5.2-alpine`](#kapacitor152-alpine)
-	[`kapacitor:1.5-alpine`](#kapacitor15-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.4`

```console
$ docker pull kapacitor@sha256:806a7623c7928f7fc9c530afcc2d029ccbae811e4e5d5fac02f7136bdae8ef87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4` - linux; amd64

```console
$ docker pull kapacitor@sha256:228c8982e6405d1db6806e7e22fe5a473c8e25df424b8af3d0e8611477a3a13c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96168517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6026a5f5855361d615bcab60326ebf6956c2d06d572ab833ba44b239108185e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 07:19:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 07:19:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 07:19:49 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 05 Mar 2019 07:19:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 07:19:54 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 07:19:54 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 07:19:54 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 07:19:54 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 07:19:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 07:19:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d138bd5f9c511b7d3d87bf9d2efe8032314c3a8bd9282177769eca1b255564b`  
		Last Modified: Tue, 05 Mar 2019 07:20:32 GMT  
		Size: 13.0 MB (13006470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a69d2982bca9af83c40a1b86823fbe4e0cf99037a10b61b005cb1510d98d2`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808e13240b939dc8d5b489834b7c6943aee1900df2a2ba53324489fcfd767d8c`  
		Last Modified: Tue, 05 Mar 2019 07:20:37 GMT  
		Size: 22.7 MB (22694184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189cc51e0ef53a4c1c888f77dca497cf94a04306b648b16dcd313a6f96405a39`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f88747eac3f825c04ae856cb5eb3e8e5b9af6f49cdce06498beabf0c3b9e5`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:3b726b75d0ccebf728269ab3e42622ff336057229ac7817b4b16e972d64f711e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89984390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31e277c38fea4f2122edeb8f27ab1abac7abc02326179b42ed5a5c3b660cb43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:46:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 18:47:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:47:03 GMT
ENV KAPACITOR_VERSION=1.4.1
# Thu, 07 Feb 2019 18:47:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:47:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 18:47:11 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 18:47:11 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 18:47:11 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 18:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:47:12 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f55849b582b60135f6725ab4436efc6fb92a783aba3d11c10a1d1011ec34eb0`  
		Last Modified: Thu, 07 Feb 2019 18:47:40 GMT  
		Size: 13.2 MB (13187077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862d5f69dfa2a35cab67bcd1cb0980773839e8c5f436803bb68a66fb3e0035b`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49ee843362e9049562af123ebcd697ba38d020ed94d39016840f5a96ceca154`  
		Last Modified: Thu, 07 Feb 2019 18:47:46 GMT  
		Size: 21.3 MB (21307913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8944e5572e137c7d07c62ed40a8ec2022facde817cac48ca89973e639285121`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db031859308f938981b2753e8eb89004e81efec2b0c33bea1638dd7cd42f3f82`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:2912cc69dbe4d59280c1b1ea3ebcbd5ea9ebf868296f0bfe5bbb1c82321a748d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90971260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb044f9a820c4d7815fa8c144dd2b8b0a261448b9890b86b6339459fadf4e4c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 04:03:20 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 04:03:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 04:03:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Thu, 07 Feb 2019 04:03:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 04:03:40 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 04:03:41 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 04:03:42 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 04:03:43 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 04:03:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 04:03:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bfe6e78050fade1fa7c6f4d82df12fdc8670f2723f28ad95ccef913478461a`  
		Last Modified: Thu, 07 Feb 2019 04:04:42 GMT  
		Size: 12.7 MB (12713355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6647f03f8673626d7bf053dad848d0c784d480ab034a71edfc3b6080c3141a47`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 2.8 KB (2778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27752d70d9125eb3f9a05d59e5133d7d1e0ae74fca2d31035649473f80efa95b`  
		Last Modified: Thu, 07 Feb 2019 04:04:50 GMT  
		Size: 21.3 MB (21307716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a0e292d09aca636d79d2709a6db3450c173025a3ac8338a9bf3326b3b2f535`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19616771f7ee2eac4f7e33223741c0f1254f7dce52383c7e515f3cee4771f1c4`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1`

```console
$ docker pull kapacitor@sha256:806a7623c7928f7fc9c530afcc2d029ccbae811e4e5d5fac02f7136bdae8ef87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:228c8982e6405d1db6806e7e22fe5a473c8e25df424b8af3d0e8611477a3a13c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96168517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6026a5f5855361d615bcab60326ebf6956c2d06d572ab833ba44b239108185e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 07:19:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 07:19:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 07:19:49 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 05 Mar 2019 07:19:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 07:19:54 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 07:19:54 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 07:19:54 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 07:19:54 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 07:19:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 07:19:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d138bd5f9c511b7d3d87bf9d2efe8032314c3a8bd9282177769eca1b255564b`  
		Last Modified: Tue, 05 Mar 2019 07:20:32 GMT  
		Size: 13.0 MB (13006470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a69d2982bca9af83c40a1b86823fbe4e0cf99037a10b61b005cb1510d98d2`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808e13240b939dc8d5b489834b7c6943aee1900df2a2ba53324489fcfd767d8c`  
		Last Modified: Tue, 05 Mar 2019 07:20:37 GMT  
		Size: 22.7 MB (22694184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189cc51e0ef53a4c1c888f77dca497cf94a04306b648b16dcd313a6f96405a39`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f88747eac3f825c04ae856cb5eb3e8e5b9af6f49cdce06498beabf0c3b9e5`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:3b726b75d0ccebf728269ab3e42622ff336057229ac7817b4b16e972d64f711e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89984390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31e277c38fea4f2122edeb8f27ab1abac7abc02326179b42ed5a5c3b660cb43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:46:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 18:47:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:47:03 GMT
ENV KAPACITOR_VERSION=1.4.1
# Thu, 07 Feb 2019 18:47:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:47:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 18:47:11 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 18:47:11 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 18:47:11 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 18:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:47:12 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f55849b582b60135f6725ab4436efc6fb92a783aba3d11c10a1d1011ec34eb0`  
		Last Modified: Thu, 07 Feb 2019 18:47:40 GMT  
		Size: 13.2 MB (13187077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862d5f69dfa2a35cab67bcd1cb0980773839e8c5f436803bb68a66fb3e0035b`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49ee843362e9049562af123ebcd697ba38d020ed94d39016840f5a96ceca154`  
		Last Modified: Thu, 07 Feb 2019 18:47:46 GMT  
		Size: 21.3 MB (21307913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8944e5572e137c7d07c62ed40a8ec2022facde817cac48ca89973e639285121`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db031859308f938981b2753e8eb89004e81efec2b0c33bea1638dd7cd42f3f82`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:2912cc69dbe4d59280c1b1ea3ebcbd5ea9ebf868296f0bfe5bbb1c82321a748d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90971260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb044f9a820c4d7815fa8c144dd2b8b0a261448b9890b86b6339459fadf4e4c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 04:03:20 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 04:03:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 04:03:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Thu, 07 Feb 2019 04:03:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 04:03:40 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 04:03:41 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 04:03:42 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 04:03:43 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 04:03:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 04:03:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bfe6e78050fade1fa7c6f4d82df12fdc8670f2723f28ad95ccef913478461a`  
		Last Modified: Thu, 07 Feb 2019 04:04:42 GMT  
		Size: 12.7 MB (12713355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6647f03f8673626d7bf053dad848d0c784d480ab034a71edfc3b6080c3141a47`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 2.8 KB (2778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27752d70d9125eb3f9a05d59e5133d7d1e0ae74fca2d31035649473f80efa95b`  
		Last Modified: Thu, 07 Feb 2019 04:04:50 GMT  
		Size: 21.3 MB (21307716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a0e292d09aca636d79d2709a6db3450c173025a3ac8338a9bf3326b3b2f535`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19616771f7ee2eac4f7e33223741c0f1254f7dce52383c7e515f3cee4771f1c4`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1-alpine`

```console
$ docker pull kapacitor@sha256:6b09d7d6fca9b086ed90110af47794f26cb16969d0b13c7ab000aa6fd7429e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:f6c42d7a994c75db42846ecead8d4b9db0eb2ad698fd084db8c3978b33e903b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19115336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b472927e2e40587b89cf1eb9a60d9f984f898ce52e57be43b3412a91c4a3f4db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 22:39:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 30 Jan 2019 22:39:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 22:39:36 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 30 Jan 2019 22:39:36 GMT
EXPOSE 9092
# Wed, 30 Jan 2019 22:39:36 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 30 Jan 2019 22:39:37 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Wed, 30 Jan 2019 22:39:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 22:39:37 GMT
CMD ["kapacitord"]
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
	-	`sha256:2d69c464ea2d38f1964da95d4ecf3f0eaee46cf6b1fbebc655a5b32ed273787d`  
		Last Modified: Wed, 30 Jan 2019 22:40:15 GMT  
		Size: 16.6 MB (16598560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ab504680e82e9511184f047bbdc90e93b1ca4737efa5274dc462cf7ceed1ac`  
		Last Modified: Wed, 30 Jan 2019 22:40:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6d9b5a487e3e94e4b64cd3c34c343b507382709d4a5a12703d2a0b58530179`  
		Last Modified: Wed, 30 Jan 2019 22:40:09 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4-alpine`

```console
$ docker pull kapacitor@sha256:6b09d7d6fca9b086ed90110af47794f26cb16969d0b13c7ab000aa6fd7429e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:f6c42d7a994c75db42846ecead8d4b9db0eb2ad698fd084db8c3978b33e903b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19115336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b472927e2e40587b89cf1eb9a60d9f984f898ce52e57be43b3412a91c4a3f4db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 22:39:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 30 Jan 2019 22:39:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 22:39:36 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 30 Jan 2019 22:39:36 GMT
EXPOSE 9092
# Wed, 30 Jan 2019 22:39:36 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 30 Jan 2019 22:39:37 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Wed, 30 Jan 2019 22:39:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 22:39:37 GMT
CMD ["kapacitord"]
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
	-	`sha256:2d69c464ea2d38f1964da95d4ecf3f0eaee46cf6b1fbebc655a5b32ed273787d`  
		Last Modified: Wed, 30 Jan 2019 22:40:15 GMT  
		Size: 16.6 MB (16598560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ab504680e82e9511184f047bbdc90e93b1ca4737efa5274dc462cf7ceed1ac`  
		Last Modified: Wed, 30 Jan 2019 22:40:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6d9b5a487e3e94e4b64cd3c34c343b507382709d4a5a12703d2a0b58530179`  
		Last Modified: Wed, 30 Jan 2019 22:40:09 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5`

```console
$ docker pull kapacitor@sha256:4790325d0ad1eb63dd1af64821a7946b732925667586180761a4f972136e5da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5` - linux; amd64

```console
$ docker pull kapacitor@sha256:4a5186aff983a5d61a98f13930d8e927890249bc35db4e1d447c783c5efe31af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106392541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342795d8c8228d068769f5b6b28c895e1b54e356d5d8a1f525421bf7f0a6e04d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 07:19:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 07:19:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 07:20:05 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 07:20:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 07:20:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 07:20:10 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 07:20:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 07:20:11 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 07:20:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 07:20:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d138bd5f9c511b7d3d87bf9d2efe8032314c3a8bd9282177769eca1b255564b`  
		Last Modified: Tue, 05 Mar 2019 07:20:32 GMT  
		Size: 13.0 MB (13006470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a69d2982bca9af83c40a1b86823fbe4e0cf99037a10b61b005cb1510d98d2`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349aa30351548672b06049155d2aa497b85a064d291fb4135ab3cab333583995`  
		Last Modified: Tue, 05 Mar 2019 07:20:47 GMT  
		Size: 32.9 MB (32918208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55aff04d8535e8c823e30b4b956aa49b06bb35eb856f1490ee93c5bd33c45a51`  
		Last Modified: Tue, 05 Mar 2019 07:20:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b1456bf9d7acbbd69979808672423630bb15291017661ff84fc1ec41795bce`  
		Last Modified: Tue, 05 Mar 2019 07:20:42 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:0487ae28344b82871703f6b2e3987ce1508bbb0d5e6a1e05d23bb6cddeafe35e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99576154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bc72957fc38f81152b743aad147d9aab472f7d4e4f3ee2c052d9ff254e9792`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:46:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 18:47:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:47:19 GMT
ENV KAPACITOR_VERSION=1.5.2
# Thu, 07 Feb 2019 18:47:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:47:26 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 18:47:26 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 18:47:27 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 18:47:27 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 18:47:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:47:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f55849b582b60135f6725ab4436efc6fb92a783aba3d11c10a1d1011ec34eb0`  
		Last Modified: Thu, 07 Feb 2019 18:47:40 GMT  
		Size: 13.2 MB (13187077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862d5f69dfa2a35cab67bcd1cb0980773839e8c5f436803bb68a66fb3e0035b`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0595c5ec52c6a470c5f62998b26b7ba204c77714563d4376f7d616a60533c9`  
		Last Modified: Thu, 07 Feb 2019 18:48:05 GMT  
		Size: 30.9 MB (30899675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95522768130cda6ebd57230699ae85e3151314dc69f26de61639c0c8649cfd78`  
		Last Modified: Thu, 07 Feb 2019 18:47:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8ddea1a9b16de0f214717f25ea48ad03a52cdab3955aa2d13db7473335f68b`  
		Last Modified: Thu, 07 Feb 2019 18:47:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:ef2ead4d8cba912a7944d591ebf517f13bce7a17fb4f5af97504f4db58fb6f2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100563069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320c665509181d680c86d1d20d918fb29407b30cac7daa21d7fe99844077dc54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 04:03:20 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 04:03:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 04:03:51 GMT
ENV KAPACITOR_VERSION=1.5.2
# Thu, 07 Feb 2019 04:04:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 04:04:09 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 04:04:10 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 04:04:11 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 04:04:13 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 04:04:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 04:04:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bfe6e78050fade1fa7c6f4d82df12fdc8670f2723f28ad95ccef913478461a`  
		Last Modified: Thu, 07 Feb 2019 04:04:42 GMT  
		Size: 12.7 MB (12713355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6647f03f8673626d7bf053dad848d0c784d480ab034a71edfc3b6080c3141a47`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 2.8 KB (2778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8660040caa979c4d2d461d88b568c365e58d44914754c8b544d7f638460b8a`  
		Last Modified: Thu, 07 Feb 2019 04:05:08 GMT  
		Size: 30.9 MB (30899526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdb2fc0dcf4e3aac2301e0a4af03ea2fc3c145b8c8075888399aea21f4bfc2a`  
		Last Modified: Thu, 07 Feb 2019 04:04:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb39ee60f734f7688d580e6a654c2a1f98e17100e1bc62b82f64947e9a926625`  
		Last Modified: Thu, 07 Feb 2019 04:04:58 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.2`

```console
$ docker pull kapacitor@sha256:4790325d0ad1eb63dd1af64821a7946b732925667586180761a4f972136e5da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5.2` - linux; amd64

```console
$ docker pull kapacitor@sha256:4a5186aff983a5d61a98f13930d8e927890249bc35db4e1d447c783c5efe31af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106392541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342795d8c8228d068769f5b6b28c895e1b54e356d5d8a1f525421bf7f0a6e04d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 07:19:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 07:19:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 07:20:05 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 07:20:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 07:20:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 07:20:10 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 07:20:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 07:20:11 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 07:20:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 07:20:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d138bd5f9c511b7d3d87bf9d2efe8032314c3a8bd9282177769eca1b255564b`  
		Last Modified: Tue, 05 Mar 2019 07:20:32 GMT  
		Size: 13.0 MB (13006470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a69d2982bca9af83c40a1b86823fbe4e0cf99037a10b61b005cb1510d98d2`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349aa30351548672b06049155d2aa497b85a064d291fb4135ab3cab333583995`  
		Last Modified: Tue, 05 Mar 2019 07:20:47 GMT  
		Size: 32.9 MB (32918208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55aff04d8535e8c823e30b4b956aa49b06bb35eb856f1490ee93c5bd33c45a51`  
		Last Modified: Tue, 05 Mar 2019 07:20:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b1456bf9d7acbbd69979808672423630bb15291017661ff84fc1ec41795bce`  
		Last Modified: Tue, 05 Mar 2019 07:20:42 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.2` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:0487ae28344b82871703f6b2e3987ce1508bbb0d5e6a1e05d23bb6cddeafe35e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99576154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bc72957fc38f81152b743aad147d9aab472f7d4e4f3ee2c052d9ff254e9792`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:46:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 18:47:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:47:19 GMT
ENV KAPACITOR_VERSION=1.5.2
# Thu, 07 Feb 2019 18:47:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:47:26 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 18:47:26 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 18:47:27 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 18:47:27 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 18:47:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:47:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f55849b582b60135f6725ab4436efc6fb92a783aba3d11c10a1d1011ec34eb0`  
		Last Modified: Thu, 07 Feb 2019 18:47:40 GMT  
		Size: 13.2 MB (13187077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862d5f69dfa2a35cab67bcd1cb0980773839e8c5f436803bb68a66fb3e0035b`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0595c5ec52c6a470c5f62998b26b7ba204c77714563d4376f7d616a60533c9`  
		Last Modified: Thu, 07 Feb 2019 18:48:05 GMT  
		Size: 30.9 MB (30899675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95522768130cda6ebd57230699ae85e3151314dc69f26de61639c0c8649cfd78`  
		Last Modified: Thu, 07 Feb 2019 18:47:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8ddea1a9b16de0f214717f25ea48ad03a52cdab3955aa2d13db7473335f68b`  
		Last Modified: Thu, 07 Feb 2019 18:47:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.2` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:ef2ead4d8cba912a7944d591ebf517f13bce7a17fb4f5af97504f4db58fb6f2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100563069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320c665509181d680c86d1d20d918fb29407b30cac7daa21d7fe99844077dc54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 04:03:20 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 04:03:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 04:03:51 GMT
ENV KAPACITOR_VERSION=1.5.2
# Thu, 07 Feb 2019 04:04:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 04:04:09 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 04:04:10 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 04:04:11 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 04:04:13 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 04:04:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 04:04:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bfe6e78050fade1fa7c6f4d82df12fdc8670f2723f28ad95ccef913478461a`  
		Last Modified: Thu, 07 Feb 2019 04:04:42 GMT  
		Size: 12.7 MB (12713355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6647f03f8673626d7bf053dad848d0c784d480ab034a71edfc3b6080c3141a47`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 2.8 KB (2778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8660040caa979c4d2d461d88b568c365e58d44914754c8b544d7f638460b8a`  
		Last Modified: Thu, 07 Feb 2019 04:05:08 GMT  
		Size: 30.9 MB (30899526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdb2fc0dcf4e3aac2301e0a4af03ea2fc3c145b8c8075888399aea21f4bfc2a`  
		Last Modified: Thu, 07 Feb 2019 04:04:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb39ee60f734f7688d580e6a654c2a1f98e17100e1bc62b82f64947e9a926625`  
		Last Modified: Thu, 07 Feb 2019 04:04:58 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.2-alpine`

```console
$ docker pull kapacitor@sha256:0b64b2ed8c542f8611f6664e04764231a311b6c605eb0a05170ddd04838e7c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.5.2-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:43fbbdca76ee70195f7efef7622b70b87994668b51765966f008e5699d2bfebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21952924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57fa5bd1762448715724c9b736e12c9400b6d01b9c7884058be3b2adb866a19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 22:39:46 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 30 Jan 2019 22:39:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 22:39:53 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 30 Jan 2019 22:39:53 GMT
EXPOSE 9092
# Wed, 30 Jan 2019 22:39:53 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 30 Jan 2019 22:39:54 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Wed, 30 Jan 2019 22:39:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 22:39:54 GMT
CMD ["kapacitord"]
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
	-	`sha256:c9a8ca19733779c1acad64955ca6331867e5ad2e36376f02465323d9ea592054`  
		Last Modified: Wed, 30 Jan 2019 22:40:28 GMT  
		Size: 19.4 MB (19436148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306ef3952ca9c6a438a877f6f36192b08c47548fc170ca4e8ca6b8780631091`  
		Last Modified: Wed, 30 Jan 2019 22:40:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ef725b9e846fc8ac2ab75431f39ebe0a994ffe1e5d1e366332ee47b824f2a4`  
		Last Modified: Wed, 30 Jan 2019 22:40:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5-alpine`

```console
$ docker pull kapacitor@sha256:0b64b2ed8c542f8611f6664e04764231a311b6c605eb0a05170ddd04838e7c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.5-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:43fbbdca76ee70195f7efef7622b70b87994668b51765966f008e5699d2bfebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21952924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57fa5bd1762448715724c9b736e12c9400b6d01b9c7884058be3b2adb866a19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 22:39:46 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 30 Jan 2019 22:39:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 22:39:53 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 30 Jan 2019 22:39:53 GMT
EXPOSE 9092
# Wed, 30 Jan 2019 22:39:53 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 30 Jan 2019 22:39:54 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Wed, 30 Jan 2019 22:39:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 22:39:54 GMT
CMD ["kapacitord"]
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
	-	`sha256:c9a8ca19733779c1acad64955ca6331867e5ad2e36376f02465323d9ea592054`  
		Last Modified: Wed, 30 Jan 2019 22:40:28 GMT  
		Size: 19.4 MB (19436148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306ef3952ca9c6a438a877f6f36192b08c47548fc170ca4e8ca6b8780631091`  
		Last Modified: Wed, 30 Jan 2019 22:40:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ef725b9e846fc8ac2ab75431f39ebe0a994ffe1e5d1e366332ee47b824f2a4`  
		Last Modified: Wed, 30 Jan 2019 22:40:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:0b64b2ed8c542f8611f6664e04764231a311b6c605eb0a05170ddd04838e7c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:43fbbdca76ee70195f7efef7622b70b87994668b51765966f008e5699d2bfebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21952924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57fa5bd1762448715724c9b736e12c9400b6d01b9c7884058be3b2adb866a19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 22:39:46 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 30 Jan 2019 22:39:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 22:39:53 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 30 Jan 2019 22:39:53 GMT
EXPOSE 9092
# Wed, 30 Jan 2019 22:39:53 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 30 Jan 2019 22:39:54 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Wed, 30 Jan 2019 22:39:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 22:39:54 GMT
CMD ["kapacitord"]
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
	-	`sha256:c9a8ca19733779c1acad64955ca6331867e5ad2e36376f02465323d9ea592054`  
		Last Modified: Wed, 30 Jan 2019 22:40:28 GMT  
		Size: 19.4 MB (19436148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306ef3952ca9c6a438a877f6f36192b08c47548fc170ca4e8ca6b8780631091`  
		Last Modified: Wed, 30 Jan 2019 22:40:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ef725b9e846fc8ac2ab75431f39ebe0a994ffe1e5d1e366332ee47b824f2a4`  
		Last Modified: Wed, 30 Jan 2019 22:40:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:4790325d0ad1eb63dd1af64821a7946b732925667586180761a4f972136e5da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:4a5186aff983a5d61a98f13930d8e927890249bc35db4e1d447c783c5efe31af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106392541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342795d8c8228d068769f5b6b28c895e1b54e356d5d8a1f525421bf7f0a6e04d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 07:19:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 07:19:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 07:20:05 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 07:20:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 07:20:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 07:20:10 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 07:20:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 07:20:11 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 07:20:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 07:20:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d138bd5f9c511b7d3d87bf9d2efe8032314c3a8bd9282177769eca1b255564b`  
		Last Modified: Tue, 05 Mar 2019 07:20:32 GMT  
		Size: 13.0 MB (13006470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a69d2982bca9af83c40a1b86823fbe4e0cf99037a10b61b005cb1510d98d2`  
		Last Modified: Tue, 05 Mar 2019 07:20:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349aa30351548672b06049155d2aa497b85a064d291fb4135ab3cab333583995`  
		Last Modified: Tue, 05 Mar 2019 07:20:47 GMT  
		Size: 32.9 MB (32918208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55aff04d8535e8c823e30b4b956aa49b06bb35eb856f1490ee93c5bd33c45a51`  
		Last Modified: Tue, 05 Mar 2019 07:20:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b1456bf9d7acbbd69979808672423630bb15291017661ff84fc1ec41795bce`  
		Last Modified: Tue, 05 Mar 2019 07:20:42 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:0487ae28344b82871703f6b2e3987ce1508bbb0d5e6a1e05d23bb6cddeafe35e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99576154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bc72957fc38f81152b743aad147d9aab472f7d4e4f3ee2c052d9ff254e9792`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:46:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 18:47:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:47:19 GMT
ENV KAPACITOR_VERSION=1.5.2
# Thu, 07 Feb 2019 18:47:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:47:26 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 18:47:26 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 18:47:27 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 18:47:27 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 18:47:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:47:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f55849b582b60135f6725ab4436efc6fb92a783aba3d11c10a1d1011ec34eb0`  
		Last Modified: Thu, 07 Feb 2019 18:47:40 GMT  
		Size: 13.2 MB (13187077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d862d5f69dfa2a35cab67bcd1cb0980773839e8c5f436803bb68a66fb3e0035b`  
		Last Modified: Thu, 07 Feb 2019 18:47:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0595c5ec52c6a470c5f62998b26b7ba204c77714563d4376f7d616a60533c9`  
		Last Modified: Thu, 07 Feb 2019 18:48:05 GMT  
		Size: 30.9 MB (30899675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95522768130cda6ebd57230699ae85e3151314dc69f26de61639c0c8649cfd78`  
		Last Modified: Thu, 07 Feb 2019 18:47:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8ddea1a9b16de0f214717f25ea48ad03a52cdab3955aa2d13db7473335f68b`  
		Last Modified: Thu, 07 Feb 2019 18:47:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:ef2ead4d8cba912a7944d591ebf517f13bce7a17fb4f5af97504f4db58fb6f2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100563069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320c665509181d680c86d1d20d918fb29407b30cac7daa21d7fe99844077dc54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 04:03:20 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 07 Feb 2019 04:03:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 04:03:51 GMT
ENV KAPACITOR_VERSION=1.5.2
# Thu, 07 Feb 2019 04:04:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 04:04:09 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Thu, 07 Feb 2019 04:04:10 GMT
EXPOSE 9092
# Thu, 07 Feb 2019 04:04:11 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 07 Feb 2019 04:04:13 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Thu, 07 Feb 2019 04:04:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 04:04:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bfe6e78050fade1fa7c6f4d82df12fdc8670f2723f28ad95ccef913478461a`  
		Last Modified: Thu, 07 Feb 2019 04:04:42 GMT  
		Size: 12.7 MB (12713355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6647f03f8673626d7bf053dad848d0c784d480ab034a71edfc3b6080c3141a47`  
		Last Modified: Thu, 07 Feb 2019 04:04:37 GMT  
		Size: 2.8 KB (2778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8660040caa979c4d2d461d88b568c365e58d44914754c8b544d7f638460b8a`  
		Last Modified: Thu, 07 Feb 2019 04:05:08 GMT  
		Size: 30.9 MB (30899526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdb2fc0dcf4e3aac2301e0a4af03ea2fc3c145b8c8075888399aea21f4bfc2a`  
		Last Modified: Thu, 07 Feb 2019 04:04:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb39ee60f734f7688d580e6a654c2a1f98e17100e1bc62b82f64947e9a926625`  
		Last Modified: Thu, 07 Feb 2019 04:04:58 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
