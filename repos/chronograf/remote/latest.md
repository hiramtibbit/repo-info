## `chronograf:latest`

```console
$ docker pull chronograf@sha256:37faa39900d11f6669968d0cb22eb15955b6742e780194c8836f89a0a9628a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:df490318efca256636e858576425cbdfbeaa632f2f8a70a6dea9a292ff5c02b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55231624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0e29e163f0871cc78573b71af7dacfdf5a021feb01ac195ce079ea52be0969`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:00:36 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 08:01:23 GMT
ENV CHRONOGRAF_VERSION=1.7.7
# Wed, 06 Feb 2019 08:01:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 08:01:34 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 06 Feb 2019 08:01:34 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Feb 2019 08:01:34 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 08:01:35 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Feb 2019 08:01:35 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 06 Feb 2019 08:01:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 08:01:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2795026d0e0a142498b1b5acec207430a31420677b70e3c34fb5af0ff017924d`  
		Last Modified: Wed, 06 Feb 2019 08:01:52 GMT  
		Size: 4.5 MB (4503314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd096badf77619294045aff41207ae1f7c2f7cb5285b7ef186b8735b5a89c7b4`  
		Last Modified: Wed, 06 Feb 2019 08:02:17 GMT  
		Size: 28.2 MB (28203623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95aee082422d25d9f702c055f84e5ddaf12a17f091d36f5cdee3b453e6dbcce`  
		Last Modified: Wed, 06 Feb 2019 08:02:10 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4bae98fcf24905285bbdcfd949280d71e49aa89fd3064161f3daed48429e18`  
		Last Modified: Wed, 06 Feb 2019 08:02:10 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a3d753b96d8366153189d0aae10a470887f51c02773cf5ce5f25eaef5eec23`  
		Last Modified: Wed, 06 Feb 2019 08:02:10 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:bf66bccbb87ca5517a9db5b5167b3856660196cd6e412760e1344c3d1b1b149e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49208705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1f98dd24c8fdd9ff0f0567c15b73828a88d655272f90b0dcd060ed6f1a6875`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:39:24 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 13:40:36 GMT
ENV CHRONOGRAF_VERSION=1.7.7
# Wed, 23 Jan 2019 13:40:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:40:59 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 23 Jan 2019 13:41:00 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 23 Jan 2019 13:41:01 GMT
EXPOSE 8888
# Wed, 23 Jan 2019 13:41:02 GMT
VOLUME [/var/lib/chronograf]
# Wed, 23 Jan 2019 13:41:03 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 23 Jan 2019 13:41:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 13:41:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9981a86fcee260f6bfbb3a0d9059611c7fce3c0d4bec7c50f520390c2e7fec`  
		Last Modified: Wed, 23 Jan 2019 13:41:18 GMT  
		Size: 3.9 MB (3877152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c34a46234c254392dc5b2e59442cc4ad5dcfaa7a15e8dbf4103c5e0bdcb491`  
		Last Modified: Wed, 23 Jan 2019 13:41:53 GMT  
		Size: 26.0 MB (26016870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7526f7b65374105e5851800412f9c7e9fc7f1ed3821344ab183615744b4bb8e`  
		Last Modified: Wed, 23 Jan 2019 13:41:45 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470885ee860633b06473756ca3567dd5e25d374e5c3db1347b52301cc1221202`  
		Last Modified: Wed, 23 Jan 2019 13:41:45 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae3d1d9fdb663b51a5607002150b2e198403b69bff3622c5646694eb097c93e`  
		Last Modified: Wed, 23 Jan 2019 13:41:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:4fd8defacf850095fa7f4c53145092668c1c106885484ece0f9664c599e7d507
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50673862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0cb912318f55821e071369eadaca73b4cb55bbe4ae7ca13b58972c8c91b4f72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:24:36 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 25 Jan 2019 03:32:19 GMT
ENV CHRONOGRAF_VERSION=1.7.7
# Fri, 25 Jan 2019 03:33:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 03:33:17 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 25 Jan 2019 03:33:20 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 25 Jan 2019 03:33:22 GMT
EXPOSE 8888
# Fri, 25 Jan 2019 03:33:27 GMT
VOLUME [/var/lib/chronograf]
# Fri, 25 Jan 2019 03:33:29 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 25 Jan 2019 03:33:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 25 Jan 2019 03:33:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9215b1f69eddec820efeba1ebbe53b560a7ff31579badd76c789642689d4e746`  
		Last Modified: Fri, 25 Jan 2019 03:34:00 GMT  
		Size: 4.1 MB (4078602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32f1dd6c87961ef10b967db247fb9002c38c10140283adbfda6c79343c9a0e4`  
		Last Modified: Fri, 25 Jan 2019 03:34:57 GMT  
		Size: 26.2 MB (26220671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45966ff55e279a78612f53418633c5843819bafb1d1008bdcb2935d435c26ad`  
		Last Modified: Fri, 25 Jan 2019 03:34:49 GMT  
		Size: 12.3 KB (12255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58508fe20ec46a938373e1f7c25a2e2d6d98ec1b29095ffea4acf5161c0337e9`  
		Last Modified: Fri, 25 Jan 2019 03:34:49 GMT  
		Size: 11.9 KB (11915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32bfefcd551f3403acf5477e2f3f1173aecc7605965fd5ebc40264f48de4658`  
		Last Modified: Fri, 25 Jan 2019 03:34:49 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
