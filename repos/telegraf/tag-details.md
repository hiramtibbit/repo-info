<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.4`](#telegraf14)
-	[`telegraf:1.4.5`](#telegraf145)
-	[`telegraf:1.4.5-alpine`](#telegraf145-alpine)
-	[`telegraf:1.4-alpine`](#telegraf14-alpine)
-	[`telegraf:1.5`](#telegraf15)
-	[`telegraf:1.5.3`](#telegraf153)
-	[`telegraf:1.5.3-alpine`](#telegraf153-alpine)
-	[`telegraf:1.5-alpine`](#telegraf15-alpine)
-	[`telegraf:1.6`](#telegraf16)
-	[`telegraf:1.6.0`](#telegraf160)
-	[`telegraf:1.6.0-alpine`](#telegraf160-alpine)
-	[`telegraf:1.6-alpine`](#telegraf16-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.4`

```console
$ docker pull telegraf@sha256:01cfec3ca4e880d30935f4c41d1cbc918b256c922914bdd7f9f85b82cf6eb211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.4` - linux; amd64

```console
$ docker pull telegraf@sha256:502def085cd82e1c1235fee193c662fb73f7051e6ed01bdf3691d6fb73b8992c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85138579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471d7f00b300a6958faf198303ea879b85a49b451b9bade337baaa48762f7b46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:36:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:41:47 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 07:41:47 GMT
ENV TELEGRAF_VERSION=1.4.5
# Thu, 15 Mar 2018 07:41:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 15 Mar 2018 07:41:49 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 15 Mar 2018 07:41:49 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 15 Mar 2018 07:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 07:41:50 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca978136a6040d4a547f4450641f1947cb83c04c266170a3be2105486e4fc0c3`  
		Last Modified: Thu, 15 Mar 2018 07:43:03 GMT  
		Size: 15.6 MB (15583632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ced8c5ee4b1b54650bd35820bc482f1ed3fb063297f101f7c0aeb6c25c43d6`  
		Last Modified: Thu, 15 Mar 2018 07:43:01 GMT  
		Size: 2.9 KB (2893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a46c2e6812ee89e4708e875a2d68ac107ac6ee7d5258da0f2eec5843b2a1e6e`  
		Last Modified: Thu, 15 Mar 2018 07:43:03 GMT  
		Size: 9.0 MB (8973287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ea67238336045dc0b69861e75215a3ab5bfb81864393fdf829b14e4edd3fbc`  
		Last Modified: Thu, 15 Mar 2018 07:43:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:91a467e7150b57db7f7ae35e8d7986937616c2eacc6d432a781e25793500f298
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78622516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b761cdd1420c66db147550da90e1adba5392c3b88eff8ea36f7ceb0fc3c67b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 29 Mar 2018 02:32:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 02:32:56 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 29 Mar 2018 02:32:56 GMT
ENV TELEGRAF_VERSION=1.4.5
# Thu, 29 Mar 2018 02:32:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 29 Mar 2018 02:32:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 29 Mar 2018 02:33:00 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 29 Mar 2018 02:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Mar 2018 02:33:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d722e35768ef3a934a64b28070e97d7bc0a66e0493da13ed194bf6fea09aa343`  
		Last Modified: Thu, 29 Mar 2018 02:33:42 GMT  
		Size: 14.5 MB (14470654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952f015ea4b7dd02c2432eb5446274029e5b708eb94229519c7dbd2823e04d60`  
		Last Modified: Thu, 29 Mar 2018 02:33:37 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043aa273e85df6c502bfb050bcc7976b4d9ddfc4519b9d99d98e78945042ee4d`  
		Last Modified: Thu, 29 Mar 2018 02:33:41 GMT  
		Size: 8.6 MB (8553897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074036b06c81a949a7174a5a1c0b622f84fe500c655a49f1156df73be246fc49`  
		Last Modified: Thu, 29 Mar 2018 02:33:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0b5db14d0ebf8f969ab1d49a08494d1c0551428c5b5335b7b1bc6b3d5f56418b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80626293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c99279749bd4147b57ba4cb72b96110a49656ea161f16efb04a33750182f22`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:04:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:05:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 05:05:14 GMT
ENV TELEGRAF_VERSION=1.4.5
# Thu, 15 Mar 2018 05:05:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 15 Mar 2018 05:05:22 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 15 Mar 2018 05:05:23 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 15 Mar 2018 05:05:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 05:05:24 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1853da12488818798afc6dcfb6526a9b01cb550ff1d1b6b08e686c94cedad4da`  
		Last Modified: Thu, 15 Mar 2018 05:07:57 GMT  
		Size: 15.2 MB (15162483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffa2e9ffbc4df388d52b8d9695122311a8df1d6cb13355a595d653b182550f1`  
		Last Modified: Thu, 15 Mar 2018 05:07:43 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f86741820ba2a22944f5c68f21726cd4005503aa8be53136963fd8681ea8745`  
		Last Modified: Thu, 15 Mar 2018 05:07:52 GMT  
		Size: 8.4 MB (8398452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad234a70fae2cdfd8a5f458e91fa733a6f10ad88a09eb0d18bf263e4d5782a`  
		Last Modified: Thu, 15 Mar 2018 05:07:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4.5`

```console
$ docker pull telegraf@sha256:01cfec3ca4e880d30935f4c41d1cbc918b256c922914bdd7f9f85b82cf6eb211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.4.5` - linux; amd64

```console
$ docker pull telegraf@sha256:502def085cd82e1c1235fee193c662fb73f7051e6ed01bdf3691d6fb73b8992c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85138579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471d7f00b300a6958faf198303ea879b85a49b451b9bade337baaa48762f7b46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:36:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:41:47 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 07:41:47 GMT
ENV TELEGRAF_VERSION=1.4.5
# Thu, 15 Mar 2018 07:41:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 15 Mar 2018 07:41:49 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 15 Mar 2018 07:41:49 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 15 Mar 2018 07:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 07:41:50 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca978136a6040d4a547f4450641f1947cb83c04c266170a3be2105486e4fc0c3`  
		Last Modified: Thu, 15 Mar 2018 07:43:03 GMT  
		Size: 15.6 MB (15583632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ced8c5ee4b1b54650bd35820bc482f1ed3fb063297f101f7c0aeb6c25c43d6`  
		Last Modified: Thu, 15 Mar 2018 07:43:01 GMT  
		Size: 2.9 KB (2893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a46c2e6812ee89e4708e875a2d68ac107ac6ee7d5258da0f2eec5843b2a1e6e`  
		Last Modified: Thu, 15 Mar 2018 07:43:03 GMT  
		Size: 9.0 MB (8973287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ea67238336045dc0b69861e75215a3ab5bfb81864393fdf829b14e4edd3fbc`  
		Last Modified: Thu, 15 Mar 2018 07:43:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:91a467e7150b57db7f7ae35e8d7986937616c2eacc6d432a781e25793500f298
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78622516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b761cdd1420c66db147550da90e1adba5392c3b88eff8ea36f7ceb0fc3c67b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 29 Mar 2018 02:32:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 02:32:56 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 29 Mar 2018 02:32:56 GMT
ENV TELEGRAF_VERSION=1.4.5
# Thu, 29 Mar 2018 02:32:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 29 Mar 2018 02:32:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 29 Mar 2018 02:33:00 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 29 Mar 2018 02:33:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Mar 2018 02:33:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d722e35768ef3a934a64b28070e97d7bc0a66e0493da13ed194bf6fea09aa343`  
		Last Modified: Thu, 29 Mar 2018 02:33:42 GMT  
		Size: 14.5 MB (14470654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952f015ea4b7dd02c2432eb5446274029e5b708eb94229519c7dbd2823e04d60`  
		Last Modified: Thu, 29 Mar 2018 02:33:37 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043aa273e85df6c502bfb050bcc7976b4d9ddfc4519b9d99d98e78945042ee4d`  
		Last Modified: Thu, 29 Mar 2018 02:33:41 GMT  
		Size: 8.6 MB (8553897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074036b06c81a949a7174a5a1c0b622f84fe500c655a49f1156df73be246fc49`  
		Last Modified: Thu, 29 Mar 2018 02:33:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0b5db14d0ebf8f969ab1d49a08494d1c0551428c5b5335b7b1bc6b3d5f56418b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80626293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c99279749bd4147b57ba4cb72b96110a49656ea161f16efb04a33750182f22`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:04:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:05:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 05:05:14 GMT
ENV TELEGRAF_VERSION=1.4.5
# Thu, 15 Mar 2018 05:05:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 15 Mar 2018 05:05:22 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 15 Mar 2018 05:05:23 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 15 Mar 2018 05:05:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 05:05:24 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1853da12488818798afc6dcfb6526a9b01cb550ff1d1b6b08e686c94cedad4da`  
		Last Modified: Thu, 15 Mar 2018 05:07:57 GMT  
		Size: 15.2 MB (15162483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffa2e9ffbc4df388d52b8d9695122311a8df1d6cb13355a595d653b182550f1`  
		Last Modified: Thu, 15 Mar 2018 05:07:43 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f86741820ba2a22944f5c68f21726cd4005503aa8be53136963fd8681ea8745`  
		Last Modified: Thu, 15 Mar 2018 05:07:52 GMT  
		Size: 8.4 MB (8398452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad234a70fae2cdfd8a5f458e91fa733a6f10ad88a09eb0d18bf263e4d5782a`  
		Last Modified: Thu, 15 Mar 2018 05:07:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4.5-alpine`

```console
$ docker pull telegraf@sha256:c3eadb613f7c7f807ca2948dcec8339975b126004964a44352629a795b535f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.4.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a5afe3c1ee4b5532b6b33fd5a0346a82df314e3df5b8243fc1ad6d76283e269d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13727064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c420ebd68d8531307a4d33bdb0da708ed42b1a76a148c3b3c5893c1c6e7edd8f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Wed, 10 Jan 2018 03:04:44 GMT
ENV TELEGRAF_VERSION=1.4.5
# Wed, 14 Feb 2018 22:26:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 22:26:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 14 Feb 2018 22:26:31 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 14 Feb 2018 22:26:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 22:26:32 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6185ff0ddb08af7599bf3084707d8b3b0f3255b34a294a702e7a0182681555`  
		Last Modified: Wed, 14 Feb 2018 22:28:37 GMT  
		Size: 8.9 MB (8938585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1a069ac21f80125b9456bac783a1826b931bb938f977d42496365a12f8af6d`  
		Last Modified: Wed, 14 Feb 2018 22:28:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4-alpine`

```console
$ docker pull telegraf@sha256:c3eadb613f7c7f807ca2948dcec8339975b126004964a44352629a795b535f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a5afe3c1ee4b5532b6b33fd5a0346a82df314e3df5b8243fc1ad6d76283e269d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13727064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c420ebd68d8531307a4d33bdb0da708ed42b1a76a148c3b3c5893c1c6e7edd8f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Wed, 10 Jan 2018 03:04:44 GMT
ENV TELEGRAF_VERSION=1.4.5
# Wed, 14 Feb 2018 22:26:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 22:26:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 14 Feb 2018 22:26:31 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 14 Feb 2018 22:26:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 22:26:32 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6185ff0ddb08af7599bf3084707d8b3b0f3255b34a294a702e7a0182681555`  
		Last Modified: Wed, 14 Feb 2018 22:28:37 GMT  
		Size: 8.9 MB (8938585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1a069ac21f80125b9456bac783a1826b931bb938f977d42496365a12f8af6d`  
		Last Modified: Wed, 14 Feb 2018 22:28:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5`

```console
$ docker pull telegraf@sha256:ea17bf7521d2f45b118aced833aa936c4cd2b12657618fbf24d761ed7caee630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.5` - linux; amd64

```console
$ docker pull telegraf@sha256:578b02c252a23d5b43fd8ec60d52a99684bdf58ba830c240ee1690c9ef95c1a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85741182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33169b9efc59a8c74ee29583efab4659331139f7750fb38f80abf771531c515`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:42:14 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:42:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 13:47:29 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 13:47:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 16 Mar 2018 13:47:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 13:47:34 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Mar 2018 13:47:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:47:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6831bc7f1aa489ebb5bee62c23059daffda4956d55242c85ce931be715dcbbf7`  
		Last Modified: Thu, 15 Mar 2018 07:43:45 GMT  
		Size: 15.7 MB (15667775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e5ed26a251754a48002451a7989d02e6f787d79206d558af6d01f2eba7067c`  
		Last Modified: Thu, 15 Mar 2018 07:43:41 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a51bfa1e7e4fdfb7a0801fda41daae8d7d1c1827a5d6dea3b698b80081f06d`  
		Last Modified: Fri, 16 Mar 2018 13:48:24 GMT  
		Size: 9.5 MB (9491750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621c262280846b6d0a7d06f5f1c5dc3ec58d75f6407a4e81becc034c1e62ed3e`  
		Last Modified: Fri, 16 Mar 2018 13:48:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:415e700fe76ffb1e8ae0f1d63fdc5795de1a08a5b9b01ccddac0ea97de399f10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79077024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebb8f9a61068c1827ba16b22c72ebbc6be13c4bbc827cb6193a3d9983012f837`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 29 Mar 2018 02:33:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 02:33:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 29 Mar 2018 02:33:19 GMT
ENV TELEGRAF_VERSION=1.5.3
# Thu, 29 Mar 2018 02:33:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 29 Mar 2018 02:33:25 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 29 Mar 2018 02:33:26 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 29 Mar 2018 02:33:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Mar 2018 02:33:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e584d1f8f71b367fa54f2620893e5be9aa5c360248c893a827005c750294ce9`  
		Last Modified: Thu, 29 Mar 2018 02:34:00 GMT  
		Size: 14.5 MB (14545781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8909b070b6f823ca0c6cae1fd2c7155eaa132e10f0501564f32d3067b4e36401`  
		Last Modified: Thu, 29 Mar 2018 02:33:53 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a3a5526696e317412dec71a8cb3ed480f86c0767acf91f8fc99734f3f4be70`  
		Last Modified: Thu, 29 Mar 2018 02:33:56 GMT  
		Size: 8.9 MB (8933284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48909204bcda12c206f71af960ccd4c060f4c152173ef8e93c601bdc9b97625`  
		Last Modified: Thu, 29 Mar 2018 02:33:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:3d6591c83b1aced6e378fea363cd0e748b2195d508fb3509c4a11605276ca2ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81016899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdf51b83d2df8e0b8cc32acc867d00ac7f3c99c7b496e9ee9e08e6a222b862f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:06:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:06:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 09:51:30 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 09:51:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 16 Mar 2018 09:51:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 09:51:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Mar 2018 09:51:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 09:51:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa280517f154d314b9fd294d867040682a353ea9a1c30062cfaa914bd85d18bd`  
		Last Modified: Thu, 15 Mar 2018 05:09:14 GMT  
		Size: 15.2 MB (15240231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d706b7ef3b439a2b8d8deb8aed0f2a270c37582faabc6c8c4fbe469fcf3626e`  
		Last Modified: Thu, 15 Mar 2018 05:09:00 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b2de92ae862916097ec2d82a7599b2d0e9d8fee1a7462be26281c699fc4741`  
		Last Modified: Fri, 16 Mar 2018 09:52:28 GMT  
		Size: 8.7 MB (8711323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b972af790897663fd4216341b1a4c6ec85aea658050f2000a03df425dd963`  
		Last Modified: Fri, 16 Mar 2018 09:52:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5.3`

```console
$ docker pull telegraf@sha256:ea17bf7521d2f45b118aced833aa936c4cd2b12657618fbf24d761ed7caee630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.5.3` - linux; amd64

```console
$ docker pull telegraf@sha256:578b02c252a23d5b43fd8ec60d52a99684bdf58ba830c240ee1690c9ef95c1a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85741182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33169b9efc59a8c74ee29583efab4659331139f7750fb38f80abf771531c515`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:42:14 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:42:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 13:47:29 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 13:47:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 16 Mar 2018 13:47:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 13:47:34 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Mar 2018 13:47:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:47:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6831bc7f1aa489ebb5bee62c23059daffda4956d55242c85ce931be715dcbbf7`  
		Last Modified: Thu, 15 Mar 2018 07:43:45 GMT  
		Size: 15.7 MB (15667775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e5ed26a251754a48002451a7989d02e6f787d79206d558af6d01f2eba7067c`  
		Last Modified: Thu, 15 Mar 2018 07:43:41 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a51bfa1e7e4fdfb7a0801fda41daae8d7d1c1827a5d6dea3b698b80081f06d`  
		Last Modified: Fri, 16 Mar 2018 13:48:24 GMT  
		Size: 9.5 MB (9491750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621c262280846b6d0a7d06f5f1c5dc3ec58d75f6407a4e81becc034c1e62ed3e`  
		Last Modified: Fri, 16 Mar 2018 13:48:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:415e700fe76ffb1e8ae0f1d63fdc5795de1a08a5b9b01ccddac0ea97de399f10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79077024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebb8f9a61068c1827ba16b22c72ebbc6be13c4bbc827cb6193a3d9983012f837`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 29 Mar 2018 02:33:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 02:33:19 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 29 Mar 2018 02:33:19 GMT
ENV TELEGRAF_VERSION=1.5.3
# Thu, 29 Mar 2018 02:33:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 29 Mar 2018 02:33:25 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 29 Mar 2018 02:33:26 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 29 Mar 2018 02:33:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Mar 2018 02:33:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e584d1f8f71b367fa54f2620893e5be9aa5c360248c893a827005c750294ce9`  
		Last Modified: Thu, 29 Mar 2018 02:34:00 GMT  
		Size: 14.5 MB (14545781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8909b070b6f823ca0c6cae1fd2c7155eaa132e10f0501564f32d3067b4e36401`  
		Last Modified: Thu, 29 Mar 2018 02:33:53 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a3a5526696e317412dec71a8cb3ed480f86c0767acf91f8fc99734f3f4be70`  
		Last Modified: Thu, 29 Mar 2018 02:33:56 GMT  
		Size: 8.9 MB (8933284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48909204bcda12c206f71af960ccd4c060f4c152173ef8e93c601bdc9b97625`  
		Last Modified: Thu, 29 Mar 2018 02:33:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:3d6591c83b1aced6e378fea363cd0e748b2195d508fb3509c4a11605276ca2ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81016899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdf51b83d2df8e0b8cc32acc867d00ac7f3c99c7b496e9ee9e08e6a222b862f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:06:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:06:45 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 09:51:30 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 09:51:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 16 Mar 2018 09:51:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 09:51:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Mar 2018 09:51:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 09:51:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa280517f154d314b9fd294d867040682a353ea9a1c30062cfaa914bd85d18bd`  
		Last Modified: Thu, 15 Mar 2018 05:09:14 GMT  
		Size: 15.2 MB (15240231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d706b7ef3b439a2b8d8deb8aed0f2a270c37582faabc6c8c4fbe469fcf3626e`  
		Last Modified: Thu, 15 Mar 2018 05:09:00 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b2de92ae862916097ec2d82a7599b2d0e9d8fee1a7462be26281c699fc4741`  
		Last Modified: Fri, 16 Mar 2018 09:52:28 GMT  
		Size: 8.7 MB (8711323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b972af790897663fd4216341b1a4c6ec85aea658050f2000a03df425dd963`  
		Last Modified: Fri, 16 Mar 2018 09:52:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5.3-alpine`

```console
$ docker pull telegraf@sha256:a70ce3dfbbfb1063ac8d7bedad21c4265eeaf46580f8c9f11477b7a9489cf298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.5.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9eb97d28411ecc5c6b7e63a4852c02ef23fded10c22e8e412c7555a5965b5ae2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14247488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde82a146818b02adb20355c8f355f74e3cfe1033f888d5408261b53a7573aac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Fri, 16 Mar 2018 13:47:51 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 13:47:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:47:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 13:47:59 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:48:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:48:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870fc8f7a153c8bc5615b84bef0f932e297bcdf06a727964f0afaf2ceb5eee1c`  
		Last Modified: Fri, 16 Mar 2018 13:49:23 GMT  
		Size: 9.5 MB (9459011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c9fa177bd9af1f9e86481bea47031d837b894c711cdef8569c8e9d796e4f36`  
		Last Modified: Fri, 16 Mar 2018 13:49:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5-alpine`

```console
$ docker pull telegraf@sha256:a70ce3dfbbfb1063ac8d7bedad21c4265eeaf46580f8c9f11477b7a9489cf298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9eb97d28411ecc5c6b7e63a4852c02ef23fded10c22e8e412c7555a5965b5ae2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14247488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde82a146818b02adb20355c8f355f74e3cfe1033f888d5408261b53a7573aac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Fri, 16 Mar 2018 13:47:51 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 13:47:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:47:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 13:47:59 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:48:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:48:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870fc8f7a153c8bc5615b84bef0f932e297bcdf06a727964f0afaf2ceb5eee1c`  
		Last Modified: Fri, 16 Mar 2018 13:49:23 GMT  
		Size: 9.5 MB (9459011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c9fa177bd9af1f9e86481bea47031d837b894c711cdef8569c8e9d796e4f36`  
		Last Modified: Fri, 16 Mar 2018 13:49:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6`

```console
$ docker pull telegraf@sha256:2080c11b44cacced97429409ec4cc8e8fb69de2fbb8f1459a42c01e76a499e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6` - linux; amd64

```console
$ docker pull telegraf@sha256:0e150118a797c9ae51883ba90320cad537d00ae5ad6e375d4abbc5acc97ccefb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86124326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9159541933d7d076c3f6c18909ed7e77c61f32545a7375cea5d72953a22d24be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:42:14 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:42:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Apr 2018 19:51:13 GMT
ENV TELEGRAF_VERSION=1.6.0
# Wed, 18 Apr 2018 19:51:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Apr 2018 19:51:18 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Apr 2018 19:51:18 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Apr 2018 19:51:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 19:51:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6831bc7f1aa489ebb5bee62c23059daffda4956d55242c85ce931be715dcbbf7`  
		Last Modified: Thu, 15 Mar 2018 07:43:45 GMT  
		Size: 15.7 MB (15667775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e5ed26a251754a48002451a7989d02e6f787d79206d558af6d01f2eba7067c`  
		Last Modified: Thu, 15 Mar 2018 07:43:41 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a02f67f1f886b1aa95cce812360f85b0139306b64e451b85fa891ba9acc3de5`  
		Last Modified: Wed, 18 Apr 2018 19:52:33 GMT  
		Size: 9.9 MB (9874895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46492babd9de82999d95c50109fbbc0d9f9ffed6a498ea5f76f5dedbab51df6d`  
		Last Modified: Wed, 18 Apr 2018 19:52:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.0`

```console
$ docker pull telegraf@sha256:2080c11b44cacced97429409ec4cc8e8fb69de2fbb8f1459a42c01e76a499e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6.0` - linux; amd64

```console
$ docker pull telegraf@sha256:0e150118a797c9ae51883ba90320cad537d00ae5ad6e375d4abbc5acc97ccefb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86124326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9159541933d7d076c3f6c18909ed7e77c61f32545a7375cea5d72953a22d24be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:42:14 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:42:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Apr 2018 19:51:13 GMT
ENV TELEGRAF_VERSION=1.6.0
# Wed, 18 Apr 2018 19:51:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Apr 2018 19:51:18 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Apr 2018 19:51:18 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Apr 2018 19:51:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 19:51:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6831bc7f1aa489ebb5bee62c23059daffda4956d55242c85ce931be715dcbbf7`  
		Last Modified: Thu, 15 Mar 2018 07:43:45 GMT  
		Size: 15.7 MB (15667775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e5ed26a251754a48002451a7989d02e6f787d79206d558af6d01f2eba7067c`  
		Last Modified: Thu, 15 Mar 2018 07:43:41 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a02f67f1f886b1aa95cce812360f85b0139306b64e451b85fa891ba9acc3de5`  
		Last Modified: Wed, 18 Apr 2018 19:52:33 GMT  
		Size: 9.9 MB (9874895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46492babd9de82999d95c50109fbbc0d9f9ffed6a498ea5f76f5dedbab51df6d`  
		Last Modified: Wed, 18 Apr 2018 19:52:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.0-alpine`

```console
$ docker pull telegraf@sha256:a95010b575b28f5d5ed10912c8de2e77822a1bc5ada03d1d950d4611140c50b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6.0-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:dffc9832c83b4069a8f4c279d73f3c9e91c43bba12c9d8f724c654d2abeaa5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14634725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4a2f8fd3a6f3a919bf8f8268c214ae7acc2b7676a8480a80f53554af3df3d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Wed, 18 Apr 2018 19:51:39 GMT
ENV TELEGRAF_VERSION=1.6.0
# Wed, 18 Apr 2018 19:51:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 18 Apr 2018 19:52:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Apr 2018 19:52:00 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 18 Apr 2018 19:52:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 19:52:01 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327bb9fb70f750581f807a290425dd2e0470de41985396dbc3cf2d2a997b4a4`  
		Last Modified: Wed, 18 Apr 2018 19:53:41 GMT  
		Size: 9.8 MB (9846246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549a6b61a56cb9310183c8453ec4c880b76b272b23301a45639ad4239c5dcb4`  
		Last Modified: Wed, 18 Apr 2018 19:53:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6-alpine`

```console
$ docker pull telegraf@sha256:a95010b575b28f5d5ed10912c8de2e77822a1bc5ada03d1d950d4611140c50b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:dffc9832c83b4069a8f4c279d73f3c9e91c43bba12c9d8f724c654d2abeaa5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14634725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4a2f8fd3a6f3a919bf8f8268c214ae7acc2b7676a8480a80f53554af3df3d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Wed, 18 Apr 2018 19:51:39 GMT
ENV TELEGRAF_VERSION=1.6.0
# Wed, 18 Apr 2018 19:51:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 18 Apr 2018 19:52:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Apr 2018 19:52:00 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 18 Apr 2018 19:52:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 19:52:01 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327bb9fb70f750581f807a290425dd2e0470de41985396dbc3cf2d2a997b4a4`  
		Last Modified: Wed, 18 Apr 2018 19:53:41 GMT  
		Size: 9.8 MB (9846246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549a6b61a56cb9310183c8453ec4c880b76b272b23301a45639ad4239c5dcb4`  
		Last Modified: Wed, 18 Apr 2018 19:53:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:a95010b575b28f5d5ed10912c8de2e77822a1bc5ada03d1d950d4611140c50b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:dffc9832c83b4069a8f4c279d73f3c9e91c43bba12c9d8f724c654d2abeaa5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14634725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4a2f8fd3a6f3a919bf8f8268c214ae7acc2b7676a8480a80f53554af3df3d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Wed, 18 Apr 2018 19:51:39 GMT
ENV TELEGRAF_VERSION=1.6.0
# Wed, 18 Apr 2018 19:51:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 18 Apr 2018 19:52:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Apr 2018 19:52:00 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 18 Apr 2018 19:52:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 19:52:01 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327bb9fb70f750581f807a290425dd2e0470de41985396dbc3cf2d2a997b4a4`  
		Last Modified: Wed, 18 Apr 2018 19:53:41 GMT  
		Size: 9.8 MB (9846246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549a6b61a56cb9310183c8453ec4c880b76b272b23301a45639ad4239c5dcb4`  
		Last Modified: Wed, 18 Apr 2018 19:53:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:2080c11b44cacced97429409ec4cc8e8fb69de2fbb8f1459a42c01e76a499e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:0e150118a797c9ae51883ba90320cad537d00ae5ad6e375d4abbc5acc97ccefb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86124326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9159541933d7d076c3f6c18909ed7e77c61f32545a7375cea5d72953a22d24be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:42:14 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:42:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Apr 2018 19:51:13 GMT
ENV TELEGRAF_VERSION=1.6.0
# Wed, 18 Apr 2018 19:51:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Apr 2018 19:51:18 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Apr 2018 19:51:18 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Apr 2018 19:51:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 19:51:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6831bc7f1aa489ebb5bee62c23059daffda4956d55242c85ce931be715dcbbf7`  
		Last Modified: Thu, 15 Mar 2018 07:43:45 GMT  
		Size: 15.7 MB (15667775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e5ed26a251754a48002451a7989d02e6f787d79206d558af6d01f2eba7067c`  
		Last Modified: Thu, 15 Mar 2018 07:43:41 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a02f67f1f886b1aa95cce812360f85b0139306b64e451b85fa891ba9acc3de5`  
		Last Modified: Wed, 18 Apr 2018 19:52:33 GMT  
		Size: 9.9 MB (9874895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46492babd9de82999d95c50109fbbc0d9f9ffed6a498ea5f76f5dedbab51df6d`  
		Last Modified: Wed, 18 Apr 2018 19:52:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
