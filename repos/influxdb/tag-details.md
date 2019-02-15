<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.5`](#influxdb15)
-	[`influxdb:1.5.4`](#influxdb154)
-	[`influxdb:1.5.4-alpine`](#influxdb154-alpine)
-	[`influxdb:1.5.4-data`](#influxdb154-data)
-	[`influxdb:1.5.4-data-alpine`](#influxdb154-data-alpine)
-	[`influxdb:1.5.4-meta`](#influxdb154-meta)
-	[`influxdb:1.5.4-meta-alpine`](#influxdb154-meta-alpine)
-	[`influxdb:1.5-alpine`](#influxdb15-alpine)
-	[`influxdb:1.5-data`](#influxdb15-data)
-	[`influxdb:1.5-data-alpine`](#influxdb15-data-alpine)
-	[`influxdb:1.5-meta`](#influxdb15-meta)
-	[`influxdb:1.5-meta-alpine`](#influxdb15-meta-alpine)
-	[`influxdb:1.6`](#influxdb16)
-	[`influxdb:1.6.5`](#influxdb165)
-	[`influxdb:1.6.5-alpine`](#influxdb165-alpine)
-	[`influxdb:1.6.5-data`](#influxdb165-data)
-	[`influxdb:1.6.5-data-alpine`](#influxdb165-data-alpine)
-	[`influxdb:1.6.5-meta`](#influxdb165-meta)
-	[`influxdb:1.6.5-meta-alpine`](#influxdb165-meta-alpine)
-	[`influxdb:1.6-alpine`](#influxdb16-alpine)
-	[`influxdb:1.6-data`](#influxdb16-data)
-	[`influxdb:1.6-data-alpine`](#influxdb16-data-alpine)
-	[`influxdb:1.6-meta`](#influxdb16-meta)
-	[`influxdb:1.6-meta-alpine`](#influxdb16-meta-alpine)
-	[`influxdb:1.7`](#influxdb17)
-	[`influxdb:1.7.4`](#influxdb174)
-	[`influxdb:1.7.4-alpine`](#influxdb174-alpine)
-	[`influxdb:1.7.4-data`](#influxdb174-data)
-	[`influxdb:1.7.4-data-alpine`](#influxdb174-data-alpine)
-	[`influxdb:1.7.4-meta`](#influxdb174-meta)
-	[`influxdb:1.7.4-meta-alpine`](#influxdb174-meta-alpine)
-	[`influxdb:1.7-alpine`](#influxdb17-alpine)
-	[`influxdb:1.7-data`](#influxdb17-data)
-	[`influxdb:1.7-data-alpine`](#influxdb17-data-alpine)
-	[`influxdb:1.7-meta`](#influxdb17-meta)
-	[`influxdb:1.7-meta-alpine`](#influxdb17-meta-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.5`

```console
$ docker pull influxdb@sha256:1e0ad91a516634e36f9805db4d0fa293e871c3f99b18f0f719aee6e6df912797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:b3480de524ffef3d454200e17b08a1e91e32c2f9cd4fde45835ca79d068daf3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83498751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcb89c161202af9b66032e38545e6437398f539726c8e31a57ebcbd4d294aed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:29:51 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 06 Feb 2019 13:29:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 13:29:56 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 13:29:56 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 13:29:56 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:29:56 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:29:57 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 13:29:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:29:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d9271e21bcf9425865c2f2e32fe996aa90ff3d90be115d33db1b49d1eabb31`  
		Last Modified: Wed, 06 Feb 2019 13:32:50 GMT  
		Size: 23.0 MB (23028942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b931d852d68cee694b72571405916fcdd4e9cfaba08f471ca8e5c9d45fafde69`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311876204ab184e1ea30549736b7d84b1ed362a948eaf3a5a1af8d12417adfe0`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f3bee94f1a4dc02098f213811a280f8034db9013ec60f87264c9c808fe01be`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:5cddab07a1ef86d75e7dd55dbc21ce5783fde70867718aee6a515196364402fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77149413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e979e7d3a8066971a08550c3c5e80fa0150d5d22d7d4db353d47ae6c4604a903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:42:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:42:27 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 07 Feb 2019 18:42:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:42:33 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Feb 2019 18:42:33 GMT
EXPOSE 8086
# Thu, 07 Feb 2019 18:42:34 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Feb 2019 18:42:34 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:42:35 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Feb 2019 18:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:42:36 GMT
CMD ["influxd"]
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
	-	`sha256:245e9e91f20bb0058b0a7952421c0eb03ec0963f7a380b587772683280eb41ef`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 2.8 KB (2803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a406202e52c8257178f0968f5684445a812f1b628e36b8430b5609f175fd6a5d`  
		Last Modified: Thu, 07 Feb 2019 18:43:24 GMT  
		Size: 21.7 MB (21658863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f51ccf0384da21291430df40d833814b2656723214a24397d8e6b9553a363`  
		Last Modified: Thu, 07 Feb 2019 18:43:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0a30270cc0c92fb3f13696ec83965a2d04ab2810831d731b6ef507db18dba`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27a4fc3fc6c06c9014c5dd4a5141d6c4ca3faa9bd7f89660186f34909397a23`  
		Last Modified: Thu, 07 Feb 2019 18:43:15 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:39e8d0fc812a7d5cdfe92167c160c858688a76db0cfff983fe16ec4e437be82a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77961722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17e8bcce1117ab9218a0d5406a6d334a3c5da5238e364a20954a8e28aac45e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 11:28:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 11:28:46 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 06 Feb 2019 11:28:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 11:28:57 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 11:28:59 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 11:29:00 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 11:29:01 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 11:29:02 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 11:29:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 11:29:04 GMT
CMD ["influxd"]
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
	-	`sha256:3720259dfbf293c48a02736734adc1834847efc6717ed7047a3d5a49c975882f`  
		Last Modified: Wed, 06 Feb 2019 11:30:12 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5689faf2b70ef156dcb6cccfd562c3c64d97e8d6b789c5fe0386acd43c4cb4`  
		Last Modified: Wed, 06 Feb 2019 11:30:16 GMT  
		Size: 21.0 MB (21010394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5951a372fddb1251a7668d299f70b694ee3fc2e952f7ff8ec971bd5897e2`  
		Last Modified: Wed, 06 Feb 2019 11:30:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4e904a0d3134da158e50916fce1fb040c0c8e28ac63d72ccb835de96c8468c`  
		Last Modified: Wed, 06 Feb 2019 11:30:07 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8629f48d8a11eda194c467e85fcf3fd7f8156656bbb855cec61bad177bfd3e22`  
		Last Modified: Wed, 06 Feb 2019 11:30:07 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4`

```console
$ docker pull influxdb@sha256:1e0ad91a516634e36f9805db4d0fa293e871c3f99b18f0f719aee6e6df912797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5.4` - linux; amd64

```console
$ docker pull influxdb@sha256:b3480de524ffef3d454200e17b08a1e91e32c2f9cd4fde45835ca79d068daf3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83498751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcb89c161202af9b66032e38545e6437398f539726c8e31a57ebcbd4d294aed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:29:51 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 06 Feb 2019 13:29:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 13:29:56 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 13:29:56 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 13:29:56 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:29:56 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:29:57 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 13:29:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:29:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d9271e21bcf9425865c2f2e32fe996aa90ff3d90be115d33db1b49d1eabb31`  
		Last Modified: Wed, 06 Feb 2019 13:32:50 GMT  
		Size: 23.0 MB (23028942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b931d852d68cee694b72571405916fcdd4e9cfaba08f471ca8e5c9d45fafde69`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311876204ab184e1ea30549736b7d84b1ed362a948eaf3a5a1af8d12417adfe0`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f3bee94f1a4dc02098f213811a280f8034db9013ec60f87264c9c808fe01be`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:5cddab07a1ef86d75e7dd55dbc21ce5783fde70867718aee6a515196364402fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77149413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e979e7d3a8066971a08550c3c5e80fa0150d5d22d7d4db353d47ae6c4604a903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:42:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:42:27 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 07 Feb 2019 18:42:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:42:33 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Feb 2019 18:42:33 GMT
EXPOSE 8086
# Thu, 07 Feb 2019 18:42:34 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Feb 2019 18:42:34 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:42:35 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Feb 2019 18:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:42:36 GMT
CMD ["influxd"]
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
	-	`sha256:245e9e91f20bb0058b0a7952421c0eb03ec0963f7a380b587772683280eb41ef`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 2.8 KB (2803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a406202e52c8257178f0968f5684445a812f1b628e36b8430b5609f175fd6a5d`  
		Last Modified: Thu, 07 Feb 2019 18:43:24 GMT  
		Size: 21.7 MB (21658863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f51ccf0384da21291430df40d833814b2656723214a24397d8e6b9553a363`  
		Last Modified: Thu, 07 Feb 2019 18:43:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce0a30270cc0c92fb3f13696ec83965a2d04ab2810831d731b6ef507db18dba`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27a4fc3fc6c06c9014c5dd4a5141d6c4ca3faa9bd7f89660186f34909397a23`  
		Last Modified: Thu, 07 Feb 2019 18:43:15 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:39e8d0fc812a7d5cdfe92167c160c858688a76db0cfff983fe16ec4e437be82a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77961722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17e8bcce1117ab9218a0d5406a6d334a3c5da5238e364a20954a8e28aac45e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 11:28:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 11:28:46 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 06 Feb 2019 11:28:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 11:28:57 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 11:28:59 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 11:29:00 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 11:29:01 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 11:29:02 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 11:29:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 11:29:04 GMT
CMD ["influxd"]
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
	-	`sha256:3720259dfbf293c48a02736734adc1834847efc6717ed7047a3d5a49c975882f`  
		Last Modified: Wed, 06 Feb 2019 11:30:12 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5689faf2b70ef156dcb6cccfd562c3c64d97e8d6b789c5fe0386acd43c4cb4`  
		Last Modified: Wed, 06 Feb 2019 11:30:16 GMT  
		Size: 21.0 MB (21010394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5951a372fddb1251a7668d299f70b694ee3fc2e952f7ff8ec971bd5897e2`  
		Last Modified: Wed, 06 Feb 2019 11:30:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4e904a0d3134da158e50916fce1fb040c0c8e28ac63d72ccb835de96c8468c`  
		Last Modified: Wed, 06 Feb 2019 11:30:07 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8629f48d8a11eda194c467e85fcf3fd7f8156656bbb855cec61bad177bfd3e22`  
		Last Modified: Wed, 06 Feb 2019 11:30:07 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-alpine`

```console
$ docker pull influxdb@sha256:91844a285da18da5116bc3c93a8bd675e708686472f05ef258baa9f72e2c1c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e69fad94ea51c96803bc6a194f6ae4cf15e6b2b6e46bb0447a107f80c5f4e860
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (26995274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9c0993fd42309ed78f6d340f56c760a772cb7b99ddd273da9c60ddb5893a8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:45:46 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 31 Jan 2019 01:45:51 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:45:52 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:45:52 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:45:52 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:45:52 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:45:52 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:45:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:45:53 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2253912453b0c5d8862e939f813bc53e69f413330e9f0cac694a12bba2be17`  
		Last Modified: Thu, 31 Jan 2019 01:48:08 GMT  
		Size: 22.9 MB (22916057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8993bc81c791770a69275f08dbd333112e089d2c191b6869024d87be43966621`  
		Last Modified: Thu, 31 Jan 2019 01:48:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8655dcb8e1b1b778aff1a85ffed05f9d3d4499b1c15def7519c58d299173e7`  
		Last Modified: Thu, 31 Jan 2019 01:48:03 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574128dc820b05db747a8ceec534025e00e42763cb2decff8ce4919b4b923041`  
		Last Modified: Thu, 31 Jan 2019 01:48:01 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data`

```console
$ docker pull influxdb@sha256:81622e317113f7be5fcf6da13506f90056139c73e227f22163002b677c0ac0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:6b80ff5dfe8b9884772f0242bb5c15c5f327695319d3527ee50dc853c8a4aa94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84252514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241101b310d6eb7caf4991b55012d24c573ae7b1174ea6e44a589285933d3cb1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:05 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 06 Feb 2019 13:30:10 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 06 Feb 2019 13:30:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 13:30:10 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 13:30:11 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:30:11 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:30:11 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 13:30:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:30:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0f24624ae6b99bedc42ca75321ba1bb4d5050dc54d59c223f995772295be06`  
		Last Modified: Wed, 06 Feb 2019 13:33:03 GMT  
		Size: 23.8 MB (23782646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75358cea0735d9e2f10e91371412cfde15c1f6dd73f18c555001e67d8fe0e724`  
		Last Modified: Wed, 06 Feb 2019 13:32:55 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6fdf1149617c7d552c8c8b0fcd2bb021fa82efc9252d29029a812605b5b34c`  
		Last Modified: Wed, 06 Feb 2019 13:32:55 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74da5d64e2164cd019635ac7529ac8f09bc6364708abe8f4577b4f6813fb26b`  
		Last Modified: Wed, 06 Feb 2019 13:32:55 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data-alpine`

```console
$ docker pull influxdb@sha256:15edb87384782c72ae38cdb0951eb22e7aa912da23a9c9e9d4894c11464d67d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7a12f412aea5d38b60088a98552c6dc6be50328e2440c03597f22cc907d65b22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b25b3ab8dd5f28a95027a00cbadaaaedb178d5353bd17597c0771140980455`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:45:58 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 31 Jan 2019 01:46:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:46:04 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:46:04 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:46:05 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:46:05 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:46:05 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:46:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:46:05 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20a9996e62fceea03211f645a3529ce9aee26f357578ee1d05cf088c809cde5`  
		Last Modified: Thu, 31 Jan 2019 01:48:23 GMT  
		Size: 23.7 MB (23669530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7a3457a4d38767758aceef51924b803ffa8a6373e821db23aa1e8646b66f2d`  
		Last Modified: Thu, 31 Jan 2019 01:48:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462ee0c89bfc95a94ab8fdf966920e155fe9405f10be6833569a2b804e724acb`  
		Last Modified: Thu, 31 Jan 2019 01:48:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9013c3a3a6127df7a63396c892f11ee05cc293efbf24ef10ffbd724e60047920`  
		Last Modified: Thu, 31 Jan 2019 01:48:15 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta`

```console
$ docker pull influxdb@sha256:d3a28c686cabb480a2a130c18653a30066c33327619d09970308089014a8f921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:42b2bc6d419a70c710089b8607f4832adfd583117cd34e334a734d6a7a16cb03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71662813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d93e151367ca2564ac3c0358d21d20aad7d3d3495a8e8683ec229bbab67b60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:05 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 06 Feb 2019 13:30:24 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 06 Feb 2019 13:30:25 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 06 Feb 2019 13:30:25 GMT
EXPOSE 8091
# Wed, 06 Feb 2019 13:30:25 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:30:25 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:30:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:30:26 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9c662d5890b52ba22511f89ec97c66037d8f01c847abfdc91c59148f60750a`  
		Last Modified: Wed, 06 Feb 2019 13:33:11 GMT  
		Size: 11.2 MB (11194037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba030a768b9daa7bed4acf847b2c66710f2cd212aa1ee382c04cba57c80edf8`  
		Last Modified: Wed, 06 Feb 2019 13:33:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99768f2e59099c32f532bc4feb7932b2bc0896b4e2906cf67bf6f240eff3fae1`  
		Last Modified: Wed, 06 Feb 2019 13:33:08 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta-alpine`

```console
$ docker pull influxdb@sha256:7c4a1d48a421c107d34d0095935833562d4ffaaea465ece0d7ac2096753c5255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:ca4bed5fa3ad3bb8b5450ec964c329f76131992ae1b2ec3ca260a401a0ece42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15229236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88af2b1b533e1e1f298350690f1330ba0c44bcbbb09b0e0b232ab11113e0ebe3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:45:58 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 31 Jan 2019 01:46:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:46:18 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 31 Jan 2019 01:46:18 GMT
EXPOSE 8091
# Thu, 31 Jan 2019 01:46:18 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:46:19 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:46:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:46:19 GMT
CMD ["influxd-meta"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35993201b1736ec9181fcb2439ba2c47e961691fd32f9094918558abe88066`  
		Last Modified: Thu, 31 Jan 2019 01:48:30 GMT  
		Size: 11.2 MB (11151050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fde389d2a3281d24a9efee5715e0d5296c28bb36860a75f8f2ca0684e118bb`  
		Last Modified: Thu, 31 Jan 2019 01:48:27 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d644b5da8bc778d090ebb24322f972ceb015dc1d57420e3c6c04a9249ad12fe`  
		Last Modified: Thu, 31 Jan 2019 01:48:28 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:91844a285da18da5116bc3c93a8bd675e708686472f05ef258baa9f72e2c1c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e69fad94ea51c96803bc6a194f6ae4cf15e6b2b6e46bb0447a107f80c5f4e860
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (26995274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9c0993fd42309ed78f6d340f56c760a772cb7b99ddd273da9c60ddb5893a8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:45:46 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 31 Jan 2019 01:45:51 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:45:52 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:45:52 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:45:52 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:45:52 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:45:52 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:45:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:45:53 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2253912453b0c5d8862e939f813bc53e69f413330e9f0cac694a12bba2be17`  
		Last Modified: Thu, 31 Jan 2019 01:48:08 GMT  
		Size: 22.9 MB (22916057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8993bc81c791770a69275f08dbd333112e089d2c191b6869024d87be43966621`  
		Last Modified: Thu, 31 Jan 2019 01:48:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8655dcb8e1b1b778aff1a85ffed05f9d3d4499b1c15def7519c58d299173e7`  
		Last Modified: Thu, 31 Jan 2019 01:48:03 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574128dc820b05db747a8ceec534025e00e42763cb2decff8ce4919b4b923041`  
		Last Modified: Thu, 31 Jan 2019 01:48:01 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:81622e317113f7be5fcf6da13506f90056139c73e227f22163002b677c0ac0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:6b80ff5dfe8b9884772f0242bb5c15c5f327695319d3527ee50dc853c8a4aa94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84252514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241101b310d6eb7caf4991b55012d24c573ae7b1174ea6e44a589285933d3cb1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:05 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 06 Feb 2019 13:30:10 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 06 Feb 2019 13:30:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 13:30:10 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 13:30:11 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:30:11 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:30:11 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 13:30:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:30:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0f24624ae6b99bedc42ca75321ba1bb4d5050dc54d59c223f995772295be06`  
		Last Modified: Wed, 06 Feb 2019 13:33:03 GMT  
		Size: 23.8 MB (23782646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75358cea0735d9e2f10e91371412cfde15c1f6dd73f18c555001e67d8fe0e724`  
		Last Modified: Wed, 06 Feb 2019 13:32:55 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6fdf1149617c7d552c8c8b0fcd2bb021fa82efc9252d29029a812605b5b34c`  
		Last Modified: Wed, 06 Feb 2019 13:32:55 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74da5d64e2164cd019635ac7529ac8f09bc6364708abe8f4577b4f6813fb26b`  
		Last Modified: Wed, 06 Feb 2019 13:32:55 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:15edb87384782c72ae38cdb0951eb22e7aa912da23a9c9e9d4894c11464d67d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7a12f412aea5d38b60088a98552c6dc6be50328e2440c03597f22cc907d65b22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b25b3ab8dd5f28a95027a00cbadaaaedb178d5353bd17597c0771140980455`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:45:58 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 31 Jan 2019 01:46:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:46:04 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:46:04 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:46:05 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:46:05 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:46:05 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:46:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:46:05 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20a9996e62fceea03211f645a3529ce9aee26f357578ee1d05cf088c809cde5`  
		Last Modified: Thu, 31 Jan 2019 01:48:23 GMT  
		Size: 23.7 MB (23669530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7a3457a4d38767758aceef51924b803ffa8a6373e821db23aa1e8646b66f2d`  
		Last Modified: Thu, 31 Jan 2019 01:48:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462ee0c89bfc95a94ab8fdf966920e155fe9405f10be6833569a2b804e724acb`  
		Last Modified: Thu, 31 Jan 2019 01:48:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9013c3a3a6127df7a63396c892f11ee05cc293efbf24ef10ffbd724e60047920`  
		Last Modified: Thu, 31 Jan 2019 01:48:15 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:d3a28c686cabb480a2a130c18653a30066c33327619d09970308089014a8f921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:42b2bc6d419a70c710089b8607f4832adfd583117cd34e334a734d6a7a16cb03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71662813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d93e151367ca2564ac3c0358d21d20aad7d3d3495a8e8683ec229bbab67b60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:05 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 06 Feb 2019 13:30:24 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 06 Feb 2019 13:30:25 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 06 Feb 2019 13:30:25 GMT
EXPOSE 8091
# Wed, 06 Feb 2019 13:30:25 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:30:25 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:30:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:30:26 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9c662d5890b52ba22511f89ec97c66037d8f01c847abfdc91c59148f60750a`  
		Last Modified: Wed, 06 Feb 2019 13:33:11 GMT  
		Size: 11.2 MB (11194037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba030a768b9daa7bed4acf847b2c66710f2cd212aa1ee382c04cba57c80edf8`  
		Last Modified: Wed, 06 Feb 2019 13:33:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99768f2e59099c32f532bc4feb7932b2bc0896b4e2906cf67bf6f240eff3fae1`  
		Last Modified: Wed, 06 Feb 2019 13:33:08 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:7c4a1d48a421c107d34d0095935833562d4ffaaea465ece0d7ac2096753c5255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:ca4bed5fa3ad3bb8b5450ec964c329f76131992ae1b2ec3ca260a401a0ece42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15229236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88af2b1b533e1e1f298350690f1330ba0c44bcbbb09b0e0b232ab11113e0ebe3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:45:58 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 31 Jan 2019 01:46:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:46:18 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 31 Jan 2019 01:46:18 GMT
EXPOSE 8091
# Thu, 31 Jan 2019 01:46:18 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:46:19 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:46:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:46:19 GMT
CMD ["influxd-meta"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35993201b1736ec9181fcb2439ba2c47e961691fd32f9094918558abe88066`  
		Last Modified: Thu, 31 Jan 2019 01:48:30 GMT  
		Size: 11.2 MB (11151050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fde389d2a3281d24a9efee5715e0d5296c28bb36860a75f8f2ca0684e118bb`  
		Last Modified: Thu, 31 Jan 2019 01:48:27 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d644b5da8bc778d090ebb24322f972ceb015dc1d57420e3c6c04a9249ad12fe`  
		Last Modified: Thu, 31 Jan 2019 01:48:28 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6`

```console
$ docker pull influxdb@sha256:00eaf3380f905248c7c87c4502b1b0f89a1200403b7e9932439b61abace19237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6` - linux; amd64

```console
$ docker pull influxdb@sha256:225dcb735f3d6a72df127711c4cfbd045421a82ba358deb9292708d83fc7ebf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85778014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266a3b27276f967e7a9c03dc4b39463d93bcbae4948e271b995fe4ec0bc49b36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:34 GMT
ENV INFLUXDB_VERSION=1.6.5
# Wed, 06 Feb 2019 13:30:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 13:30:39 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 13:30:40 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 13:30:40 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:30:40 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:30:40 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 13:30:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:30:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ac080a8041dddeb55a8ee1b339bb2d161a904f6587a260033bd17515a79d0e`  
		Last Modified: Wed, 06 Feb 2019 13:33:24 GMT  
		Size: 25.3 MB (25308206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92de0f6371d085ec66e5dc3eb4204ea1193879a7f611a6e75e539ed352569e58`  
		Last Modified: Wed, 06 Feb 2019 13:33:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ab6f555e491eb07989b62771961c2be6031dfadb59ff7cd32478c7a69368a4`  
		Last Modified: Wed, 06 Feb 2019 13:33:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc30c0a913948017e32bd4d88e551df0993f232d9ae402d2b5234b562c2b0b5f`  
		Last Modified: Wed, 06 Feb 2019 13:33:16 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:53f9d4ab83c5d52220cdd65fcb17d0a34a701521468490599c5ed57301176788
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79838137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02366a69a977b5b980d2fea779534105a64544dd72c50b792e76b1f2981a5cc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:42:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:42:41 GMT
ENV INFLUXDB_VERSION=1.6.5
# Thu, 07 Feb 2019 18:42:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:42:47 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Feb 2019 18:42:47 GMT
EXPOSE 8086
# Thu, 07 Feb 2019 18:42:48 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Feb 2019 18:42:48 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:42:49 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Feb 2019 18:42:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:42:50 GMT
CMD ["influxd"]
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
	-	`sha256:245e9e91f20bb0058b0a7952421c0eb03ec0963f7a380b587772683280eb41ef`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 2.8 KB (2803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0972cbe92222c77d853ab79c4d49c0fcd3deb3160190dbc4ea0000b4894e25`  
		Last Modified: Thu, 07 Feb 2019 18:43:38 GMT  
		Size: 24.3 MB (24347587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cafaf350e2d945d17fb5832ee35f740b774b450d9ad93c739a632fa081d12c`  
		Last Modified: Thu, 07 Feb 2019 18:43:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352a1dfa2468e38ebdcdd0f0406a24be42851669a6ce49153852dacb4155ca66`  
		Last Modified: Thu, 07 Feb 2019 18:43:29 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf6dd8ba60d736e5bedffd6908f1e1801adde956b1157535f9cdf5c889844d2`  
		Last Modified: Thu, 07 Feb 2019 18:43:29 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:163632284325e06e85d7674bfba94610d71f378d5cf67ea6d0036aa63b4433df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80619175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73172d1cda3535acbd74202194020dcc4b3c5cb60f2da6d128d1e66445e1db3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 11:28:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 11:29:09 GMT
ENV INFLUXDB_VERSION=1.6.5
# Wed, 06 Feb 2019 11:29:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 11:29:23 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 11:29:24 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 11:29:25 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 11:29:26 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 11:29:26 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 11:29:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 11:29:30 GMT
CMD ["influxd"]
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
	-	`sha256:3720259dfbf293c48a02736734adc1834847efc6717ed7047a3d5a49c975882f`  
		Last Modified: Wed, 06 Feb 2019 11:30:12 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13acf3f56db5f03369560303ec7287f0d795544b7e063988980578e2ff86325`  
		Last Modified: Wed, 06 Feb 2019 11:30:35 GMT  
		Size: 23.7 MB (23667844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577d8a97f0321d59e6d89a283584975cf2ffd01ebb315072051b9c1b567548d9`  
		Last Modified: Wed, 06 Feb 2019 11:30:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbc9cd78b3047036a9e9f381d25378aea7cd11b42a8a3f2a1b54310939f7f9c`  
		Last Modified: Wed, 06 Feb 2019 11:30:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d6dd1e589c2fa61c2be385c5f5bad11903b09858d7831eb6de5bef1e4c944b`  
		Last Modified: Wed, 06 Feb 2019 11:30:25 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5`

```console
$ docker pull influxdb@sha256:00eaf3380f905248c7c87c4502b1b0f89a1200403b7e9932439b61abace19237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6.5` - linux; amd64

```console
$ docker pull influxdb@sha256:225dcb735f3d6a72df127711c4cfbd045421a82ba358deb9292708d83fc7ebf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85778014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266a3b27276f967e7a9c03dc4b39463d93bcbae4948e271b995fe4ec0bc49b36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:34 GMT
ENV INFLUXDB_VERSION=1.6.5
# Wed, 06 Feb 2019 13:30:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 13:30:39 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 13:30:40 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 13:30:40 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:30:40 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:30:40 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 13:30:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:30:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ac080a8041dddeb55a8ee1b339bb2d161a904f6587a260033bd17515a79d0e`  
		Last Modified: Wed, 06 Feb 2019 13:33:24 GMT  
		Size: 25.3 MB (25308206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92de0f6371d085ec66e5dc3eb4204ea1193879a7f611a6e75e539ed352569e58`  
		Last Modified: Wed, 06 Feb 2019 13:33:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ab6f555e491eb07989b62771961c2be6031dfadb59ff7cd32478c7a69368a4`  
		Last Modified: Wed, 06 Feb 2019 13:33:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc30c0a913948017e32bd4d88e551df0993f232d9ae402d2b5234b562c2b0b5f`  
		Last Modified: Wed, 06 Feb 2019 13:33:16 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:53f9d4ab83c5d52220cdd65fcb17d0a34a701521468490599c5ed57301176788
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79838137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02366a69a977b5b980d2fea779534105a64544dd72c50b792e76b1f2981a5cc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:42:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:42:41 GMT
ENV INFLUXDB_VERSION=1.6.5
# Thu, 07 Feb 2019 18:42:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:42:47 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Feb 2019 18:42:47 GMT
EXPOSE 8086
# Thu, 07 Feb 2019 18:42:48 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Feb 2019 18:42:48 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:42:49 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Feb 2019 18:42:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:42:50 GMT
CMD ["influxd"]
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
	-	`sha256:245e9e91f20bb0058b0a7952421c0eb03ec0963f7a380b587772683280eb41ef`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 2.8 KB (2803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0972cbe92222c77d853ab79c4d49c0fcd3deb3160190dbc4ea0000b4894e25`  
		Last Modified: Thu, 07 Feb 2019 18:43:38 GMT  
		Size: 24.3 MB (24347587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cafaf350e2d945d17fb5832ee35f740b774b450d9ad93c739a632fa081d12c`  
		Last Modified: Thu, 07 Feb 2019 18:43:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352a1dfa2468e38ebdcdd0f0406a24be42851669a6ce49153852dacb4155ca66`  
		Last Modified: Thu, 07 Feb 2019 18:43:29 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf6dd8ba60d736e5bedffd6908f1e1801adde956b1157535f9cdf5c889844d2`  
		Last Modified: Thu, 07 Feb 2019 18:43:29 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:163632284325e06e85d7674bfba94610d71f378d5cf67ea6d0036aa63b4433df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80619175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73172d1cda3535acbd74202194020dcc4b3c5cb60f2da6d128d1e66445e1db3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 11:28:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 11:29:09 GMT
ENV INFLUXDB_VERSION=1.6.5
# Wed, 06 Feb 2019 11:29:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 11:29:23 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 11:29:24 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 11:29:25 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 11:29:26 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 11:29:26 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 11:29:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 11:29:30 GMT
CMD ["influxd"]
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
	-	`sha256:3720259dfbf293c48a02736734adc1834847efc6717ed7047a3d5a49c975882f`  
		Last Modified: Wed, 06 Feb 2019 11:30:12 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13acf3f56db5f03369560303ec7287f0d795544b7e063988980578e2ff86325`  
		Last Modified: Wed, 06 Feb 2019 11:30:35 GMT  
		Size: 23.7 MB (23667844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577d8a97f0321d59e6d89a283584975cf2ffd01ebb315072051b9c1b567548d9`  
		Last Modified: Wed, 06 Feb 2019 11:30:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbc9cd78b3047036a9e9f381d25378aea7cd11b42a8a3f2a1b54310939f7f9c`  
		Last Modified: Wed, 06 Feb 2019 11:30:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d6dd1e589c2fa61c2be385c5f5bad11903b09858d7831eb6de5bef1e4c944b`  
		Last Modified: Wed, 06 Feb 2019 11:30:25 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-alpine`

```console
$ docker pull influxdb@sha256:c190179cace7e4543ce16b9f4ea954ec35b4c6a272c5085bd667af8876ab1698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:17c839cf8dcf342b943ca5fd36ef4f6d457fede49b461f958f1c872165570226
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3073aa1dd59325bfcee76128aed2e1d67ad674286ee108380e33aab466eebcd2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:46:27 GMT
ENV INFLUXDB_VERSION=1.6.5
# Thu, 31 Jan 2019 01:46:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:46:36 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:46:36 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:46:36 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:46:36 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:46:37 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:46:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:46:37 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ffef1962fabbdf1371ff230872f9d27ae37a5df3a9c4dae60d48eb65b3f874`  
		Last Modified: Thu, 31 Jan 2019 01:48:42 GMT  
		Size: 25.2 MB (25188239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d383886be42083e25d604aed982f1d21284c1f5538007b67142dd3e4b2335429`  
		Last Modified: Thu, 31 Jan 2019 01:48:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8055235c64be05656df0fda0119e26d45e566893e273baa6257547b0441905`  
		Last Modified: Thu, 31 Jan 2019 01:48:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2aacd2ea2ec2981f176a5964007c356881f6e79fccf1293ebc2a9e9bfe865b`  
		Last Modified: Thu, 31 Jan 2019 01:48:35 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-data`

```console
$ docker pull influxdb@sha256:2bb76a86228d81da39ba25247c1e079a29548170f52c18d68681d1049d4d6033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:733349ba3d5260a97e1e2bb45a64d1638e53a9010f6d750407a99e46c69e5c1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87043594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a9a7418e37835839eeddca5f82585b11f19bdeb8671cb5773e79c634a73f91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:48 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 06 Feb 2019 13:30:54 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 06 Feb 2019 13:30:54 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 13:30:55 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 13:30:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:30:55 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:30:56 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 13:30:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:30:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03573a10d6835b1edcda2e71c14df6f93230cb2ec2b3d689fcfcc6dad0689d14`  
		Last Modified: Wed, 06 Feb 2019 13:33:39 GMT  
		Size: 26.6 MB (26573727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c63241aef8d66a95e28f218a97b9ddb35fb81bf9ba2be57ed2ec615d5d9d559`  
		Last Modified: Wed, 06 Feb 2019 13:33:29 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91023019bf102c759d3617847bc8d8dc5d8a31e737d8c7d3488c52f8214038c7`  
		Last Modified: Wed, 06 Feb 2019 13:33:29 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7244d904ce5154b4d96fa560f2ca6221b38bcdbac1e7d57a64196e6bb3fdd3ed`  
		Last Modified: Wed, 06 Feb 2019 13:33:29 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-data-alpine`

```console
$ docker pull influxdb@sha256:9608a36d1eb9a24f32a3fd05ded375017de8a3fa37152db5363eb81069bb4c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c6a99ccd1331ba2d9044a0065b1061df586b296bfaddf36176a66926dc5401c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30531273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601a7306fd988faa54dd46df0fb3f859b32269f7b697a2ab0e7bfcf03f93491f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:46:46 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 31 Jan 2019 01:46:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:46:55 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:46:55 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:46:55 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:46:55 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:46:56 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:46:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:46:56 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c74ad35b0be8dc7f8e6b655af1be24f41074f8fca95817fd5545c20334320dc`  
		Last Modified: Thu, 31 Jan 2019 01:48:55 GMT  
		Size: 26.5 MB (26451997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04721f2a9556f508b20aebc08c9bbfc6ba2dda21e344731e3aba53a0ce0f99be`  
		Last Modified: Thu, 31 Jan 2019 01:48:47 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf5c19a5a8162b2ebac1296db67d9183935898649f0ab6c6ab8bd0fb8158a80`  
		Last Modified: Thu, 31 Jan 2019 01:48:47 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bd721e9d813e822a756d9eb4f04f55f60bcaa0627d63d2429dbbd8c2fb6fe`  
		Last Modified: Thu, 31 Jan 2019 01:48:47 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-meta`

```console
$ docker pull influxdb@sha256:c80d373f52a2fe30fc4058905a833eee49b3be8a7186bc4e4e0c9d9968c9e825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:6a4aaaa186dcc00c2884bc4957f5e8f2171b4ff8d5f7af8239c88c066173b314
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6afdf749c01a899350f388fdc4489de9f9a5c69d3c8ec41e5bee3fd92b1c2e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:48 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 06 Feb 2019 13:31:08 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 06 Feb 2019 13:31:08 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 06 Feb 2019 13:31:09 GMT
EXPOSE 8091
# Wed, 06 Feb 2019 13:31:09 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:31:10 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:31:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:31:11 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bb910d5aeec2e6cdf50471df47a1122a0eeb003081996080621b2a55968d0d`  
		Last Modified: Wed, 06 Feb 2019 13:33:48 GMT  
		Size: 12.5 MB (12547564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd09429b6b7a201e79ef94e55a200d1ce1000b94efb3e03913fd282f38da3876`  
		Last Modified: Wed, 06 Feb 2019 13:33:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb2639698ae0e2744097e15cf58f987951b4a07b55f91d5bf9d436f62d02244`  
		Last Modified: Wed, 06 Feb 2019 13:33:44 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-meta-alpine`

```console
$ docker pull influxdb@sha256:f85b44785d27707159c97cf26c646fef29ad6e4542dd62cb3e2f3a911581a8ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:215690fa1a610b7d6d664ad6fcb7b5451ca356f3404d348376dbee7a3e1d756b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16582799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cea359b38c3770d708cdca3a0c274ce907940366f65b367acfab0ad4d144712`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:46:46 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 31 Jan 2019 01:47:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:47:11 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 31 Jan 2019 01:47:11 GMT
EXPOSE 8091
# Thu, 31 Jan 2019 01:47:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:47:12 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:47:12 GMT
CMD ["influxd-meta"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299d6a37126e7686cf8cc2c997ad0cb8d3018da7d8158cf7512f0de714b5655`  
		Last Modified: Thu, 31 Jan 2019 01:49:04 GMT  
		Size: 12.5 MB (12504613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee11f422e3141d227463497d910c537088bc1083ea73b7b1361748ce308271eb`  
		Last Modified: Thu, 31 Jan 2019 01:49:01 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0499f10b12757f66e3f28839b2810e8448e2b9115714eafc433762d89dd1ea`  
		Last Modified: Thu, 31 Jan 2019 01:49:00 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-alpine`

```console
$ docker pull influxdb@sha256:c190179cace7e4543ce16b9f4ea954ec35b4c6a272c5085bd667af8876ab1698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:17c839cf8dcf342b943ca5fd36ef4f6d457fede49b461f958f1c872165570226
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3073aa1dd59325bfcee76128aed2e1d67ad674286ee108380e33aab466eebcd2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:46:27 GMT
ENV INFLUXDB_VERSION=1.6.5
# Thu, 31 Jan 2019 01:46:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:46:36 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:46:36 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:46:36 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:46:36 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:46:37 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:46:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:46:37 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ffef1962fabbdf1371ff230872f9d27ae37a5df3a9c4dae60d48eb65b3f874`  
		Last Modified: Thu, 31 Jan 2019 01:48:42 GMT  
		Size: 25.2 MB (25188239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d383886be42083e25d604aed982f1d21284c1f5538007b67142dd3e4b2335429`  
		Last Modified: Thu, 31 Jan 2019 01:48:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8055235c64be05656df0fda0119e26d45e566893e273baa6257547b0441905`  
		Last Modified: Thu, 31 Jan 2019 01:48:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2aacd2ea2ec2981f176a5964007c356881f6e79fccf1293ebc2a9e9bfe865b`  
		Last Modified: Thu, 31 Jan 2019 01:48:35 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data`

```console
$ docker pull influxdb@sha256:2bb76a86228d81da39ba25247c1e079a29548170f52c18d68681d1049d4d6033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data` - linux; amd64

```console
$ docker pull influxdb@sha256:733349ba3d5260a97e1e2bb45a64d1638e53a9010f6d750407a99e46c69e5c1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87043594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a9a7418e37835839eeddca5f82585b11f19bdeb8671cb5773e79c634a73f91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:48 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 06 Feb 2019 13:30:54 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 06 Feb 2019 13:30:54 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 13:30:55 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 13:30:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:30:55 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:30:56 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 13:30:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:30:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03573a10d6835b1edcda2e71c14df6f93230cb2ec2b3d689fcfcc6dad0689d14`  
		Last Modified: Wed, 06 Feb 2019 13:33:39 GMT  
		Size: 26.6 MB (26573727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c63241aef8d66a95e28f218a97b9ddb35fb81bf9ba2be57ed2ec615d5d9d559`  
		Last Modified: Wed, 06 Feb 2019 13:33:29 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91023019bf102c759d3617847bc8d8dc5d8a31e737d8c7d3488c52f8214038c7`  
		Last Modified: Wed, 06 Feb 2019 13:33:29 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7244d904ce5154b4d96fa560f2ca6221b38bcdbac1e7d57a64196e6bb3fdd3ed`  
		Last Modified: Wed, 06 Feb 2019 13:33:29 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data-alpine`

```console
$ docker pull influxdb@sha256:9608a36d1eb9a24f32a3fd05ded375017de8a3fa37152db5363eb81069bb4c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c6a99ccd1331ba2d9044a0065b1061df586b296bfaddf36176a66926dc5401c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30531273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601a7306fd988faa54dd46df0fb3f859b32269f7b697a2ab0e7bfcf03f93491f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:46:46 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 31 Jan 2019 01:46:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:46:55 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:46:55 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:46:55 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:46:55 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:46:56 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:46:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:46:56 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c74ad35b0be8dc7f8e6b655af1be24f41074f8fca95817fd5545c20334320dc`  
		Last Modified: Thu, 31 Jan 2019 01:48:55 GMT  
		Size: 26.5 MB (26451997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04721f2a9556f508b20aebc08c9bbfc6ba2dda21e344731e3aba53a0ce0f99be`  
		Last Modified: Thu, 31 Jan 2019 01:48:47 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf5c19a5a8162b2ebac1296db67d9183935898649f0ab6c6ab8bd0fb8158a80`  
		Last Modified: Thu, 31 Jan 2019 01:48:47 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bd721e9d813e822a756d9eb4f04f55f60bcaa0627d63d2429dbbd8c2fb6fe`  
		Last Modified: Thu, 31 Jan 2019 01:48:47 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta`

```console
$ docker pull influxdb@sha256:c80d373f52a2fe30fc4058905a833eee49b3be8a7186bc4e4e0c9d9968c9e825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:6a4aaaa186dcc00c2884bc4957f5e8f2171b4ff8d5f7af8239c88c066173b314
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6afdf749c01a899350f388fdc4489de9f9a5c69d3c8ec41e5bee3fd92b1c2e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 13:30:48 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 06 Feb 2019 13:31:08 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 06 Feb 2019 13:31:08 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 06 Feb 2019 13:31:09 GMT
EXPOSE 8091
# Wed, 06 Feb 2019 13:31:09 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 13:31:10 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 06 Feb 2019 13:31:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 13:31:11 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bb910d5aeec2e6cdf50471df47a1122a0eeb003081996080621b2a55968d0d`  
		Last Modified: Wed, 06 Feb 2019 13:33:48 GMT  
		Size: 12.5 MB (12547564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd09429b6b7a201e79ef94e55a200d1ce1000b94efb3e03913fd282f38da3876`  
		Last Modified: Wed, 06 Feb 2019 13:33:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb2639698ae0e2744097e15cf58f987951b4a07b55f91d5bf9d436f62d02244`  
		Last Modified: Wed, 06 Feb 2019 13:33:44 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta-alpine`

```console
$ docker pull influxdb@sha256:f85b44785d27707159c97cf26c646fef29ad6e4542dd62cb3e2f3a911581a8ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:215690fa1a610b7d6d664ad6fcb7b5451ca356f3404d348376dbee7a3e1d756b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16582799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cea359b38c3770d708cdca3a0c274ce907940366f65b367acfab0ad4d144712`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:46:46 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 31 Jan 2019 01:47:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:47:11 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 31 Jan 2019 01:47:11 GMT
EXPOSE 8091
# Thu, 31 Jan 2019 01:47:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:47:12 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:47:12 GMT
CMD ["influxd-meta"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299d6a37126e7686cf8cc2c997ad0cb8d3018da7d8158cf7512f0de714b5655`  
		Last Modified: Thu, 31 Jan 2019 01:49:04 GMT  
		Size: 12.5 MB (12504613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee11f422e3141d227463497d910c537088bc1083ea73b7b1361748ce308271eb`  
		Last Modified: Thu, 31 Jan 2019 01:49:01 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0499f10b12757f66e3f28839b2810e8448e2b9115714eafc433762d89dd1ea`  
		Last Modified: Thu, 31 Jan 2019 01:49:00 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7`

```console
$ docker pull influxdb@sha256:f7faeca821422d26c80a9aa4842d4013acd6dc56863f58f1b72e3bcf04ed09b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7` - linux; amd64

```console
$ docker pull influxdb@sha256:ee3aa655a6dbe0351774b7ef5a9e3b3a37ecf12bc39e524a326f763d8bdfa672
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107683016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ed49eb33b3388c849ec4311a00eddc0ede50dd7f37bd1d448c917a2ea762d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:02 GMT
ENV INFLUXDB_VERSION=1.7.4
# Thu, 14 Feb 2019 23:20:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 14 Feb 2019 23:20:06 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:07 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:07 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:07 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:07 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331d7c452a9412ae28af5d35053a817e3d4346c4cbc351adc4eba7938e1050b6`  
		Last Modified: Thu, 14 Feb 2019 23:21:30 GMT  
		Size: 47.2 MB (47213212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966d95f585c37b8067c05268ff842932b36b26a4f2510da6f7033ff7e9140319`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce84a9b545147c3f97c062dad2ae5ac709f0882c6c8e79894a9b8856282f23c1`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da79ec2329d235eee2c6c33280f116e4ac5c700755433e9e66eca77361a9914`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:78db231a587218e1644d0b3a487c3607ecd51d29dbbff930f4512eff2f0be6b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.8 MB (99838811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655281986d6dc284bd6144886d9786e86fbcea2ca94cecbdde99773c75bad74c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:42:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:42:54 GMT
ENV INFLUXDB_VERSION=1.7.3
# Thu, 07 Feb 2019 18:43:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:43:02 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Feb 2019 18:43:02 GMT
EXPOSE 8086
# Thu, 07 Feb 2019 18:43:03 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Feb 2019 18:43:03 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:43:04 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Feb 2019 18:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:43:04 GMT
CMD ["influxd"]
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
	-	`sha256:245e9e91f20bb0058b0a7952421c0eb03ec0963f7a380b587772683280eb41ef`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 2.8 KB (2803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3ea930689898d621edc0767aa41d44851770c40f83b77330cc11f1d8162919`  
		Last Modified: Thu, 07 Feb 2019 18:43:56 GMT  
		Size: 44.3 MB (44348261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32a2eb4de5b0cc10baf0ddc7cd54710cf63c9f53a766d38b0dfc92994b880b6`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2172c0ef3a6aa63fcfa67038ac37a8b36322369f7160228ac96f2bae37b5b017`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3061eaeaf787b7f161961fcc0b6b9945175dd4fd4ea46a5413dd54301b8ff851`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:2010c43aa6394f566b693d1d5403ba0c78e450caf3cf51b5f96d3a44702d1daf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100605042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a7f7ab693d0357a732cc071a4c9b2596afcc3fe826b20485071797b3ecc149`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 11:28:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Feb 2019 09:46:28 GMT
ENV INFLUXDB_VERSION=1.7.4
# Fri, 15 Feb 2019 09:46:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Feb 2019 09:46:41 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 15 Feb 2019 09:46:41 GMT
EXPOSE 8086
# Fri, 15 Feb 2019 09:46:42 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Feb 2019 09:46:43 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 15 Feb 2019 09:46:43 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 15 Feb 2019 09:46:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Feb 2019 09:46:45 GMT
CMD ["influxd"]
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
	-	`sha256:3720259dfbf293c48a02736734adc1834847efc6717ed7047a3d5a49c975882f`  
		Last Modified: Wed, 06 Feb 2019 11:30:12 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5287e271409f15f0ed2bf0ab650ccc582e549cc9bf1d54f20380941e19738bd6`  
		Last Modified: Fri, 15 Feb 2019 09:47:13 GMT  
		Size: 43.7 MB (43653716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa42fc90dc3a5cfe4eb30282cb599d0270b9579233bde3e01e3aedd88881b63`  
		Last Modified: Fri, 15 Feb 2019 09:46:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd0f69d85794461ca2e113e95e9f260dd939dcfe46968fac134fa5d25dea240`  
		Last Modified: Fri, 15 Feb 2019 09:46:59 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6a50adf44262176b775c2d681f2abaac326534e6bf354be3bceda05cf1dde4`  
		Last Modified: Fri, 15 Feb 2019 09:46:59 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.4`

```console
$ docker pull influxdb@sha256:f7faeca821422d26c80a9aa4842d4013acd6dc56863f58f1b72e3bcf04ed09b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7.4` - linux; amd64

```console
$ docker pull influxdb@sha256:ee3aa655a6dbe0351774b7ef5a9e3b3a37ecf12bc39e524a326f763d8bdfa672
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107683016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ed49eb33b3388c849ec4311a00eddc0ede50dd7f37bd1d448c917a2ea762d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:02 GMT
ENV INFLUXDB_VERSION=1.7.4
# Thu, 14 Feb 2019 23:20:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 14 Feb 2019 23:20:06 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:07 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:07 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:07 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:07 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331d7c452a9412ae28af5d35053a817e3d4346c4cbc351adc4eba7938e1050b6`  
		Last Modified: Thu, 14 Feb 2019 23:21:30 GMT  
		Size: 47.2 MB (47213212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966d95f585c37b8067c05268ff842932b36b26a4f2510da6f7033ff7e9140319`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce84a9b545147c3f97c062dad2ae5ac709f0882c6c8e79894a9b8856282f23c1`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da79ec2329d235eee2c6c33280f116e4ac5c700755433e9e66eca77361a9914`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:78db231a587218e1644d0b3a487c3607ecd51d29dbbff930f4512eff2f0be6b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.8 MB (99838811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655281986d6dc284bd6144886d9786e86fbcea2ca94cecbdde99773c75bad74c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:42:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:42:54 GMT
ENV INFLUXDB_VERSION=1.7.3
# Thu, 07 Feb 2019 18:43:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:43:02 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Feb 2019 18:43:02 GMT
EXPOSE 8086
# Thu, 07 Feb 2019 18:43:03 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Feb 2019 18:43:03 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:43:04 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Feb 2019 18:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:43:04 GMT
CMD ["influxd"]
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
	-	`sha256:245e9e91f20bb0058b0a7952421c0eb03ec0963f7a380b587772683280eb41ef`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 2.8 KB (2803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3ea930689898d621edc0767aa41d44851770c40f83b77330cc11f1d8162919`  
		Last Modified: Thu, 07 Feb 2019 18:43:56 GMT  
		Size: 44.3 MB (44348261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32a2eb4de5b0cc10baf0ddc7cd54710cf63c9f53a766d38b0dfc92994b880b6`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2172c0ef3a6aa63fcfa67038ac37a8b36322369f7160228ac96f2bae37b5b017`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3061eaeaf787b7f161961fcc0b6b9945175dd4fd4ea46a5413dd54301b8ff851`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:2010c43aa6394f566b693d1d5403ba0c78e450caf3cf51b5f96d3a44702d1daf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100605042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a7f7ab693d0357a732cc071a4c9b2596afcc3fe826b20485071797b3ecc149`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 11:28:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Feb 2019 09:46:28 GMT
ENV INFLUXDB_VERSION=1.7.4
# Fri, 15 Feb 2019 09:46:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Feb 2019 09:46:41 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 15 Feb 2019 09:46:41 GMT
EXPOSE 8086
# Fri, 15 Feb 2019 09:46:42 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Feb 2019 09:46:43 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 15 Feb 2019 09:46:43 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 15 Feb 2019 09:46:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Feb 2019 09:46:45 GMT
CMD ["influxd"]
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
	-	`sha256:3720259dfbf293c48a02736734adc1834847efc6717ed7047a3d5a49c975882f`  
		Last Modified: Wed, 06 Feb 2019 11:30:12 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5287e271409f15f0ed2bf0ab650ccc582e549cc9bf1d54f20380941e19738bd6`  
		Last Modified: Fri, 15 Feb 2019 09:47:13 GMT  
		Size: 43.7 MB (43653716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa42fc90dc3a5cfe4eb30282cb599d0270b9579233bde3e01e3aedd88881b63`  
		Last Modified: Fri, 15 Feb 2019 09:46:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd0f69d85794461ca2e113e95e9f260dd939dcfe46968fac134fa5d25dea240`  
		Last Modified: Fri, 15 Feb 2019 09:46:59 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6a50adf44262176b775c2d681f2abaac326534e6bf354be3bceda05cf1dde4`  
		Last Modified: Fri, 15 Feb 2019 09:46:59 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.4-alpine`

```console
$ docker pull influxdb@sha256:b7fb5f7bfe0a9f27c01a6048657bdd6ad88917faed3251491b8b360c28d4c8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:d5f708cdbf901005949258d1941a6d2d98efff394b95b7f596afad9423e4359f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51088118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d65b616889107a9f25bcae5fbc53044a0c764730314c1a2c9837b2d20afcea0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:10 GMT
ENV INFLUXDB_VERSION=1.7.4
# Thu, 14 Feb 2019 23:20:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:18 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:18 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:18 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:18 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:19 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:19 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017fc239616f8c03aa16b98c69bc1c1e6351bf0d25aadeca561207a50cd9d01a`  
		Last Modified: Thu, 14 Feb 2019 23:21:45 GMT  
		Size: 47.0 MB (47008902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bd8d63b6a790a5deac5f49bbe67a2ebbf5e18ac87442a7903b4d53bdda526c`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a672638c2cc2169a27f542cd79299eb54e860cc9bfed27ccc516e8a7b20cc0`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec7eadb139d035976616257027ead3955bf600f32ae744959edfbd250d6363c`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.4-data`

```console
$ docker pull influxdb@sha256:f9d140fa653ed57b003596433915b45a415445f4051b00226659c53fb4e85861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:9266ab509ea102093738a3be42d72542ef20d6c778a81f6f1fdee4edf32333f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95626542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5909d4091535d431659391b2b63efec3127910f6bde1d2ec01767701ef1b24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:22 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 14 Feb 2019 23:20:26 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:27 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:27 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:27 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:27 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6b6b5fb07098155a068f2f70dd69f602dcdc0d547fa620d35a3afd2ed122b5`  
		Last Modified: Thu, 14 Feb 2019 23:22:00 GMT  
		Size: 35.2 MB (35156677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f16aad25f15abbb59a2fb79021b9dfd063de1122e6a75a5d374bc2736403948`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef81f2f79e01d28e2f693b1f576938b518d13022acd670945704f0dad4187d3`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6700babf558cb9a47259a380076a422e87af0437eb3a3abe070f120d49a78b0`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.4-data-alpine`

```console
$ docker pull influxdb@sha256:af56d649fb3800399af8d72f4d0b61e956b76544b52f1d5a1086745ed306a46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:418840436bd9ed3def9b461adf99b57ad83807f68bb55d08db85069abcfed905
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39077520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c05ae8a0571183ba9131dc957c0d44ec21029ca87031fceac35b597ec54a1fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:30 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:37 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:38 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:38 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:38 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:38 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:39 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df68e7614a1ff08422848eb4aa0612b745fc45397f7934e787eecb71252fd1`  
		Last Modified: Thu, 14 Feb 2019 23:22:15 GMT  
		Size: 35.0 MB (34998245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a1b0fdcef0003e548fadf568c2962cdeccbfc0ff4c130cdefc41c4d276b34`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6801b08f507d9358ed67725f25a8dc42f1acbc65ed33a72028fe5f3e6acd7487`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491c2df74e1fdd16ec168af7ff2bb78b3d5da6a5321e735435f6eb5eb82747d9`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.4-meta`

```console
$ docker pull influxdb@sha256:e100092c91d52279adcc1c9af98e428a2a676db94e8c930fc191a8a99855297f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:a1441f0ccaa558bedc1afdb9ae9740359ab73d02181000e3d47889612efed3bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75367162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88c94ef2eaa63d108966fd79430cb95c8625fb848a0fad0284e63ae203da18e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:22 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:43 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 14 Feb 2019 23:20:43 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 14 Feb 2019 23:20:44 GMT
EXPOSE 8091
# Thu, 14 Feb 2019 23:20:44 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:44 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:44 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df3ca88be89e02242ee08849f5486924a9be6b10a4050288012a4a1c4824a6f`  
		Last Modified: Thu, 14 Feb 2019 23:22:23 GMT  
		Size: 14.9 MB (14898389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040fc64304aa2c44786a3d3e02a6c358c9e8af7092ba7b5720756c73e4926c25`  
		Last Modified: Thu, 14 Feb 2019 23:22:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96466c6d7365a40cdd3a8611b523ab8dbb21bb4e4f857f3b788cb0b6f6786b88`  
		Last Modified: Thu, 14 Feb 2019 23:22:20 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.4-meta-alpine`

```console
$ docker pull influxdb@sha256:550d34adbe6cca5e829f9111fe32063716bf0b63d38d42908b414f8459fa684a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:22e43e91576832ca5aaeed865a246fae29d2dee025517beee5e24d917654af6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18931107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a324dc9f6870d483109ac74e35663bb31d78815b58c05aa7fdfcadc7f879ee1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:30 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:53 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 14 Feb 2019 23:20:53 GMT
EXPOSE 8091
# Thu, 14 Feb 2019 23:20:53 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:54 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:54 GMT
CMD ["influxd-meta"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f80e536d678f7a0cd5aee018db6dd02581049fdd498ace946e88835ee4eb1a`  
		Last Modified: Thu, 14 Feb 2019 23:22:31 GMT  
		Size: 14.9 MB (14852921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86690a6b429a42ad5afe6d4689fc9c503a535a54a962132fbb32bcedfb81ee83`  
		Last Modified: Thu, 14 Feb 2019 23:22:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba93f20030e8b4821de9dc3e68189f87d0b484f45eae7a461f187222ed9af0ad`  
		Last Modified: Thu, 14 Feb 2019 23:22:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-alpine`

```console
$ docker pull influxdb@sha256:b7fb5f7bfe0a9f27c01a6048657bdd6ad88917faed3251491b8b360c28d4c8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:d5f708cdbf901005949258d1941a6d2d98efff394b95b7f596afad9423e4359f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51088118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d65b616889107a9f25bcae5fbc53044a0c764730314c1a2c9837b2d20afcea0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:10 GMT
ENV INFLUXDB_VERSION=1.7.4
# Thu, 14 Feb 2019 23:20:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:18 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:18 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:18 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:18 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:19 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:19 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017fc239616f8c03aa16b98c69bc1c1e6351bf0d25aadeca561207a50cd9d01a`  
		Last Modified: Thu, 14 Feb 2019 23:21:45 GMT  
		Size: 47.0 MB (47008902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bd8d63b6a790a5deac5f49bbe67a2ebbf5e18ac87442a7903b4d53bdda526c`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a672638c2cc2169a27f542cd79299eb54e860cc9bfed27ccc516e8a7b20cc0`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec7eadb139d035976616257027ead3955bf600f32ae744959edfbd250d6363c`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-data`

```console
$ docker pull influxdb@sha256:f9d140fa653ed57b003596433915b45a415445f4051b00226659c53fb4e85861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-data` - linux; amd64

```console
$ docker pull influxdb@sha256:9266ab509ea102093738a3be42d72542ef20d6c778a81f6f1fdee4edf32333f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95626542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5909d4091535d431659391b2b63efec3127910f6bde1d2ec01767701ef1b24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:22 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 14 Feb 2019 23:20:26 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:27 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:27 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:27 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:27 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6b6b5fb07098155a068f2f70dd69f602dcdc0d547fa620d35a3afd2ed122b5`  
		Last Modified: Thu, 14 Feb 2019 23:22:00 GMT  
		Size: 35.2 MB (35156677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f16aad25f15abbb59a2fb79021b9dfd063de1122e6a75a5d374bc2736403948`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef81f2f79e01d28e2f693b1f576938b518d13022acd670945704f0dad4187d3`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6700babf558cb9a47259a380076a422e87af0437eb3a3abe070f120d49a78b0`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-data-alpine`

```console
$ docker pull influxdb@sha256:af56d649fb3800399af8d72f4d0b61e956b76544b52f1d5a1086745ed306a46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:418840436bd9ed3def9b461adf99b57ad83807f68bb55d08db85069abcfed905
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39077520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c05ae8a0571183ba9131dc957c0d44ec21029ca87031fceac35b597ec54a1fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:30 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:37 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:38 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:38 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:38 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:38 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:39 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df68e7614a1ff08422848eb4aa0612b745fc45397f7934e787eecb71252fd1`  
		Last Modified: Thu, 14 Feb 2019 23:22:15 GMT  
		Size: 35.0 MB (34998245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a1b0fdcef0003e548fadf568c2962cdeccbfc0ff4c130cdefc41c4d276b34`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6801b08f507d9358ed67725f25a8dc42f1acbc65ed33a72028fe5f3e6acd7487`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491c2df74e1fdd16ec168af7ff2bb78b3d5da6a5321e735435f6eb5eb82747d9`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-meta`

```console
$ docker pull influxdb@sha256:e100092c91d52279adcc1c9af98e428a2a676db94e8c930fc191a8a99855297f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:a1441f0ccaa558bedc1afdb9ae9740359ab73d02181000e3d47889612efed3bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75367162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88c94ef2eaa63d108966fd79430cb95c8625fb848a0fad0284e63ae203da18e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:22 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:43 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 14 Feb 2019 23:20:43 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 14 Feb 2019 23:20:44 GMT
EXPOSE 8091
# Thu, 14 Feb 2019 23:20:44 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:44 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:44 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df3ca88be89e02242ee08849f5486924a9be6b10a4050288012a4a1c4824a6f`  
		Last Modified: Thu, 14 Feb 2019 23:22:23 GMT  
		Size: 14.9 MB (14898389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040fc64304aa2c44786a3d3e02a6c358c9e8af7092ba7b5720756c73e4926c25`  
		Last Modified: Thu, 14 Feb 2019 23:22:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96466c6d7365a40cdd3a8611b523ab8dbb21bb4e4f857f3b788cb0b6f6786b88`  
		Last Modified: Thu, 14 Feb 2019 23:22:20 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-meta-alpine`

```console
$ docker pull influxdb@sha256:550d34adbe6cca5e829f9111fe32063716bf0b63d38d42908b414f8459fa684a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:22e43e91576832ca5aaeed865a246fae29d2dee025517beee5e24d917654af6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18931107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a324dc9f6870d483109ac74e35663bb31d78815b58c05aa7fdfcadc7f879ee1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:30 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:53 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 14 Feb 2019 23:20:53 GMT
EXPOSE 8091
# Thu, 14 Feb 2019 23:20:53 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:54 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:54 GMT
CMD ["influxd-meta"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f80e536d678f7a0cd5aee018db6dd02581049fdd498ace946e88835ee4eb1a`  
		Last Modified: Thu, 14 Feb 2019 23:22:31 GMT  
		Size: 14.9 MB (14852921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86690a6b429a42ad5afe6d4689fc9c503a535a54a962132fbb32bcedfb81ee83`  
		Last Modified: Thu, 14 Feb 2019 23:22:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba93f20030e8b4821de9dc3e68189f87d0b484f45eae7a461f187222ed9af0ad`  
		Last Modified: Thu, 14 Feb 2019 23:22:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:b7fb5f7bfe0a9f27c01a6048657bdd6ad88917faed3251491b8b360c28d4c8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:d5f708cdbf901005949258d1941a6d2d98efff394b95b7f596afad9423e4359f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51088118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d65b616889107a9f25bcae5fbc53044a0c764730314c1a2c9837b2d20afcea0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:10 GMT
ENV INFLUXDB_VERSION=1.7.4
# Thu, 14 Feb 2019 23:20:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:18 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:18 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:18 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:18 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:19 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:19 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017fc239616f8c03aa16b98c69bc1c1e6351bf0d25aadeca561207a50cd9d01a`  
		Last Modified: Thu, 14 Feb 2019 23:21:45 GMT  
		Size: 47.0 MB (47008902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bd8d63b6a790a5deac5f49bbe67a2ebbf5e18ac87442a7903b4d53bdda526c`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a672638c2cc2169a27f542cd79299eb54e860cc9bfed27ccc516e8a7b20cc0`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec7eadb139d035976616257027ead3955bf600f32ae744959edfbd250d6363c`  
		Last Modified: Thu, 14 Feb 2019 23:21:36 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:f9d140fa653ed57b003596433915b45a415445f4051b00226659c53fb4e85861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:9266ab509ea102093738a3be42d72542ef20d6c778a81f6f1fdee4edf32333f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95626542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5909d4091535d431659391b2b63efec3127910f6bde1d2ec01767701ef1b24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:22 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 14 Feb 2019 23:20:26 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:27 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:27 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:27 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:27 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6b6b5fb07098155a068f2f70dd69f602dcdc0d547fa620d35a3afd2ed122b5`  
		Last Modified: Thu, 14 Feb 2019 23:22:00 GMT  
		Size: 35.2 MB (35156677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f16aad25f15abbb59a2fb79021b9dfd063de1122e6a75a5d374bc2736403948`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef81f2f79e01d28e2f693b1f576938b518d13022acd670945704f0dad4187d3`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6700babf558cb9a47259a380076a422e87af0437eb3a3abe070f120d49a78b0`  
		Last Modified: Thu, 14 Feb 2019 23:21:52 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:af56d649fb3800399af8d72f4d0b61e956b76544b52f1d5a1086745ed306a46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:418840436bd9ed3def9b461adf99b57ad83807f68bb55d08db85069abcfed905
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39077520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c05ae8a0571183ba9131dc957c0d44ec21029ca87031fceac35b597ec54a1fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:30 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:37 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:38 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:38 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:38 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:38 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:39 GMT
CMD ["influxd"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df68e7614a1ff08422848eb4aa0612b745fc45397f7934e787eecb71252fd1`  
		Last Modified: Thu, 14 Feb 2019 23:22:15 GMT  
		Size: 35.0 MB (34998245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a1b0fdcef0003e548fadf568c2962cdeccbfc0ff4c130cdefc41c4d276b34`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6801b08f507d9358ed67725f25a8dc42f1acbc65ed33a72028fe5f3e6acd7487`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491c2df74e1fdd16ec168af7ff2bb78b3d5da6a5321e735435f6eb5eb82747d9`  
		Last Modified: Thu, 14 Feb 2019 23:22:05 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:d9f82ce125b681a2e62491d5fce386cfdcbc3f6ca8ac392cc881e7e6f10fb459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:ee3aa655a6dbe0351774b7ef5a9e3b3a37ecf12bc39e524a326f763d8bdfa672
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107683016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ed49eb33b3388c849ec4311a00eddc0ede50dd7f37bd1d448c917a2ea762d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:02 GMT
ENV INFLUXDB_VERSION=1.7.4
# Thu, 14 Feb 2019 23:20:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 14 Feb 2019 23:20:06 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 14 Feb 2019 23:20:07 GMT
EXPOSE 8086
# Thu, 14 Feb 2019 23:20:07 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:07 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:07 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 14 Feb 2019 23:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331d7c452a9412ae28af5d35053a817e3d4346c4cbc351adc4eba7938e1050b6`  
		Last Modified: Thu, 14 Feb 2019 23:21:30 GMT  
		Size: 47.2 MB (47213212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966d95f585c37b8067c05268ff842932b36b26a4f2510da6f7033ff7e9140319`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce84a9b545147c3f97c062dad2ae5ac709f0882c6c8e79894a9b8856282f23c1`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da79ec2329d235eee2c6c33280f116e4ac5c700755433e9e66eca77361a9914`  
		Last Modified: Thu, 14 Feb 2019 23:21:19 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:78db231a587218e1644d0b3a487c3607ecd51d29dbbff930f4512eff2f0be6b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.8 MB (99838811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655281986d6dc284bd6144886d9786e86fbcea2ca94cecbdde99773c75bad74c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:42:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:42:54 GMT
ENV INFLUXDB_VERSION=1.7.3
# Thu, 07 Feb 2019 18:43:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 07 Feb 2019 18:43:02 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Feb 2019 18:43:02 GMT
EXPOSE 8086
# Thu, 07 Feb 2019 18:43:03 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Feb 2019 18:43:03 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:43:04 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Feb 2019 18:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:43:04 GMT
CMD ["influxd"]
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
	-	`sha256:245e9e91f20bb0058b0a7952421c0eb03ec0963f7a380b587772683280eb41ef`  
		Last Modified: Thu, 07 Feb 2019 18:43:16 GMT  
		Size: 2.8 KB (2803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3ea930689898d621edc0767aa41d44851770c40f83b77330cc11f1d8162919`  
		Last Modified: Thu, 07 Feb 2019 18:43:56 GMT  
		Size: 44.3 MB (44348261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32a2eb4de5b0cc10baf0ddc7cd54710cf63c9f53a766d38b0dfc92994b880b6`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2172c0ef3a6aa63fcfa67038ac37a8b36322369f7160228ac96f2bae37b5b017`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3061eaeaf787b7f161961fcc0b6b9945175dd4fd4ea46a5413dd54301b8ff851`  
		Last Modified: Thu, 07 Feb 2019 18:43:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:dc0bf467d2173a3633e4fd0a8518971e20867d217cbe042dea3004060c0b45c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100608929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0168eb78b84ed7c9f0abb9919110b5e6696438276b10bbf5f9f7877bca5563`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 11:28:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 11:29:36 GMT
ENV INFLUXDB_VERSION=1.7.3
# Wed, 06 Feb 2019 11:29:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 06 Feb 2019 11:29:49 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 06 Feb 2019 11:29:50 GMT
EXPOSE 8086
# Wed, 06 Feb 2019 11:29:51 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Feb 2019 11:29:52 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 06 Feb 2019 11:29:52 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 06 Feb 2019 11:29:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 11:29:54 GMT
CMD ["influxd"]
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
	-	`sha256:3720259dfbf293c48a02736734adc1834847efc6717ed7047a3d5a49c975882f`  
		Last Modified: Wed, 06 Feb 2019 11:30:12 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef50525e6193764fd93696bfeec55ebffdd6b277a0abdb4977f44d03c89f8d7b`  
		Last Modified: Wed, 06 Feb 2019 11:30:58 GMT  
		Size: 43.7 MB (43657598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d658bca364c496ca1ca1a9bb1d1c5da4a8e9f5a1f481a0933983024de8f23140`  
		Last Modified: Wed, 06 Feb 2019 11:30:44 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e799764b0117def42de0fb1f997f4bdfd6304e25878499517c02256a85b66a`  
		Last Modified: Wed, 06 Feb 2019 11:30:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b2cd15cb2390bac5fa49d3b4fed683b3ab40ab8c042f0d93f22fc8c349f1e0`  
		Last Modified: Wed, 06 Feb 2019 11:30:44 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:e100092c91d52279adcc1c9af98e428a2a676db94e8c930fc191a8a99855297f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:a1441f0ccaa558bedc1afdb9ae9740359ab73d02181000e3d47889612efed3bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75367162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88c94ef2eaa63d108966fd79430cb95c8625fb848a0fad0284e63ae203da18e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 13:29:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Feb 2019 23:20:22 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:43 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 14 Feb 2019 23:20:43 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 14 Feb 2019 23:20:44 GMT
EXPOSE 8091
# Thu, 14 Feb 2019 23:20:44 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:44 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:44 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980899fb615c4f2e5d22afcef0121b5ce465c55412242943142b711eefb3c28a`  
		Last Modified: Wed, 06 Feb 2019 13:32:42 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df3ca88be89e02242ee08849f5486924a9be6b10a4050288012a4a1c4824a6f`  
		Last Modified: Thu, 14 Feb 2019 23:22:23 GMT  
		Size: 14.9 MB (14898389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040fc64304aa2c44786a3d3e02a6c358c9e8af7092ba7b5720756c73e4926c25`  
		Last Modified: Thu, 14 Feb 2019 23:22:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96466c6d7365a40cdd3a8611b523ab8dbb21bb4e4f857f3b788cb0b6f6786b88`  
		Last Modified: Thu, 14 Feb 2019 23:22:20 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:550d34adbe6cca5e829f9111fe32063716bf0b63d38d42908b414f8459fa684a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:22e43e91576832ca5aaeed865a246fae29d2dee025517beee5e24d917654af6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18931107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a324dc9f6870d483109ac74e35663bb31d78815b58c05aa7fdfcadc7f879ee1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 14 Feb 2019 23:20:30 GMT
ENV INFLUXDB_VERSION=1.7.4-c1.7.4
# Thu, 14 Feb 2019 23:20:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Feb 2019 23:20:53 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 14 Feb 2019 23:20:53 GMT
EXPOSE 8091
# Thu, 14 Feb 2019 23:20:53 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Feb 2019 23:20:54 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 14 Feb 2019 23:20:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Feb 2019 23:20:54 GMT
CMD ["influxd-meta"]
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
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f80e536d678f7a0cd5aee018db6dd02581049fdd498ace946e88835ee4eb1a`  
		Last Modified: Thu, 14 Feb 2019 23:22:31 GMT  
		Size: 14.9 MB (14852921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86690a6b429a42ad5afe6d4689fc9c503a535a54a962132fbb32bcedfb81ee83`  
		Last Modified: Thu, 14 Feb 2019 23:22:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba93f20030e8b4821de9dc3e68189f87d0b484f45eae7a461f187222ed9af0ad`  
		Last Modified: Thu, 14 Feb 2019 23:22:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
