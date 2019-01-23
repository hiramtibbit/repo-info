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
-	[`influxdb:1.7.3`](#influxdb173)
-	[`influxdb:1.7.3-alpine`](#influxdb173-alpine)
-	[`influxdb:1.7-alpine`](#influxdb17-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.5`

```console
$ docker pull influxdb@sha256:f33a8f6c799ffba340c6774a4d1c363451c578e52cbda48b640d76c0538096a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:fa16763ff67eee86f937e1859140cd582314d87a1c0d22dc71e3ce2c8b541d9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83499100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e55f73a632495739aa0f0e9aa7d097a0cbbb12cf2e6d19250d899fe72bcada`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:31:33 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 23 Jan 2019 05:31:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 05:31:37 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:31:37 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:31:37 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:31:37 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:31:37 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:31:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:31:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f70ba69582ad239de814ca51bfe4f71a7f540dcf541b4ba0beb9127bad94bc5`  
		Last Modified: Wed, 23 Jan 2019 05:33:39 GMT  
		Size: 23.0 MB (23028944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8788b86a5776e6340c5966f1df3825b26ec170c2e054a849fc89ec27eaf585c`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5dee4b131a0c001e017f8dce302fe348cade96bae9680f7b841352b6ae64a86`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb68881ab16e92feb640d3b040b1223ef36a23118467506e28197b642ab5c4d`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:40fda6157ca86f24f704ecfd3c4cb131b365edd3c4fee3745f97d255b03429e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77149878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641db9f79224e4dfb8076fc3a57dabc50f54e737a19f40049d89dac94f062f52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:40:14 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:40:14 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 23 Jan 2019 18:40:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 18:40:25 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 18:40:26 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 18:40:26 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 18:40:27 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:40:27 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 18:40:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:40:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ce6b5337db01095e1717eb4b9cdda65a0930d567ebef3d5a0950bab671ace0`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7a335f5c811ce8e03e0e6db6242cb7cf7362469690ac941849032fed67b79`  
		Last Modified: Wed, 23 Jan 2019 18:41:46 GMT  
		Size: 21.7 MB (21658859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72d7b16e1d5d521d9dc1bc5c90da3cb17bcd5c969013b748336c1ef4c73108`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78598400e4ac5722c975cae650e42677bd6b5a1f958262e96d46a6e8be464cc`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c04a62be36cd53b8cdf0459b39f1894999048eec710b2ff2a683c1abb1e113`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ea22f1de7e8cc3c0920558572681a43e515b3253b4c8e91d905793b80f3349df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77953172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bd8320875d0de8926f9bdbc450dbac520ac61068f17f3dc466e499b33aa442`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:13:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sun, 30 Dec 2018 01:14:00 GMT
ENV INFLUXDB_VERSION=1.5.4
# Sun, 30 Dec 2018 01:14:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sun, 30 Dec 2018 01:14:09 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Sun, 30 Dec 2018 01:14:09 GMT
EXPOSE 8086
# Sun, 30 Dec 2018 01:14:10 GMT
VOLUME [/var/lib/influxdb]
# Sun, 30 Dec 2018 01:14:11 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Sun, 30 Dec 2018 01:14:11 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Sun, 30 Dec 2018 01:14:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 30 Dec 2018 01:14:13 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43417a90a8f0919e15eae3e7e020e9281bbb5832477d7350d1c4a6d475c04e3f`  
		Last Modified: Sun, 30 Dec 2018 01:15:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad955cf0119e1bd9ebb38e9419c2569ea01e7b96f49c41a84d4a70d057a3af1`  
		Last Modified: Sun, 30 Dec 2018 01:15:26 GMT  
		Size: 21.0 MB (21010469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e4031e03747d6dc6f0222d26275474065b06a2601841f105be45705a2167af`  
		Last Modified: Sun, 30 Dec 2018 01:15:15 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042473ad8cacabc8d6a4e8b07eda71b1615b05f0a2d4a23d59f27c313391080`  
		Last Modified: Sun, 30 Dec 2018 01:15:15 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e243d4b37ae8c5f7f474f564e2ee84d0c67001a0e4340d2e970658052b478e5d`  
		Last Modified: Sun, 30 Dec 2018 01:15:15 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4`

```console
$ docker pull influxdb@sha256:f33a8f6c799ffba340c6774a4d1c363451c578e52cbda48b640d76c0538096a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5.4` - linux; amd64

```console
$ docker pull influxdb@sha256:fa16763ff67eee86f937e1859140cd582314d87a1c0d22dc71e3ce2c8b541d9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83499100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e55f73a632495739aa0f0e9aa7d097a0cbbb12cf2e6d19250d899fe72bcada`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:31:33 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 23 Jan 2019 05:31:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 05:31:37 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:31:37 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:31:37 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:31:37 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:31:37 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:31:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:31:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f70ba69582ad239de814ca51bfe4f71a7f540dcf541b4ba0beb9127bad94bc5`  
		Last Modified: Wed, 23 Jan 2019 05:33:39 GMT  
		Size: 23.0 MB (23028944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8788b86a5776e6340c5966f1df3825b26ec170c2e054a849fc89ec27eaf585c`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5dee4b131a0c001e017f8dce302fe348cade96bae9680f7b841352b6ae64a86`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb68881ab16e92feb640d3b040b1223ef36a23118467506e28197b642ab5c4d`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:40fda6157ca86f24f704ecfd3c4cb131b365edd3c4fee3745f97d255b03429e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77149878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641db9f79224e4dfb8076fc3a57dabc50f54e737a19f40049d89dac94f062f52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:40:14 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:40:14 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 23 Jan 2019 18:40:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 18:40:25 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 18:40:26 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 18:40:26 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 18:40:27 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:40:27 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 18:40:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:40:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ce6b5337db01095e1717eb4b9cdda65a0930d567ebef3d5a0950bab671ace0`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f7a335f5c811ce8e03e0e6db6242cb7cf7362469690ac941849032fed67b79`  
		Last Modified: Wed, 23 Jan 2019 18:41:46 GMT  
		Size: 21.7 MB (21658859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72d7b16e1d5d521d9dc1bc5c90da3cb17bcd5c969013b748336c1ef4c73108`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78598400e4ac5722c975cae650e42677bd6b5a1f958262e96d46a6e8be464cc`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c04a62be36cd53b8cdf0459b39f1894999048eec710b2ff2a683c1abb1e113`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ea22f1de7e8cc3c0920558572681a43e515b3253b4c8e91d905793b80f3349df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77953172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bd8320875d0de8926f9bdbc450dbac520ac61068f17f3dc466e499b33aa442`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:13:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sun, 30 Dec 2018 01:14:00 GMT
ENV INFLUXDB_VERSION=1.5.4
# Sun, 30 Dec 2018 01:14:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sun, 30 Dec 2018 01:14:09 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Sun, 30 Dec 2018 01:14:09 GMT
EXPOSE 8086
# Sun, 30 Dec 2018 01:14:10 GMT
VOLUME [/var/lib/influxdb]
# Sun, 30 Dec 2018 01:14:11 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Sun, 30 Dec 2018 01:14:11 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Sun, 30 Dec 2018 01:14:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 30 Dec 2018 01:14:13 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43417a90a8f0919e15eae3e7e020e9281bbb5832477d7350d1c4a6d475c04e3f`  
		Last Modified: Sun, 30 Dec 2018 01:15:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad955cf0119e1bd9ebb38e9419c2569ea01e7b96f49c41a84d4a70d057a3af1`  
		Last Modified: Sun, 30 Dec 2018 01:15:26 GMT  
		Size: 21.0 MB (21010469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e4031e03747d6dc6f0222d26275474065b06a2601841f105be45705a2167af`  
		Last Modified: Sun, 30 Dec 2018 01:15:15 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042473ad8cacabc8d6a4e8b07eda71b1615b05f0a2d4a23d59f27c313391080`  
		Last Modified: Sun, 30 Dec 2018 01:15:15 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e243d4b37ae8c5f7f474f564e2ee84d0c67001a0e4340d2e970658052b478e5d`  
		Last Modified: Sun, 30 Dec 2018 01:15:15 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-alpine`

```console
$ docker pull influxdb@sha256:b5dee3b55342236612e63b2ca54ff502475d600e09e5c81eb819731b64b39b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2fa424deccc05876ab1299dcb1a08aa8fe4e300fd3d8932d4200ce26276e36e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (26995257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7229c90eabfa78f4b89d336c4eadb0e1b234e15d26dd78029731090a914c0b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:39 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 10 Jan 2019 22:19:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:45 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:19:45 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:19:45 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:19:45 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:19:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16677d3d7cfca6d2645daf9533cb68d8b33714e6df8e21a71bb1356739082963`  
		Last Modified: Thu, 10 Jan 2019 22:21:39 GMT  
		Size: 22.9 MB (22916041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c33107590cf0e7f672b0c3745204d0d0553e3ea7b426b2d4ad6f4276a8ac0aa`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e31951a0e0efb09a6ceabbb0634f55c69ad3abdf39dc48f5539f54574600935`  
		Last Modified: Thu, 10 Jan 2019 22:21:33 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a873dc7cdec33c4b149b9d13550412debe0fa4cbbe77052963ac736291b1a7ff`  
		Last Modified: Thu, 10 Jan 2019 22:21:33 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data`

```console
$ docker pull influxdb@sha256:4d4813e1e886625b14beeb9d4652948519bc71d8ce3345eab0a2e7ce3c6bbdb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:6d0d37bee12c1e3f2bdf28b943974e8328552df35ab69e7ef167aa7174123e21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84252836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02119f6928e52b57e548892e881ca8e8f1f8e5d4e93cd81f7e1ea56fa8300bac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:31:44 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 23 Jan 2019 05:31:48 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:31:48 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:31:48 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:31:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:31:48 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:31:49 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:31:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:31:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6889d0e29a9594572417c21011b8cd356b8e22735893e8b0317cc4751b4c7dc1`  
		Last Modified: Wed, 23 Jan 2019 05:33:52 GMT  
		Size: 23.8 MB (23782624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decc3213517ee8770518b2d97b47c783d1c5e604f3e0c0574a9c481ed4c65fa`  
		Last Modified: Wed, 23 Jan 2019 05:33:44 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e790c881aa681a1db33c439a8b275cc215f7e8d87f841ab3d4ee024a356dba45`  
		Last Modified: Wed, 23 Jan 2019 05:33:44 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79e02f165ebd01bbd70b87bed927da25f2f578ce8407dbbf6b99feaac411ed0`  
		Last Modified: Wed, 23 Jan 2019 05:33:44 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data-alpine`

```console
$ docker pull influxdb@sha256:562ad6be5ec165f423ae506aae8a7894bdbeb6d8acff0f7d5df15b460d0d940f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:a635b365a5ca6c0e882a02f48e435430c294af0a2222ea5b87ccfead67f9fb30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b46b78cd226eca5847f123deb17f00a425f10f9118af0dcce6dd00cd76dc61`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:52 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 10 Jan 2019 22:19:58 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:58 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:19:58 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:19:58 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:19:58 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:59 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:59 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718d213c85d63c4602acb35ea4b38d612a46a933bd33abdf8e1a9bbca4ab2053`  
		Last Modified: Thu, 10 Jan 2019 22:21:49 GMT  
		Size: 23.7 MB (23669537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802aa02649def2a5559d6e9ae3d3c14af11b0b98ae0d9e00f5633c99d15bc682`  
		Last Modified: Thu, 10 Jan 2019 22:21:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df2d4649adabdf4fc6d01125f558f7f0c4d70c5000af9e00b0093a10a938d7a`  
		Last Modified: Thu, 10 Jan 2019 22:21:43 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe007a6c4d274083a723165d5de261190454608b3d007727fa9521c80636cf0e`  
		Last Modified: Thu, 10 Jan 2019 22:21:43 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta`

```console
$ docker pull influxdb@sha256:0f90c37a3bb8349c36e3b797e8a11ce9f5b652918d6725889572901106b1a0e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:2ff9cf1e55447955c83cbf7a3a2abbf7f024223478b9fcf2aedd6596cebf2483
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71663158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94e0a1e2905c8ed11863302841aa37e21728cab93c4c2283e1284de137dd10d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:31:44 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 23 Jan 2019 05:31:58 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:31:58 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 23 Jan 2019 05:31:59 GMT
EXPOSE 8091
# Wed, 23 Jan 2019 05:31:59 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:31:59 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:31:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:00 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd80d1ba79c0782fc4d2cdd68a2e320ea4ba689ca78c884879928ae8dfb027fd`  
		Last Modified: Wed, 23 Jan 2019 05:34:01 GMT  
		Size: 11.2 MB (11194031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8255cfdd2273d871da24ebf2f186a012d51d7a35e9b0edce8129c99c71431aff`  
		Last Modified: Wed, 23 Jan 2019 05:33:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0ff7f84e81c8d65fa9cfe5f374a0f1ffa785580be69ecdcf8734fe578a2110`  
		Last Modified: Wed, 23 Jan 2019 05:33:57 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta-alpine`

```console
$ docker pull influxdb@sha256:149d337a2a553e4753696fb31b7b02735f2835a45fd19fdc6db3ca6748f2b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:fab0a194adc249e09711d2c148e24232f1823d8fd4d2046a6fd1bb8d6c8e2f4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15229199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee7267f08ae93eb51e98f3d75ce1b6e044f132657c86224e7a3aee40d1b9646`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:52 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 10 Jan 2019 22:20:09 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:09 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 10 Jan 2019 22:20:10 GMT
EXPOSE 8091
# Thu, 10 Jan 2019 22:20:10 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:20:10 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:20:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:20:10 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378c8dccef6bbe62f43394d9ba5b2e8c9525159d5ed0505266bb70e7b043b346`  
		Last Modified: Thu, 10 Jan 2019 22:22:00 GMT  
		Size: 11.2 MB (11151013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb591900a68f1e8df45da6912526328fbe921b67b7472b9cc66a14c9ec41eb`  
		Last Modified: Thu, 10 Jan 2019 22:21:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd5e8d765b043ab4832b2b28a5a9b417eb1a7ded2e66589b87a98e3c22373f1`  
		Last Modified: Thu, 10 Jan 2019 22:21:58 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:b5dee3b55342236612e63b2ca54ff502475d600e09e5c81eb819731b64b39b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2fa424deccc05876ab1299dcb1a08aa8fe4e300fd3d8932d4200ce26276e36e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (26995257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7229c90eabfa78f4b89d336c4eadb0e1b234e15d26dd78029731090a914c0b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:39 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 10 Jan 2019 22:19:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:45 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:19:45 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:19:45 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:19:45 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:19:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16677d3d7cfca6d2645daf9533cb68d8b33714e6df8e21a71bb1356739082963`  
		Last Modified: Thu, 10 Jan 2019 22:21:39 GMT  
		Size: 22.9 MB (22916041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c33107590cf0e7f672b0c3745204d0d0553e3ea7b426b2d4ad6f4276a8ac0aa`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e31951a0e0efb09a6ceabbb0634f55c69ad3abdf39dc48f5539f54574600935`  
		Last Modified: Thu, 10 Jan 2019 22:21:33 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a873dc7cdec33c4b149b9d13550412debe0fa4cbbe77052963ac736291b1a7ff`  
		Last Modified: Thu, 10 Jan 2019 22:21:33 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:4d4813e1e886625b14beeb9d4652948519bc71d8ce3345eab0a2e7ce3c6bbdb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:6d0d37bee12c1e3f2bdf28b943974e8328552df35ab69e7ef167aa7174123e21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84252836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02119f6928e52b57e548892e881ca8e8f1f8e5d4e93cd81f7e1ea56fa8300bac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:31:44 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 23 Jan 2019 05:31:48 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:31:48 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:31:48 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:31:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:31:48 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:31:49 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:31:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:31:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6889d0e29a9594572417c21011b8cd356b8e22735893e8b0317cc4751b4c7dc1`  
		Last Modified: Wed, 23 Jan 2019 05:33:52 GMT  
		Size: 23.8 MB (23782624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decc3213517ee8770518b2d97b47c783d1c5e604f3e0c0574a9c481ed4c65fa`  
		Last Modified: Wed, 23 Jan 2019 05:33:44 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e790c881aa681a1db33c439a8b275cc215f7e8d87f841ab3d4ee024a356dba45`  
		Last Modified: Wed, 23 Jan 2019 05:33:44 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79e02f165ebd01bbd70b87bed927da25f2f578ce8407dbbf6b99feaac411ed0`  
		Last Modified: Wed, 23 Jan 2019 05:33:44 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:562ad6be5ec165f423ae506aae8a7894bdbeb6d8acff0f7d5df15b460d0d940f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:a635b365a5ca6c0e882a02f48e435430c294af0a2222ea5b87ccfead67f9fb30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b46b78cd226eca5847f123deb17f00a425f10f9118af0dcce6dd00cd76dc61`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:52 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 10 Jan 2019 22:19:58 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:58 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:19:58 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:19:58 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:19:58 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:59 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:59 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718d213c85d63c4602acb35ea4b38d612a46a933bd33abdf8e1a9bbca4ab2053`  
		Last Modified: Thu, 10 Jan 2019 22:21:49 GMT  
		Size: 23.7 MB (23669537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802aa02649def2a5559d6e9ae3d3c14af11b0b98ae0d9e00f5633c99d15bc682`  
		Last Modified: Thu, 10 Jan 2019 22:21:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df2d4649adabdf4fc6d01125f558f7f0c4d70c5000af9e00b0093a10a938d7a`  
		Last Modified: Thu, 10 Jan 2019 22:21:43 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe007a6c4d274083a723165d5de261190454608b3d007727fa9521c80636cf0e`  
		Last Modified: Thu, 10 Jan 2019 22:21:43 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:0f90c37a3bb8349c36e3b797e8a11ce9f5b652918d6725889572901106b1a0e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:2ff9cf1e55447955c83cbf7a3a2abbf7f024223478b9fcf2aedd6596cebf2483
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71663158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94e0a1e2905c8ed11863302841aa37e21728cab93c4c2283e1284de137dd10d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:31:44 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 23 Jan 2019 05:31:58 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:31:58 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 23 Jan 2019 05:31:59 GMT
EXPOSE 8091
# Wed, 23 Jan 2019 05:31:59 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:31:59 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:31:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:00 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd80d1ba79c0782fc4d2cdd68a2e320ea4ba689ca78c884879928ae8dfb027fd`  
		Last Modified: Wed, 23 Jan 2019 05:34:01 GMT  
		Size: 11.2 MB (11194031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8255cfdd2273d871da24ebf2f186a012d51d7a35e9b0edce8129c99c71431aff`  
		Last Modified: Wed, 23 Jan 2019 05:33:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0ff7f84e81c8d65fa9cfe5f374a0f1ffa785580be69ecdcf8734fe578a2110`  
		Last Modified: Wed, 23 Jan 2019 05:33:57 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:149d337a2a553e4753696fb31b7b02735f2835a45fd19fdc6db3ca6748f2b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:fab0a194adc249e09711d2c148e24232f1823d8fd4d2046a6fd1bb8d6c8e2f4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15229199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee7267f08ae93eb51e98f3d75ce1b6e044f132657c86224e7a3aee40d1b9646`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:52 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 10 Jan 2019 22:20:09 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:09 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 10 Jan 2019 22:20:10 GMT
EXPOSE 8091
# Thu, 10 Jan 2019 22:20:10 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:20:10 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:20:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:20:10 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378c8dccef6bbe62f43394d9ba5b2e8c9525159d5ed0505266bb70e7b043b346`  
		Last Modified: Thu, 10 Jan 2019 22:22:00 GMT  
		Size: 11.2 MB (11151013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb591900a68f1e8df45da6912526328fbe921b67b7472b9cc66a14c9ec41eb`  
		Last Modified: Thu, 10 Jan 2019 22:21:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd5e8d765b043ab4832b2b28a5a9b417eb1a7ded2e66589b87a98e3c22373f1`  
		Last Modified: Thu, 10 Jan 2019 22:21:58 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6`

```console
$ docker pull influxdb@sha256:2b3cfe459f2ea12da00a3af6617a7e1e3a0b4501f9dd1188b1f04a4d06a83520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6` - linux; amd64

```console
$ docker pull influxdb@sha256:f828dd525f63bc48c8e48fb08c95fb27894f6fbf20fa54b2b87f3b84663c8844
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85778343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c12d1eb349ea0ddc5faf7efdc93e9d18e383ff2aedbdd63757bc4877ec68e85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:06 GMT
ENV INFLUXDB_VERSION=1.6.5
# Wed, 23 Jan 2019 05:32:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 05:32:11 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:32:11 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:32:11 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:11 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:12 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:32:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cddd4928a70730d4d8a3520115da10c556a21fb0737e00fba473349f2b5386`  
		Last Modified: Wed, 23 Jan 2019 05:34:14 GMT  
		Size: 25.3 MB (25308186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9497982ff3fa0b51f62f4bd5f13a2599f094ce82d46c842aa205848cb131d189`  
		Last Modified: Wed, 23 Jan 2019 05:34:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceef8b481897a25ec28492544ada7b6122c297c34ba583264541548332168e82`  
		Last Modified: Wed, 23 Jan 2019 05:34:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85ae2934a32a8eef82c3147603bd5be37f0007c057f8e04334c63ca17db844`  
		Last Modified: Wed, 23 Jan 2019 05:34:05 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:b49920993d0a0a668d4ac23592fdca7fabb690b7f4f30d438cf7cf40f85bcc5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79838607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057ff56d6df7e7fd78339762ca4955ebff7a4d5037364dc9c0d2274f37d6d15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:40:14 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:40:35 GMT
ENV INFLUXDB_VERSION=1.6.5
# Wed, 23 Jan 2019 18:40:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 18:40:47 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 18:40:47 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 18:40:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 18:40:48 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:40:49 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 18:40:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:40:50 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ce6b5337db01095e1717eb4b9cdda65a0930d567ebef3d5a0950bab671ace0`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837ce552921a4db4de35a9d3c6c5536f5a235be1eb7dd9095ba52071b562a9ea`  
		Last Modified: Wed, 23 Jan 2019 18:42:03 GMT  
		Size: 24.3 MB (24347586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cc6366da7b111f2aa1efe92b337a88f3e36670c81cf1fa20342d5f87af31a`  
		Last Modified: Wed, 23 Jan 2019 18:41:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e896cab51dea5ae4dd306dc4198116ad3282080a6d41d80a12e7db6d98e58fb`  
		Last Modified: Wed, 23 Jan 2019 18:41:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696ec33264fe4fa219ad97e064ed60ccbf8fb94017e38ee8a9f0df06ac217758`  
		Last Modified: Wed, 23 Jan 2019 18:41:55 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8140eafc11929c51bb83d3f27a8210d3bbffac43c11c1c0c03f34475e0cc5aa8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80610619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8627c1a3c26e94b0f47ca72fd2fc0590b3240a84acae526b5a5624b4bb925eec`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:13:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 11 Jan 2019 09:53:00 GMT
ENV INFLUXDB_VERSION=1.6.5
# Fri, 11 Jan 2019 09:53:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 11 Jan 2019 09:53:11 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 11 Jan 2019 09:53:12 GMT
EXPOSE 8086
# Fri, 11 Jan 2019 09:53:12 GMT
VOLUME [/var/lib/influxdb]
# Fri, 11 Jan 2019 09:53:13 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 11 Jan 2019 09:53:13 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 11 Jan 2019 09:53:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Jan 2019 09:53:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43417a90a8f0919e15eae3e7e020e9281bbb5832477d7350d1c4a6d475c04e3f`  
		Last Modified: Sun, 30 Dec 2018 01:15:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a2b9ec96594d910b3e18cf5b6a95dff4803e768787634558da46e30377207b`  
		Last Modified: Fri, 11 Jan 2019 09:53:46 GMT  
		Size: 23.7 MB (23667917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c20e27ef0b49cfcbad93f476d3a6e1f203a33d3b55bf9c65224b51a13af52df`  
		Last Modified: Fri, 11 Jan 2019 09:53:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fbd4c1b9ae2d3111511e2d3c92f0db7f333a06f0409674e9e3b48fcb2f2ece`  
		Last Modified: Fri, 11 Jan 2019 09:53:33 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012c4fb0df8d6bffaf22d879c5fff97423a120b3c01315d9ecc7d633a7284785`  
		Last Modified: Fri, 11 Jan 2019 09:53:33 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5`

```console
$ docker pull influxdb@sha256:2b3cfe459f2ea12da00a3af6617a7e1e3a0b4501f9dd1188b1f04a4d06a83520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6.5` - linux; amd64

```console
$ docker pull influxdb@sha256:f828dd525f63bc48c8e48fb08c95fb27894f6fbf20fa54b2b87f3b84663c8844
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85778343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c12d1eb349ea0ddc5faf7efdc93e9d18e383ff2aedbdd63757bc4877ec68e85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:06 GMT
ENV INFLUXDB_VERSION=1.6.5
# Wed, 23 Jan 2019 05:32:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 05:32:11 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:32:11 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:32:11 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:11 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:12 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:32:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cddd4928a70730d4d8a3520115da10c556a21fb0737e00fba473349f2b5386`  
		Last Modified: Wed, 23 Jan 2019 05:34:14 GMT  
		Size: 25.3 MB (25308186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9497982ff3fa0b51f62f4bd5f13a2599f094ce82d46c842aa205848cb131d189`  
		Last Modified: Wed, 23 Jan 2019 05:34:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceef8b481897a25ec28492544ada7b6122c297c34ba583264541548332168e82`  
		Last Modified: Wed, 23 Jan 2019 05:34:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85ae2934a32a8eef82c3147603bd5be37f0007c057f8e04334c63ca17db844`  
		Last Modified: Wed, 23 Jan 2019 05:34:05 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:b49920993d0a0a668d4ac23592fdca7fabb690b7f4f30d438cf7cf40f85bcc5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79838607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057ff56d6df7e7fd78339762ca4955ebff7a4d5037364dc9c0d2274f37d6d15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:40:14 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:40:35 GMT
ENV INFLUXDB_VERSION=1.6.5
# Wed, 23 Jan 2019 18:40:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 18:40:47 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 18:40:47 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 18:40:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 18:40:48 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:40:49 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 18:40:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:40:50 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ce6b5337db01095e1717eb4b9cdda65a0930d567ebef3d5a0950bab671ace0`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837ce552921a4db4de35a9d3c6c5536f5a235be1eb7dd9095ba52071b562a9ea`  
		Last Modified: Wed, 23 Jan 2019 18:42:03 GMT  
		Size: 24.3 MB (24347586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cc6366da7b111f2aa1efe92b337a88f3e36670c81cf1fa20342d5f87af31a`  
		Last Modified: Wed, 23 Jan 2019 18:41:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e896cab51dea5ae4dd306dc4198116ad3282080a6d41d80a12e7db6d98e58fb`  
		Last Modified: Wed, 23 Jan 2019 18:41:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696ec33264fe4fa219ad97e064ed60ccbf8fb94017e38ee8a9f0df06ac217758`  
		Last Modified: Wed, 23 Jan 2019 18:41:55 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8140eafc11929c51bb83d3f27a8210d3bbffac43c11c1c0c03f34475e0cc5aa8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80610619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8627c1a3c26e94b0f47ca72fd2fc0590b3240a84acae526b5a5624b4bb925eec`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:13:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 11 Jan 2019 09:53:00 GMT
ENV INFLUXDB_VERSION=1.6.5
# Fri, 11 Jan 2019 09:53:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 11 Jan 2019 09:53:11 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 11 Jan 2019 09:53:12 GMT
EXPOSE 8086
# Fri, 11 Jan 2019 09:53:12 GMT
VOLUME [/var/lib/influxdb]
# Fri, 11 Jan 2019 09:53:13 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 11 Jan 2019 09:53:13 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 11 Jan 2019 09:53:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Jan 2019 09:53:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43417a90a8f0919e15eae3e7e020e9281bbb5832477d7350d1c4a6d475c04e3f`  
		Last Modified: Sun, 30 Dec 2018 01:15:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a2b9ec96594d910b3e18cf5b6a95dff4803e768787634558da46e30377207b`  
		Last Modified: Fri, 11 Jan 2019 09:53:46 GMT  
		Size: 23.7 MB (23667917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c20e27ef0b49cfcbad93f476d3a6e1f203a33d3b55bf9c65224b51a13af52df`  
		Last Modified: Fri, 11 Jan 2019 09:53:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fbd4c1b9ae2d3111511e2d3c92f0db7f333a06f0409674e9e3b48fcb2f2ece`  
		Last Modified: Fri, 11 Jan 2019 09:53:33 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012c4fb0df8d6bffaf22d879c5fff97423a120b3c01315d9ecc7d633a7284785`  
		Last Modified: Fri, 11 Jan 2019 09:53:33 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-alpine`

```console
$ docker pull influxdb@sha256:f7b9d0d6f6b65debd77237def0b04d0293408e0de2b47c9f3be2b7fc4d2c9717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4957ebf33ef56ba37b4829212770739b023d196fd5f2cfbd8428313197d60044
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e989689c9bfe08bda00a816d46d6f05538ca004d4a9ed1b35191afe4c49d6604`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:20:20 GMT
ENV INFLUXDB_VERSION=1.6.5
# Thu, 10 Jan 2019 22:20:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:26 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:20:26 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:20:26 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:20:27 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:20:27 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:20:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:20:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7b76e74e7fdb11960dfa47228ed8e3062b910ddfa9d9b295e26b662f1d6be1`  
		Last Modified: Thu, 10 Jan 2019 22:22:18 GMT  
		Size: 25.2 MB (25188222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee78897329f037ea9d4373c556ba8c1eac48bf7ca9582afad06056a73b79527`  
		Last Modified: Thu, 10 Jan 2019 22:22:12 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f79d461648e449b5014ccbc4531d67dd102ffe5247f368288d5cd9f7caa04`  
		Last Modified: Thu, 10 Jan 2019 22:22:13 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bfbd8d4735d16b1a2d3661b8ecd41d4c4ab85006da9a0ffeb207c554bdf7c1`  
		Last Modified: Thu, 10 Jan 2019 22:22:13 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-data`

```console
$ docker pull influxdb@sha256:91689ead6dcf10c5d98db8d5b0ad7492dfd6cfce66158d45a85c8457aa578729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:d7e0cd6643643e7566cbe1da5bf989864b9c84375037711a63db5e7394b87d2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87043927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a4a584d0eb58b6cb30ccfe9d167309dc05f5e4fada047f6b6c766f61d6535f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:18 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 23 Jan 2019 05:32:22 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:32:22 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:32:22 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:32:23 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:23 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:23 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:32:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37364a5ec6d633289bb1fd5425607ecdb107d63be7d5492e39ba170e3b129f`  
		Last Modified: Wed, 23 Jan 2019 05:34:27 GMT  
		Size: 26.6 MB (26573712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d83388727f1279aac5ce2d5825fbfb4ef8a42538759de331e3d8bf3f9092b4`  
		Last Modified: Wed, 23 Jan 2019 05:34:18 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0951f0e943c7bff11c5eb80d941664199a8a82751b4e79287bd8e0cf2242bb`  
		Last Modified: Wed, 23 Jan 2019 05:34:19 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2b3720ffb289807e45ea2717040d261ecade92a4b6bb60c63e06bef7cfb475`  
		Last Modified: Wed, 23 Jan 2019 05:34:19 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-data-alpine`

```console
$ docker pull influxdb@sha256:a7fe479510ca0f056d5a28a49b526dba0231dcd0767f352cf079d151af5333a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5a4f3d366cfcf486d248fa83489edc5a3fb0ad75f2b295dccc538b54e5932495
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30531237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30dabbcdc81f62aca7cc6d9644380a14ba18f4754189407e73f9b2f408f7d5bf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:20:38 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 10 Jan 2019 22:20:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:44 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:20:44 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:20:45 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:20:45 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:20:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:20:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:20:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f270359c30d9b7fd6a0303ef8dd99b93cbeccc818b6d144592ecaddaa3dda331`  
		Last Modified: Thu, 10 Jan 2019 22:22:38 GMT  
		Size: 26.5 MB (26451960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7be3cfbd39f2b12c1a6319931cb75460b3342b03cf333001c9ca5b246615e62`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890da5665bc7bebfce600dcae801d06b43e33c4c704b122bd728c9a92363ec5b`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7c8b40bb0c70a8e6e8583648ce0ce9df9389c78cc333e43934a10cf5dab87c`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-meta`

```console
$ docker pull influxdb@sha256:87a0ab9d8b74f1f0326387bd4b2c4133e2baba52103dfeb9756cdc04eb4464e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:de69309798c22f2fc33f03a1d009751962a8efd7ad06279554c6bbf02d1bb9df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed219ba96c59d43521f4f5afddcbad6ad979e98b72f27e295d0eb2b67ab77678`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:18 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 23 Jan 2019 05:32:31 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:32:31 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 23 Jan 2019 05:32:31 GMT
EXPOSE 8091
# Wed, 23 Jan 2019 05:32:31 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:32 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:32 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9baab1bac250216976059605ce23e1e3c8664f53b22e06d5ad638d8a4d73ee6f`  
		Last Modified: Wed, 23 Jan 2019 05:34:40 GMT  
		Size: 12.5 MB (12547565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c34cd9e08e7024d36aa755be6298b6453f2317054cb9fcdba7afe74a0cdeae0`  
		Last Modified: Wed, 23 Jan 2019 05:34:35 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf94b32ce1f1667d97fbf2ad216ac64a3156d18844b7b4e0fa82cf26c6b6ab`  
		Last Modified: Wed, 23 Jan 2019 05:34:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.5-meta-alpine`

```console
$ docker pull influxdb@sha256:3eac9814c6345357c0804b351f7073f4df59e1b2a36e1547ab14ba8bae5ee776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4b1b5f5a6bd6ec8c4950387885e40688ad9e07a01357f53f94e487dae1c411be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16582800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb49dee470e35bf30019f0b7439e68d23f16c3ddd59297c06cad3c4cfe487ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:20:38 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 10 Jan 2019 22:20:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:59 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 10 Jan 2019 22:20:59 GMT
EXPOSE 8091
# Thu, 10 Jan 2019 22:21:00 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:21:00 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:21:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:21:00 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e1bbd5720f3a89f14acd9fa7be4c8c0e47fcaafcc89bb886687fa9806f99d6`  
		Last Modified: Thu, 10 Jan 2019 22:22:53 GMT  
		Size: 12.5 MB (12504614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792374c44bb653b273c75bf554298e78c3a2d317e4c57c16ac75a7ba0aeeecc7`  
		Last Modified: Thu, 10 Jan 2019 22:22:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9d68b4334c4ca30af4ac1e25a49636129ab78d84fb0bc6ef95eb66794b1a78`  
		Last Modified: Thu, 10 Jan 2019 22:22:50 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-alpine`

```console
$ docker pull influxdb@sha256:f7b9d0d6f6b65debd77237def0b04d0293408e0de2b47c9f3be2b7fc4d2c9717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4957ebf33ef56ba37b4829212770739b023d196fd5f2cfbd8428313197d60044
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e989689c9bfe08bda00a816d46d6f05538ca004d4a9ed1b35191afe4c49d6604`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:20:20 GMT
ENV INFLUXDB_VERSION=1.6.5
# Thu, 10 Jan 2019 22:20:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:26 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:20:26 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:20:26 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:20:27 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:20:27 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:20:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:20:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7b76e74e7fdb11960dfa47228ed8e3062b910ddfa9d9b295e26b662f1d6be1`  
		Last Modified: Thu, 10 Jan 2019 22:22:18 GMT  
		Size: 25.2 MB (25188222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee78897329f037ea9d4373c556ba8c1eac48bf7ca9582afad06056a73b79527`  
		Last Modified: Thu, 10 Jan 2019 22:22:12 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f79d461648e449b5014ccbc4531d67dd102ffe5247f368288d5cd9f7caa04`  
		Last Modified: Thu, 10 Jan 2019 22:22:13 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bfbd8d4735d16b1a2d3661b8ecd41d4c4ab85006da9a0ffeb207c554bdf7c1`  
		Last Modified: Thu, 10 Jan 2019 22:22:13 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data`

```console
$ docker pull influxdb@sha256:91689ead6dcf10c5d98db8d5b0ad7492dfd6cfce66158d45a85c8457aa578729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data` - linux; amd64

```console
$ docker pull influxdb@sha256:d7e0cd6643643e7566cbe1da5bf989864b9c84375037711a63db5e7394b87d2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87043927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a4a584d0eb58b6cb30ccfe9d167309dc05f5e4fada047f6b6c766f61d6535f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:18 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 23 Jan 2019 05:32:22 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:32:22 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:32:22 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:32:23 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:23 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:23 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:32:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37364a5ec6d633289bb1fd5425607ecdb107d63be7d5492e39ba170e3b129f`  
		Last Modified: Wed, 23 Jan 2019 05:34:27 GMT  
		Size: 26.6 MB (26573712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d83388727f1279aac5ce2d5825fbfb4ef8a42538759de331e3d8bf3f9092b4`  
		Last Modified: Wed, 23 Jan 2019 05:34:18 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0951f0e943c7bff11c5eb80d941664199a8a82751b4e79287bd8e0cf2242bb`  
		Last Modified: Wed, 23 Jan 2019 05:34:19 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2b3720ffb289807e45ea2717040d261ecade92a4b6bb60c63e06bef7cfb475`  
		Last Modified: Wed, 23 Jan 2019 05:34:19 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data-alpine`

```console
$ docker pull influxdb@sha256:a7fe479510ca0f056d5a28a49b526dba0231dcd0767f352cf079d151af5333a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5a4f3d366cfcf486d248fa83489edc5a3fb0ad75f2b295dccc538b54e5932495
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30531237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30dabbcdc81f62aca7cc6d9644380a14ba18f4754189407e73f9b2f408f7d5bf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:20:38 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 10 Jan 2019 22:20:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:44 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:20:44 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:20:45 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:20:45 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:20:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:20:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:20:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f270359c30d9b7fd6a0303ef8dd99b93cbeccc818b6d144592ecaddaa3dda331`  
		Last Modified: Thu, 10 Jan 2019 22:22:38 GMT  
		Size: 26.5 MB (26451960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7be3cfbd39f2b12c1a6319931cb75460b3342b03cf333001c9ca5b246615e62`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890da5665bc7bebfce600dcae801d06b43e33c4c704b122bd728c9a92363ec5b`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7c8b40bb0c70a8e6e8583648ce0ce9df9389c78cc333e43934a10cf5dab87c`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta`

```console
$ docker pull influxdb@sha256:87a0ab9d8b74f1f0326387bd4b2c4133e2baba52103dfeb9756cdc04eb4464e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:de69309798c22f2fc33f03a1d009751962a8efd7ad06279554c6bbf02d1bb9df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed219ba96c59d43521f4f5afddcbad6ad979e98b72f27e295d0eb2b67ab77678`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:18 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 23 Jan 2019 05:32:31 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:32:31 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 23 Jan 2019 05:32:31 GMT
EXPOSE 8091
# Wed, 23 Jan 2019 05:32:31 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:32 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:32 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9baab1bac250216976059605ce23e1e3c8664f53b22e06d5ad638d8a4d73ee6f`  
		Last Modified: Wed, 23 Jan 2019 05:34:40 GMT  
		Size: 12.5 MB (12547565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c34cd9e08e7024d36aa755be6298b6453f2317054cb9fcdba7afe74a0cdeae0`  
		Last Modified: Wed, 23 Jan 2019 05:34:35 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf94b32ce1f1667d97fbf2ad216ac64a3156d18844b7b4e0fa82cf26c6b6ab`  
		Last Modified: Wed, 23 Jan 2019 05:34:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta-alpine`

```console
$ docker pull influxdb@sha256:3eac9814c6345357c0804b351f7073f4df59e1b2a36e1547ab14ba8bae5ee776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4b1b5f5a6bd6ec8c4950387885e40688ad9e07a01357f53f94e487dae1c411be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16582800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb49dee470e35bf30019f0b7439e68d23f16c3ddd59297c06cad3c4cfe487ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:20:38 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 10 Jan 2019 22:20:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:59 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 10 Jan 2019 22:20:59 GMT
EXPOSE 8091
# Thu, 10 Jan 2019 22:21:00 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:21:00 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:21:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:21:00 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e1bbd5720f3a89f14acd9fa7be4c8c0e47fcaafcc89bb886687fa9806f99d6`  
		Last Modified: Thu, 10 Jan 2019 22:22:53 GMT  
		Size: 12.5 MB (12504614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792374c44bb653b273c75bf554298e78c3a2d317e4c57c16ac75a7ba0aeeecc7`  
		Last Modified: Thu, 10 Jan 2019 22:22:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9d68b4334c4ca30af4ac1e25a49636129ab78d84fb0bc6ef95eb66794b1a78`  
		Last Modified: Thu, 10 Jan 2019 22:22:50 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7`

```console
$ docker pull influxdb@sha256:15f56e82603bcab50742c366e1e1a9d7e686266fa595ec17a5271f1a088af6f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7` - linux; amd64

```console
$ docker pull influxdb@sha256:4d4f19e86b0d96fb07af52603e4d686bbac4c80a6c1d29802b81fbe2a6e5a5dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107684641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c8122ccf251d091b11ccb9af0f8de85625bbefc055ff943ef7548e5139eacd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:40 GMT
ENV INFLUXDB_VERSION=1.7.3
# Wed, 23 Jan 2019 05:32:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 05:32:46 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:32:47 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:32:47 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:47 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:47 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:32:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fd16488fde5db07231f522f02dd2d0e7650c56294116bbe5ff63253cbc98e9`  
		Last Modified: Wed, 23 Jan 2019 05:34:58 GMT  
		Size: 47.2 MB (47214484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e09a4069c79b492ce7a13806a2f23c4fe37670966c8d2d9266d54c66194c7b`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f13864cb57694f78b697068ed52096d86406bddc08a3517df68b4413dcb77a9`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824b0689cd61bc0d102f8b8bc481dc74450c887ad763bd3b4fd83c94542edf44`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:018964274daf9107971425e8d757193776ed3c8e509db96ed9cc74eff00f2cd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.8 MB (99839320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59eda1d7693748778fe6c551abfa4ce8dc0d447d8381b52361a159f83a2539e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:40:14 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:40:54 GMT
ENV INFLUXDB_VERSION=1.7.3
# Wed, 23 Jan 2019 18:41:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 18:41:13 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 18:41:13 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 18:41:14 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 18:41:15 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:41:15 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 18:41:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:41:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ce6b5337db01095e1717eb4b9cdda65a0930d567ebef3d5a0950bab671ace0`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95a4f094fa213530f379a98353dbb34582d30632077f5d428a2dfeee4d2f8c9`  
		Last Modified: Wed, 23 Jan 2019 18:42:40 GMT  
		Size: 44.3 MB (44348301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017ae6870d73c9951d446c1c72465d5c5dea915d8a0fd852802d24cd0f455103`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7bac7d9b3f70639c1e6bedfda7af0e4fcc41367d5b3519c0de2b695c3335a1`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6306c934d6fbb52105b6bec97b5e7914e9f84255cb8249fe19f9fd13cf1484e3`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:64f33ee345b9bbb86ddfc49931049dfb5014dd07f0aad154fe83fd12a58d5dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100600409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e343e53b1ebbb4faf4e8b78dfa2fef3dd93e91a9c52c26b3dfa8fc83c2cf5b9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:13:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 15 Jan 2019 09:59:08 GMT
ENV INFLUXDB_VERSION=1.7.3
# Tue, 15 Jan 2019 09:59:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 15 Jan 2019 09:59:22 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 15 Jan 2019 09:59:22 GMT
EXPOSE 8086
# Tue, 15 Jan 2019 09:59:23 GMT
VOLUME [/var/lib/influxdb]
# Tue, 15 Jan 2019 09:59:24 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 15 Jan 2019 09:59:24 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 15 Jan 2019 09:59:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Jan 2019 09:59:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43417a90a8f0919e15eae3e7e020e9281bbb5832477d7350d1c4a6d475c04e3f`  
		Last Modified: Sun, 30 Dec 2018 01:15:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c934662103c2716cc8280bca1fb0ac2e085a3c61b6a603fb68bfe20fd27e6b1`  
		Last Modified: Tue, 15 Jan 2019 09:59:58 GMT  
		Size: 43.7 MB (43657708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164b25161960191c9591e720a98cc18861e5c085f9511c7c151dc130ff35f004`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec27f8bf8f2025967fbf1a73d9d880fdd085b85aca003aa0c785aaca7fa9a8c`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca321df13afe3ede6db6d894de21a7e6c36107a3fdaf191944e9c7fa26327627`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.3`

```console
$ docker pull influxdb@sha256:15f56e82603bcab50742c366e1e1a9d7e686266fa595ec17a5271f1a088af6f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7.3` - linux; amd64

```console
$ docker pull influxdb@sha256:4d4f19e86b0d96fb07af52603e4d686bbac4c80a6c1d29802b81fbe2a6e5a5dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107684641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c8122ccf251d091b11ccb9af0f8de85625bbefc055ff943ef7548e5139eacd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:40 GMT
ENV INFLUXDB_VERSION=1.7.3
# Wed, 23 Jan 2019 05:32:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 05:32:46 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:32:47 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:32:47 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:47 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:47 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:32:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fd16488fde5db07231f522f02dd2d0e7650c56294116bbe5ff63253cbc98e9`  
		Last Modified: Wed, 23 Jan 2019 05:34:58 GMT  
		Size: 47.2 MB (47214484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e09a4069c79b492ce7a13806a2f23c4fe37670966c8d2d9266d54c66194c7b`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f13864cb57694f78b697068ed52096d86406bddc08a3517df68b4413dcb77a9`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824b0689cd61bc0d102f8b8bc481dc74450c887ad763bd3b4fd83c94542edf44`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:018964274daf9107971425e8d757193776ed3c8e509db96ed9cc74eff00f2cd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.8 MB (99839320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59eda1d7693748778fe6c551abfa4ce8dc0d447d8381b52361a159f83a2539e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:40:14 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:40:54 GMT
ENV INFLUXDB_VERSION=1.7.3
# Wed, 23 Jan 2019 18:41:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 18:41:13 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 18:41:13 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 18:41:14 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 18:41:15 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:41:15 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 18:41:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:41:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ce6b5337db01095e1717eb4b9cdda65a0930d567ebef3d5a0950bab671ace0`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95a4f094fa213530f379a98353dbb34582d30632077f5d428a2dfeee4d2f8c9`  
		Last Modified: Wed, 23 Jan 2019 18:42:40 GMT  
		Size: 44.3 MB (44348301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017ae6870d73c9951d446c1c72465d5c5dea915d8a0fd852802d24cd0f455103`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7bac7d9b3f70639c1e6bedfda7af0e4fcc41367d5b3519c0de2b695c3335a1`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6306c934d6fbb52105b6bec97b5e7914e9f84255cb8249fe19f9fd13cf1484e3`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:64f33ee345b9bbb86ddfc49931049dfb5014dd07f0aad154fe83fd12a58d5dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100600409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e343e53b1ebbb4faf4e8b78dfa2fef3dd93e91a9c52c26b3dfa8fc83c2cf5b9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:13:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 15 Jan 2019 09:59:08 GMT
ENV INFLUXDB_VERSION=1.7.3
# Tue, 15 Jan 2019 09:59:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 15 Jan 2019 09:59:22 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 15 Jan 2019 09:59:22 GMT
EXPOSE 8086
# Tue, 15 Jan 2019 09:59:23 GMT
VOLUME [/var/lib/influxdb]
# Tue, 15 Jan 2019 09:59:24 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 15 Jan 2019 09:59:24 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 15 Jan 2019 09:59:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Jan 2019 09:59:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43417a90a8f0919e15eae3e7e020e9281bbb5832477d7350d1c4a6d475c04e3f`  
		Last Modified: Sun, 30 Dec 2018 01:15:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c934662103c2716cc8280bca1fb0ac2e085a3c61b6a603fb68bfe20fd27e6b1`  
		Last Modified: Tue, 15 Jan 2019 09:59:58 GMT  
		Size: 43.7 MB (43657708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164b25161960191c9591e720a98cc18861e5c085f9511c7c151dc130ff35f004`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec27f8bf8f2025967fbf1a73d9d880fdd085b85aca003aa0c785aaca7fa9a8c`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca321df13afe3ede6db6d894de21a7e6c36107a3fdaf191944e9c7fa26327627`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.3-alpine`

```console
$ docker pull influxdb@sha256:b1e5845a525ea24463c807ae4939caa9c62647e322c7d9d9fe7d9242e828ea94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4e60de1e2aa3aefc14c5d1081e4e77762b3baf4ab88758875b59f755891e79ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51089328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf539f0f716c68bfc459cfafe20b4e18800f9573e46e4a9233a8e4c5a6b8802`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Tue, 15 Jan 2019 00:20:46 GMT
ENV INFLUXDB_VERSION=1.7.3
# Tue, 15 Jan 2019 00:20:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 15 Jan 2019 00:20:55 GMT
EXPOSE 8086
# Tue, 15 Jan 2019 00:20:55 GMT
VOLUME [/var/lib/influxdb]
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 15 Jan 2019 00:20:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Jan 2019 00:20:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c8fce14b88bb1221ade1a7a7fe61c921264c58f11bf37ee457013830a9499f`  
		Last Modified: Tue, 15 Jan 2019 00:21:41 GMT  
		Size: 47.0 MB (47010111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229583dcf5ae97b80d263abc44aa570d85faac78438abb9d4607a44be4462a1e`  
		Last Modified: Tue, 15 Jan 2019 00:21:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9d38038b1ef50305187b893e477a2af39971aa8a006170c2836ae66397dc48`  
		Last Modified: Tue, 15 Jan 2019 00:21:34 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbfc15a7254e61a50af2cded0951497b15a8a9e6b21680605640e98fb1f94a9`  
		Last Modified: Tue, 15 Jan 2019 00:21:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-alpine`

```console
$ docker pull influxdb@sha256:b1e5845a525ea24463c807ae4939caa9c62647e322c7d9d9fe7d9242e828ea94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4e60de1e2aa3aefc14c5d1081e4e77762b3baf4ab88758875b59f755891e79ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51089328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf539f0f716c68bfc459cfafe20b4e18800f9573e46e4a9233a8e4c5a6b8802`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Tue, 15 Jan 2019 00:20:46 GMT
ENV INFLUXDB_VERSION=1.7.3
# Tue, 15 Jan 2019 00:20:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 15 Jan 2019 00:20:55 GMT
EXPOSE 8086
# Tue, 15 Jan 2019 00:20:55 GMT
VOLUME [/var/lib/influxdb]
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 15 Jan 2019 00:20:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Jan 2019 00:20:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c8fce14b88bb1221ade1a7a7fe61c921264c58f11bf37ee457013830a9499f`  
		Last Modified: Tue, 15 Jan 2019 00:21:41 GMT  
		Size: 47.0 MB (47010111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229583dcf5ae97b80d263abc44aa570d85faac78438abb9d4607a44be4462a1e`  
		Last Modified: Tue, 15 Jan 2019 00:21:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9d38038b1ef50305187b893e477a2af39971aa8a006170c2836ae66397dc48`  
		Last Modified: Tue, 15 Jan 2019 00:21:34 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbfc15a7254e61a50af2cded0951497b15a8a9e6b21680605640e98fb1f94a9`  
		Last Modified: Tue, 15 Jan 2019 00:21:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:b1e5845a525ea24463c807ae4939caa9c62647e322c7d9d9fe7d9242e828ea94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4e60de1e2aa3aefc14c5d1081e4e77762b3baf4ab88758875b59f755891e79ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51089328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf539f0f716c68bfc459cfafe20b4e18800f9573e46e4a9233a8e4c5a6b8802`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Tue, 15 Jan 2019 00:20:46 GMT
ENV INFLUXDB_VERSION=1.7.3
# Tue, 15 Jan 2019 00:20:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 15 Jan 2019 00:20:55 GMT
EXPOSE 8086
# Tue, 15 Jan 2019 00:20:55 GMT
VOLUME [/var/lib/influxdb]
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 15 Jan 2019 00:20:55 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 15 Jan 2019 00:20:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Jan 2019 00:20:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c8fce14b88bb1221ade1a7a7fe61c921264c58f11bf37ee457013830a9499f`  
		Last Modified: Tue, 15 Jan 2019 00:21:41 GMT  
		Size: 47.0 MB (47010111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229583dcf5ae97b80d263abc44aa570d85faac78438abb9d4607a44be4462a1e`  
		Last Modified: Tue, 15 Jan 2019 00:21:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9d38038b1ef50305187b893e477a2af39971aa8a006170c2836ae66397dc48`  
		Last Modified: Tue, 15 Jan 2019 00:21:34 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbfc15a7254e61a50af2cded0951497b15a8a9e6b21680605640e98fb1f94a9`  
		Last Modified: Tue, 15 Jan 2019 00:21:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:91689ead6dcf10c5d98db8d5b0ad7492dfd6cfce66158d45a85c8457aa578729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:d7e0cd6643643e7566cbe1da5bf989864b9c84375037711a63db5e7394b87d2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87043927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a4a584d0eb58b6cb30ccfe9d167309dc05f5e4fada047f6b6c766f61d6535f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:18 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 23 Jan 2019 05:32:22 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:32:22 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:32:22 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:32:23 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:23 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:23 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:32:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37364a5ec6d633289bb1fd5425607ecdb107d63be7d5492e39ba170e3b129f`  
		Last Modified: Wed, 23 Jan 2019 05:34:27 GMT  
		Size: 26.6 MB (26573712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d83388727f1279aac5ce2d5825fbfb4ef8a42538759de331e3d8bf3f9092b4`  
		Last Modified: Wed, 23 Jan 2019 05:34:18 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0951f0e943c7bff11c5eb80d941664199a8a82751b4e79287bd8e0cf2242bb`  
		Last Modified: Wed, 23 Jan 2019 05:34:19 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2b3720ffb289807e45ea2717040d261ecade92a4b6bb60c63e06bef7cfb475`  
		Last Modified: Wed, 23 Jan 2019 05:34:19 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:a7fe479510ca0f056d5a28a49b526dba0231dcd0767f352cf079d151af5333a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5a4f3d366cfcf486d248fa83489edc5a3fb0ad75f2b295dccc538b54e5932495
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30531237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30dabbcdc81f62aca7cc6d9644380a14ba18f4754189407e73f9b2f408f7d5bf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:20:38 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 10 Jan 2019 22:20:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:44 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 10 Jan 2019 22:20:44 GMT
EXPOSE 8086
# Thu, 10 Jan 2019 22:20:45 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:20:45 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:20:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 10 Jan 2019 22:20:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:20:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f270359c30d9b7fd6a0303ef8dd99b93cbeccc818b6d144592ecaddaa3dda331`  
		Last Modified: Thu, 10 Jan 2019 22:22:38 GMT  
		Size: 26.5 MB (26451960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7be3cfbd39f2b12c1a6319931cb75460b3342b03cf333001c9ca5b246615e62`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890da5665bc7bebfce600dcae801d06b43e33c4c704b122bd728c9a92363ec5b`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7c8b40bb0c70a8e6e8583648ce0ce9df9389c78cc333e43934a10cf5dab87c`  
		Last Modified: Thu, 10 Jan 2019 22:22:32 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:15f56e82603bcab50742c366e1e1a9d7e686266fa595ec17a5271f1a088af6f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:4d4f19e86b0d96fb07af52603e4d686bbac4c80a6c1d29802b81fbe2a6e5a5dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107684641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c8122ccf251d091b11ccb9af0f8de85625bbefc055ff943ef7548e5139eacd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:40 GMT
ENV INFLUXDB_VERSION=1.7.3
# Wed, 23 Jan 2019 05:32:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 05:32:46 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 05:32:47 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 05:32:47 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:47 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:47 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 05:32:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fd16488fde5db07231f522f02dd2d0e7650c56294116bbe5ff63253cbc98e9`  
		Last Modified: Wed, 23 Jan 2019 05:34:58 GMT  
		Size: 47.2 MB (47214484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e09a4069c79b492ce7a13806a2f23c4fe37670966c8d2d9266d54c66194c7b`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f13864cb57694f78b697068ed52096d86406bddc08a3517df68b4413dcb77a9`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824b0689cd61bc0d102f8b8bc481dc74450c887ad763bd3b4fd83c94542edf44`  
		Last Modified: Wed, 23 Jan 2019 05:34:46 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:018964274daf9107971425e8d757193776ed3c8e509db96ed9cc74eff00f2cd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.8 MB (99839320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59eda1d7693748778fe6c551abfa4ce8dc0d447d8381b52361a159f83a2539e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:40:14 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:40:54 GMT
ENV INFLUXDB_VERSION=1.7.3
# Wed, 23 Jan 2019 18:41:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 23 Jan 2019 18:41:13 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 23 Jan 2019 18:41:13 GMT
EXPOSE 8086
# Wed, 23 Jan 2019 18:41:14 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 18:41:15 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:41:15 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 23 Jan 2019 18:41:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:41:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ce6b5337db01095e1717eb4b9cdda65a0930d567ebef3d5a0950bab671ace0`  
		Last Modified: Wed, 23 Jan 2019 18:41:37 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95a4f094fa213530f379a98353dbb34582d30632077f5d428a2dfeee4d2f8c9`  
		Last Modified: Wed, 23 Jan 2019 18:42:40 GMT  
		Size: 44.3 MB (44348301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017ae6870d73c9951d446c1c72465d5c5dea915d8a0fd852802d24cd0f455103`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7bac7d9b3f70639c1e6bedfda7af0e4fcc41367d5b3519c0de2b695c3335a1`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6306c934d6fbb52105b6bec97b5e7914e9f84255cb8249fe19f9fd13cf1484e3`  
		Last Modified: Wed, 23 Jan 2019 18:42:13 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:64f33ee345b9bbb86ddfc49931049dfb5014dd07f0aad154fe83fd12a58d5dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100600409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e343e53b1ebbb4faf4e8b78dfa2fef3dd93e91a9c52c26b3dfa8fc83c2cf5b9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:13:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 15 Jan 2019 09:59:08 GMT
ENV INFLUXDB_VERSION=1.7.3
# Tue, 15 Jan 2019 09:59:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 15 Jan 2019 09:59:22 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 15 Jan 2019 09:59:22 GMT
EXPOSE 8086
# Tue, 15 Jan 2019 09:59:23 GMT
VOLUME [/var/lib/influxdb]
# Tue, 15 Jan 2019 09:59:24 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 15 Jan 2019 09:59:24 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 15 Jan 2019 09:59:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Jan 2019 09:59:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43417a90a8f0919e15eae3e7e020e9281bbb5832477d7350d1c4a6d475c04e3f`  
		Last Modified: Sun, 30 Dec 2018 01:15:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c934662103c2716cc8280bca1fb0ac2e085a3c61b6a603fb68bfe20fd27e6b1`  
		Last Modified: Tue, 15 Jan 2019 09:59:58 GMT  
		Size: 43.7 MB (43657708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164b25161960191c9591e720a98cc18861e5c085f9511c7c151dc130ff35f004`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec27f8bf8f2025967fbf1a73d9d880fdd085b85aca003aa0c785aaca7fa9a8c`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca321df13afe3ede6db6d894de21a7e6c36107a3fdaf191944e9c7fa26327627`  
		Last Modified: Tue, 15 Jan 2019 09:59:44 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:87a0ab9d8b74f1f0326387bd4b2c4133e2baba52103dfeb9756cdc04eb4464e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:de69309798c22f2fc33f03a1d009751962a8efd7ad06279554c6bbf02d1bb9df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed219ba96c59d43521f4f5afddcbad6ad979e98b72f27e295d0eb2b67ab77678`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:31:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:32:18 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Wed, 23 Jan 2019 05:32:31 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 23 Jan 2019 05:32:31 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 23 Jan 2019 05:32:31 GMT
EXPOSE 8091
# Wed, 23 Jan 2019 05:32:31 GMT
VOLUME [/var/lib/influxdb]
# Wed, 23 Jan 2019 05:32:32 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:32:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:32:32 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11baea143ccb569952a8211b10800831169b7250d670ba1eecc84069d27926d2`  
		Last Modified: Wed, 23 Jan 2019 05:33:31 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9baab1bac250216976059605ce23e1e3c8664f53b22e06d5ad638d8a4d73ee6f`  
		Last Modified: Wed, 23 Jan 2019 05:34:40 GMT  
		Size: 12.5 MB (12547565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c34cd9e08e7024d36aa755be6298b6453f2317054cb9fcdba7afe74a0cdeae0`  
		Last Modified: Wed, 23 Jan 2019 05:34:35 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf94b32ce1f1667d97fbf2ad216ac64a3156d18844b7b4e0fa82cf26c6b6ab`  
		Last Modified: Wed, 23 Jan 2019 05:34:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:3eac9814c6345357c0804b351f7073f4df59e1b2a36e1547ab14ba8bae5ee776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4b1b5f5a6bd6ec8c4950387885e40688ad9e07a01357f53f94e487dae1c411be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16582800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb49dee470e35bf30019f0b7439e68d23f16c3ddd59297c06cad3c4cfe487ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:20:38 GMT
ENV INFLUXDB_VERSION=1.6.5-c1.6.5
# Thu, 10 Jan 2019 22:20:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:20:59 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 10 Jan 2019 22:20:59 GMT
EXPOSE 8091
# Thu, 10 Jan 2019 22:21:00 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Jan 2019 22:21:00 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:21:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:21:00 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f700e0cf8f0ad9efaad83ad2522523b7f05f277647c44ce57cfcc220a4063e`  
		Last Modified: Thu, 10 Jan 2019 22:21:34 GMT  
		Size: 1.9 MB (1870438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e1bbd5720f3a89f14acd9fa7be4c8c0e47fcaafcc89bb886687fa9806f99d6`  
		Last Modified: Thu, 10 Jan 2019 22:22:53 GMT  
		Size: 12.5 MB (12504614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792374c44bb653b273c75bf554298e78c3a2d317e4c57c16ac75a7ba0aeeecc7`  
		Last Modified: Thu, 10 Jan 2019 22:22:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9d68b4334c4ca30af4ac1e25a49636129ab78d84fb0bc6ef95eb66794b1a78`  
		Last Modified: Thu, 10 Jan 2019 22:22:50 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
