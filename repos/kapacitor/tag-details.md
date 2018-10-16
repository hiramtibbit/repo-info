<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.4`](#kapacitor14)
-	[`kapacitor:1.4.1`](#kapacitor141)
-	[`kapacitor:1.4.1-alpine`](#kapacitor141-alpine)
-	[`kapacitor:1.4-alpine`](#kapacitor14-alpine)
-	[`kapacitor:1.5`](#kapacitor15)
-	[`kapacitor:1.5.1`](#kapacitor151)
-	[`kapacitor:1.5.1-alpine`](#kapacitor151-alpine)
-	[`kapacitor:1.5-alpine`](#kapacitor15-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.4`

```console
$ docker pull kapacitor@sha256:fbbee7e8ea30bc5ad3a884f9b0d9da360b125b21751040e9cb4e98d2fb881606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4` - linux; amd64

```console
$ docker pull kapacitor@sha256:3b2c63883c142decf20ecb98c7a787380f474444aa0f9f4447e3269206aaa4f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96064970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b893ba91a02a0bd0722ba197134eb155e172bed6a93cb9a2ee96391e755945f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:24:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 16 Oct 2018 10:24:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:24:49 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 16 Oct 2018 10:24:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 10:24:54 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 Oct 2018 10:24:54 GMT
EXPOSE 9092/tcp
# Tue, 16 Oct 2018 10:24:54 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 Oct 2018 10:24:55 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 Oct 2018 10:24:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:24:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4196fe7f414c44aa3af2aaf2d3458d8d6bf9d02b06931977ebfa9d4c83058`  
		Last Modified: Tue, 16 Oct 2018 10:25:49 GMT  
		Size: 13.0 MB (12981512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57db2d5f4bbd613685bc3518987323ab456940650eb55ee266e2d91604432b`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777c80a8d343318af23add78d85e6c6286a21a21fa42bf577932ac728d13b966`  
		Last Modified: Tue, 16 Oct 2018 10:25:55 GMT  
		Size: 22.7 MB (22694120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe493b9db8d9ded24490f09f93d1e6436be1b7bc66aaa54c77dffbe8302e5fe`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a69c7e8a48b31c6deba25cfc35e93bc92dd00e3069941b83982553f379dad84`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:a8596794fc28b67a7beb8fffcbbfbbd10021d1d05153d077413bd5f855b4e0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89798441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97fb6a2ccb14468ded70323655a542fa855d378c565a0ce13a188c39dd6989a3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:09:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 17:09:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:09:50 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 05 Sep 2018 17:09:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 17:09:55 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 17:09:56 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 17:09:56 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 17:09:57 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 17:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:10:03 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061bc07d272db4560a080815ac9f1c71866096df2ccb4c5eed0111336638cca1`  
		Last Modified: Wed, 05 Sep 2018 17:10:48 GMT  
		Size: 13.1 MB (13071291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e043e8541d28bfdbf994cb0a49a535274a36c89218177267254a9c2ed69bbf0`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6f09a560a30cc0b337be3f03fdfb4a77d565726cc1a6a4c8ed0115e0f7298`  
		Last Modified: Wed, 05 Sep 2018 17:10:56 GMT  
		Size: 21.3 MB (21307904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2357e9d7e630e15a95f2127a9e716f972648329f5941b8470c30d2378f74be5`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e951d55c6ba248f9e15bd1145a76bce3d38b0adf6901a43a7b193ae0b7f56003`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:5f0e1c018f32212b4f3831e054f27e3812eb20389787151c27bb0f4a4eff0ff2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90819730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e62fc45013c42b33d2696f3666fb14ca9b720886053d0efcc59b490fbf4391`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:30:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 23:31:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:31:01 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 05 Sep 2018 23:31:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 23:31:12 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 23:31:34 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 23:31:34 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 23:31:36 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 23:31:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:31:37 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2e36e0da7625d864cbb05f31728c79b60eb684daf0715dd677c25e78fd0beb`  
		Last Modified: Wed, 05 Sep 2018 23:33:56 GMT  
		Size: 12.6 MB (12606621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dfcaff55f1883e806f2e8c3fed22cc6544e3f69ee226abd4d382136ce6039d`  
		Last Modified: Wed, 05 Sep 2018 23:33:49 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e0bc16fb0f5c570890ff7c17fa9e8d16a2bd22ba922e2373f48c237af498c`  
		Last Modified: Wed, 05 Sep 2018 23:33:59 GMT  
		Size: 21.3 MB (21307685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3db5bbbf4817012e7c0756a525c56034bce7e0aa09163d5ffca1b2e5fc135b`  
		Last Modified: Wed, 05 Sep 2018 23:33:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9bb4e2d2fc25134b9112fd42721988eb652229681ddc8191ab507b8ebac71d`  
		Last Modified: Wed, 05 Sep 2018 23:33:51 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1`

```console
$ docker pull kapacitor@sha256:fbbee7e8ea30bc5ad3a884f9b0d9da360b125b21751040e9cb4e98d2fb881606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:3b2c63883c142decf20ecb98c7a787380f474444aa0f9f4447e3269206aaa4f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96064970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b893ba91a02a0bd0722ba197134eb155e172bed6a93cb9a2ee96391e755945f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:24:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 16 Oct 2018 10:24:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:24:49 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 16 Oct 2018 10:24:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 10:24:54 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 Oct 2018 10:24:54 GMT
EXPOSE 9092/tcp
# Tue, 16 Oct 2018 10:24:54 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 Oct 2018 10:24:55 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 Oct 2018 10:24:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:24:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4196fe7f414c44aa3af2aaf2d3458d8d6bf9d02b06931977ebfa9d4c83058`  
		Last Modified: Tue, 16 Oct 2018 10:25:49 GMT  
		Size: 13.0 MB (12981512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57db2d5f4bbd613685bc3518987323ab456940650eb55ee266e2d91604432b`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777c80a8d343318af23add78d85e6c6286a21a21fa42bf577932ac728d13b966`  
		Last Modified: Tue, 16 Oct 2018 10:25:55 GMT  
		Size: 22.7 MB (22694120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe493b9db8d9ded24490f09f93d1e6436be1b7bc66aaa54c77dffbe8302e5fe`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a69c7e8a48b31c6deba25cfc35e93bc92dd00e3069941b83982553f379dad84`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:a8596794fc28b67a7beb8fffcbbfbbd10021d1d05153d077413bd5f855b4e0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89798441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97fb6a2ccb14468ded70323655a542fa855d378c565a0ce13a188c39dd6989a3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:09:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 17:09:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:09:50 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 05 Sep 2018 17:09:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 17:09:55 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 17:09:56 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 17:09:56 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 17:09:57 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 17:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:10:03 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061bc07d272db4560a080815ac9f1c71866096df2ccb4c5eed0111336638cca1`  
		Last Modified: Wed, 05 Sep 2018 17:10:48 GMT  
		Size: 13.1 MB (13071291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e043e8541d28bfdbf994cb0a49a535274a36c89218177267254a9c2ed69bbf0`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6f09a560a30cc0b337be3f03fdfb4a77d565726cc1a6a4c8ed0115e0f7298`  
		Last Modified: Wed, 05 Sep 2018 17:10:56 GMT  
		Size: 21.3 MB (21307904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2357e9d7e630e15a95f2127a9e716f972648329f5941b8470c30d2378f74be5`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e951d55c6ba248f9e15bd1145a76bce3d38b0adf6901a43a7b193ae0b7f56003`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:5f0e1c018f32212b4f3831e054f27e3812eb20389787151c27bb0f4a4eff0ff2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90819730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e62fc45013c42b33d2696f3666fb14ca9b720886053d0efcc59b490fbf4391`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:30:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 23:31:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:31:01 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 05 Sep 2018 23:31:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 23:31:12 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 23:31:34 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 23:31:34 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 23:31:36 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 23:31:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:31:37 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2e36e0da7625d864cbb05f31728c79b60eb684daf0715dd677c25e78fd0beb`  
		Last Modified: Wed, 05 Sep 2018 23:33:56 GMT  
		Size: 12.6 MB (12606621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dfcaff55f1883e806f2e8c3fed22cc6544e3f69ee226abd4d382136ce6039d`  
		Last Modified: Wed, 05 Sep 2018 23:33:49 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e0bc16fb0f5c570890ff7c17fa9e8d16a2bd22ba922e2373f48c237af498c`  
		Last Modified: Wed, 05 Sep 2018 23:33:59 GMT  
		Size: 21.3 MB (21307685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3db5bbbf4817012e7c0756a525c56034bce7e0aa09163d5ffca1b2e5fc135b`  
		Last Modified: Wed, 05 Sep 2018 23:33:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9bb4e2d2fc25134b9112fd42721988eb652229681ddc8191ab507b8ebac71d`  
		Last Modified: Wed, 05 Sep 2018 23:33:51 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1-alpine`

```console
$ docker pull kapacitor@sha256:f57f0ad416b777a539ccc2211afcaabc4f259a5802d57f73b1956d5da01ff372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:b2fa4acee834caef32eef426e649e4548f31ff7c6c06c320f90a80da9fdd1c9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18967311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66500e3b82aee195387797b41619e8dc2eaf1de54c451f247de978252ef54d5d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:45:37 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 11 Sep 2018 23:45:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:45:43 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 11 Sep 2018 23:45:43 GMT
EXPOSE 9092/tcp
# Tue, 11 Sep 2018 23:45:44 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 11 Sep 2018 23:45:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 11 Sep 2018 23:45:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:45:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2adb9c351ffe8fcc787f5550d59dbb74f6f3eb8813de7dc4684050b246099c6`  
		Last Modified: Tue, 11 Sep 2018 23:46:17 GMT  
		Size: 16.6 MB (16598725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cafc15148f960028fe7fe45c18bd1788becdb0fe3535af16e8b991b177225`  
		Last Modified: Tue, 11 Sep 2018 23:46:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af06d037b3d34a2fff463f7f72913b296bd52e6339625c5ff8d29566f35f0877`  
		Last Modified: Tue, 11 Sep 2018 23:46:12 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4-alpine`

```console
$ docker pull kapacitor@sha256:f57f0ad416b777a539ccc2211afcaabc4f259a5802d57f73b1956d5da01ff372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:b2fa4acee834caef32eef426e649e4548f31ff7c6c06c320f90a80da9fdd1c9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18967311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66500e3b82aee195387797b41619e8dc2eaf1de54c451f247de978252ef54d5d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:45:37 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 11 Sep 2018 23:45:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:45:43 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 11 Sep 2018 23:45:43 GMT
EXPOSE 9092/tcp
# Tue, 11 Sep 2018 23:45:44 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 11 Sep 2018 23:45:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 11 Sep 2018 23:45:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:45:44 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2adb9c351ffe8fcc787f5550d59dbb74f6f3eb8813de7dc4684050b246099c6`  
		Last Modified: Tue, 11 Sep 2018 23:46:17 GMT  
		Size: 16.6 MB (16598725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459cafc15148f960028fe7fe45c18bd1788becdb0fe3535af16e8b991b177225`  
		Last Modified: Tue, 11 Sep 2018 23:46:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af06d037b3d34a2fff463f7f72913b296bd52e6339625c5ff8d29566f35f0877`  
		Last Modified: Tue, 11 Sep 2018 23:46:12 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5`

```console
$ docker pull kapacitor@sha256:18111744fe73f8e89f714e1eff3924de8710326ffc2b51b64b87976413f07a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5` - linux; amd64

```console
$ docker pull kapacitor@sha256:da336d13b8d063e9c32a118d9efdcfc2305f11374408ea93059824d455d9efb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97527732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8970dc76ce1be21ee93ced7684c81440504efda0b8149998ff1cf4367ca1fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:24:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 16 Oct 2018 10:24:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:25:13 GMT
ENV KAPACITOR_VERSION=1.5.1
# Tue, 16 Oct 2018 10:25:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 10:25:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 Oct 2018 10:25:21 GMT
EXPOSE 9092/tcp
# Tue, 16 Oct 2018 10:25:21 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 Oct 2018 10:25:21 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 Oct 2018 10:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:25:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4196fe7f414c44aa3af2aaf2d3458d8d6bf9d02b06931977ebfa9d4c83058`  
		Last Modified: Tue, 16 Oct 2018 10:25:49 GMT  
		Size: 13.0 MB (12981512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57db2d5f4bbd613685bc3518987323ab456940650eb55ee266e2d91604432b`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b09da23104ffdd127c3831a2073a6b22b477a7d160682acc51f79da2caabf7`  
		Last Modified: Tue, 16 Oct 2018 10:26:38 GMT  
		Size: 24.2 MB (24156881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea100a77674d128bb9eb3e4e951ddf083f16589b129f766e756d2d5de4cb6f0`  
		Last Modified: Tue, 16 Oct 2018 10:26:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c1a7f1a79a9609c91fab438b45d013095437ce177dc9fa53d6d2ea3d87caa6`  
		Last Modified: Tue, 16 Oct 2018 10:26:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:faf35c4c120fec1f00f34cb759978a621784e36978fb7cbd177fe2728b7d9d56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91672842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5dbdea9f39f5a4b6a26b9054fb4a6b40af99a84e9e909eebec0154589fbe2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:09:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 17:09:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:10:14 GMT
ENV KAPACITOR_VERSION=1.5.1
# Wed, 05 Sep 2018 17:10:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 17:10:21 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 17:10:21 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 17:10:21 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 17:10:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 17:10:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:10:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061bc07d272db4560a080815ac9f1c71866096df2ccb4c5eed0111336638cca1`  
		Last Modified: Wed, 05 Sep 2018 17:10:48 GMT  
		Size: 13.1 MB (13071291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e043e8541d28bfdbf994cb0a49a535274a36c89218177267254a9c2ed69bbf0`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367e3f3b5670ffc17c04b4ca7ffecba80d1379fb15b5c4c1ec58f969fb711015`  
		Last Modified: Wed, 05 Sep 2018 17:11:23 GMT  
		Size: 23.2 MB (23182301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc413f7acaf5490fd1e1aa1d041137d6183f2c71b850e2c808d2102e18e67e3`  
		Last Modified: Wed, 05 Sep 2018 17:11:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edf4a2a0dc11f444b802fb7e893bcc46186e0a3592ed904193237b98005afb5`  
		Last Modified: Wed, 05 Sep 2018 17:11:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:db6667c143baa6d46e0cbeadb5ec10a4bbb6dd52ac5ad0f7f8ffc5932bb63d0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92694093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7726496c9f13daa36b655234dd9338f78ac04a600c737ca85ad4e40cf15cd5eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:30:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 23:31:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:32:24 GMT
ENV KAPACITOR_VERSION=1.5.1
# Wed, 05 Sep 2018 23:32:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 23:32:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 23:32:54 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 23:32:55 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 23:32:56 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 23:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:32:58 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2e36e0da7625d864cbb05f31728c79b60eb684daf0715dd677c25e78fd0beb`  
		Last Modified: Wed, 05 Sep 2018 23:33:56 GMT  
		Size: 12.6 MB (12606621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dfcaff55f1883e806f2e8c3fed22cc6544e3f69ee226abd4d382136ce6039d`  
		Last Modified: Wed, 05 Sep 2018 23:33:49 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8001a520d0cf93998314c4277b9bd8633374c440c9561e0277585cdd8bbf8629`  
		Last Modified: Wed, 05 Sep 2018 23:35:00 GMT  
		Size: 23.2 MB (23182049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46f317ff203c290c890798cb2d93b70ce34f30d27866231ba18c01e7ec9a007`  
		Last Modified: Wed, 05 Sep 2018 23:34:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5b89209dd3c8e5322f00ca03cd1d71664143872a2aeb4ff58d980abe695dae`  
		Last Modified: Wed, 05 Sep 2018 23:34:50 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.1`

```console
$ docker pull kapacitor@sha256:18111744fe73f8e89f714e1eff3924de8710326ffc2b51b64b87976413f07a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:da336d13b8d063e9c32a118d9efdcfc2305f11374408ea93059824d455d9efb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97527732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8970dc76ce1be21ee93ced7684c81440504efda0b8149998ff1cf4367ca1fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:24:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 16 Oct 2018 10:24:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:25:13 GMT
ENV KAPACITOR_VERSION=1.5.1
# Tue, 16 Oct 2018 10:25:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 10:25:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 Oct 2018 10:25:21 GMT
EXPOSE 9092/tcp
# Tue, 16 Oct 2018 10:25:21 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 Oct 2018 10:25:21 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 Oct 2018 10:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:25:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4196fe7f414c44aa3af2aaf2d3458d8d6bf9d02b06931977ebfa9d4c83058`  
		Last Modified: Tue, 16 Oct 2018 10:25:49 GMT  
		Size: 13.0 MB (12981512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57db2d5f4bbd613685bc3518987323ab456940650eb55ee266e2d91604432b`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b09da23104ffdd127c3831a2073a6b22b477a7d160682acc51f79da2caabf7`  
		Last Modified: Tue, 16 Oct 2018 10:26:38 GMT  
		Size: 24.2 MB (24156881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea100a77674d128bb9eb3e4e951ddf083f16589b129f766e756d2d5de4cb6f0`  
		Last Modified: Tue, 16 Oct 2018 10:26:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c1a7f1a79a9609c91fab438b45d013095437ce177dc9fa53d6d2ea3d87caa6`  
		Last Modified: Tue, 16 Oct 2018 10:26:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:faf35c4c120fec1f00f34cb759978a621784e36978fb7cbd177fe2728b7d9d56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91672842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5dbdea9f39f5a4b6a26b9054fb4a6b40af99a84e9e909eebec0154589fbe2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:09:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 17:09:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:10:14 GMT
ENV KAPACITOR_VERSION=1.5.1
# Wed, 05 Sep 2018 17:10:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 17:10:21 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 17:10:21 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 17:10:21 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 17:10:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 17:10:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:10:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061bc07d272db4560a080815ac9f1c71866096df2ccb4c5eed0111336638cca1`  
		Last Modified: Wed, 05 Sep 2018 17:10:48 GMT  
		Size: 13.1 MB (13071291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e043e8541d28bfdbf994cb0a49a535274a36c89218177267254a9c2ed69bbf0`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367e3f3b5670ffc17c04b4ca7ffecba80d1379fb15b5c4c1ec58f969fb711015`  
		Last Modified: Wed, 05 Sep 2018 17:11:23 GMT  
		Size: 23.2 MB (23182301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc413f7acaf5490fd1e1aa1d041137d6183f2c71b850e2c808d2102e18e67e3`  
		Last Modified: Wed, 05 Sep 2018 17:11:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edf4a2a0dc11f444b802fb7e893bcc46186e0a3592ed904193237b98005afb5`  
		Last Modified: Wed, 05 Sep 2018 17:11:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:db6667c143baa6d46e0cbeadb5ec10a4bbb6dd52ac5ad0f7f8ffc5932bb63d0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92694093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7726496c9f13daa36b655234dd9338f78ac04a600c737ca85ad4e40cf15cd5eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:30:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 23:31:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:32:24 GMT
ENV KAPACITOR_VERSION=1.5.1
# Wed, 05 Sep 2018 23:32:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 23:32:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 23:32:54 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 23:32:55 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 23:32:56 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 23:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:32:58 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2e36e0da7625d864cbb05f31728c79b60eb684daf0715dd677c25e78fd0beb`  
		Last Modified: Wed, 05 Sep 2018 23:33:56 GMT  
		Size: 12.6 MB (12606621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dfcaff55f1883e806f2e8c3fed22cc6544e3f69ee226abd4d382136ce6039d`  
		Last Modified: Wed, 05 Sep 2018 23:33:49 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8001a520d0cf93998314c4277b9bd8633374c440c9561e0277585cdd8bbf8629`  
		Last Modified: Wed, 05 Sep 2018 23:35:00 GMT  
		Size: 23.2 MB (23182049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46f317ff203c290c890798cb2d93b70ce34f30d27866231ba18c01e7ec9a007`  
		Last Modified: Wed, 05 Sep 2018 23:34:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5b89209dd3c8e5322f00ca03cd1d71664143872a2aeb4ff58d980abe695dae`  
		Last Modified: Wed, 05 Sep 2018 23:34:50 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.1-alpine`

```console
$ docker pull kapacitor@sha256:92a21669111971a3761a334da9a14b1d26a664e5a36499fa5caf4d344fbc996e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.5.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:eb2527cec7e91f51d13add258e4845e8e18d02d8288ac4fed51e4307c01cdf9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19005445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80809f8b361127b12e139f36725429870da2ccde5bf5f0932f0dc3cc70152404`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:45:53 GMT
ENV KAPACITOR_VERSION=1.5.1
# Tue, 11 Sep 2018 23:45:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:46:00 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 11 Sep 2018 23:46:00 GMT
EXPOSE 9092/tcp
# Tue, 11 Sep 2018 23:46:00 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 11 Sep 2018 23:46:00 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 11 Sep 2018 23:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:46:01 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18951ff3a96918829efeec73bf583e3130de56689579494c228bf2d41423e68c`  
		Last Modified: Tue, 11 Sep 2018 23:46:34 GMT  
		Size: 16.6 MB (16636861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18034e734152286787682efcc5369939f25ee54cc0f7b5d29ee3216b40f0c805`  
		Last Modified: Tue, 11 Sep 2018 23:46:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a152c48c2323941f5bcb219b589923c17079972dd81935878a973035750611`  
		Last Modified: Tue, 11 Sep 2018 23:46:29 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5-alpine`

```console
$ docker pull kapacitor@sha256:92a21669111971a3761a334da9a14b1d26a664e5a36499fa5caf4d344fbc996e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.5-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:eb2527cec7e91f51d13add258e4845e8e18d02d8288ac4fed51e4307c01cdf9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19005445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80809f8b361127b12e139f36725429870da2ccde5bf5f0932f0dc3cc70152404`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:45:53 GMT
ENV KAPACITOR_VERSION=1.5.1
# Tue, 11 Sep 2018 23:45:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:46:00 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 11 Sep 2018 23:46:00 GMT
EXPOSE 9092/tcp
# Tue, 11 Sep 2018 23:46:00 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 11 Sep 2018 23:46:00 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 11 Sep 2018 23:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:46:01 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18951ff3a96918829efeec73bf583e3130de56689579494c228bf2d41423e68c`  
		Last Modified: Tue, 11 Sep 2018 23:46:34 GMT  
		Size: 16.6 MB (16636861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18034e734152286787682efcc5369939f25ee54cc0f7b5d29ee3216b40f0c805`  
		Last Modified: Tue, 11 Sep 2018 23:46:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a152c48c2323941f5bcb219b589923c17079972dd81935878a973035750611`  
		Last Modified: Tue, 11 Sep 2018 23:46:29 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:92a21669111971a3761a334da9a14b1d26a664e5a36499fa5caf4d344fbc996e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:eb2527cec7e91f51d13add258e4845e8e18d02d8288ac4fed51e4307c01cdf9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19005445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80809f8b361127b12e139f36725429870da2ccde5bf5f0932f0dc3cc70152404`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:45:53 GMT
ENV KAPACITOR_VERSION=1.5.1
# Tue, 11 Sep 2018 23:45:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:46:00 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 11 Sep 2018 23:46:00 GMT
EXPOSE 9092/tcp
# Tue, 11 Sep 2018 23:46:00 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 11 Sep 2018 23:46:00 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 11 Sep 2018 23:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:46:01 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18951ff3a96918829efeec73bf583e3130de56689579494c228bf2d41423e68c`  
		Last Modified: Tue, 11 Sep 2018 23:46:34 GMT  
		Size: 16.6 MB (16636861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18034e734152286787682efcc5369939f25ee54cc0f7b5d29ee3216b40f0c805`  
		Last Modified: Tue, 11 Sep 2018 23:46:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a152c48c2323941f5bcb219b589923c17079972dd81935878a973035750611`  
		Last Modified: Tue, 11 Sep 2018 23:46:29 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:18111744fe73f8e89f714e1eff3924de8710326ffc2b51b64b87976413f07a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:da336d13b8d063e9c32a118d9efdcfc2305f11374408ea93059824d455d9efb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97527732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8970dc76ce1be21ee93ced7684c81440504efda0b8149998ff1cf4367ca1fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:24:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 16 Oct 2018 10:24:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:25:13 GMT
ENV KAPACITOR_VERSION=1.5.1
# Tue, 16 Oct 2018 10:25:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 10:25:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 Oct 2018 10:25:21 GMT
EXPOSE 9092/tcp
# Tue, 16 Oct 2018 10:25:21 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 Oct 2018 10:25:21 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 Oct 2018 10:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:25:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4196fe7f414c44aa3af2aaf2d3458d8d6bf9d02b06931977ebfa9d4c83058`  
		Last Modified: Tue, 16 Oct 2018 10:25:49 GMT  
		Size: 13.0 MB (12981512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57db2d5f4bbd613685bc3518987323ab456940650eb55ee266e2d91604432b`  
		Last Modified: Tue, 16 Oct 2018 10:25:46 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b09da23104ffdd127c3831a2073a6b22b477a7d160682acc51f79da2caabf7`  
		Last Modified: Tue, 16 Oct 2018 10:26:38 GMT  
		Size: 24.2 MB (24156881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea100a77674d128bb9eb3e4e951ddf083f16589b129f766e756d2d5de4cb6f0`  
		Last Modified: Tue, 16 Oct 2018 10:26:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c1a7f1a79a9609c91fab438b45d013095437ce177dc9fa53d6d2ea3d87caa6`  
		Last Modified: Tue, 16 Oct 2018 10:26:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:faf35c4c120fec1f00f34cb759978a621784e36978fb7cbd177fe2728b7d9d56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91672842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5dbdea9f39f5a4b6a26b9054fb4a6b40af99a84e9e909eebec0154589fbe2f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:09:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 17:09:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:10:14 GMT
ENV KAPACITOR_VERSION=1.5.1
# Wed, 05 Sep 2018 17:10:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 17:10:21 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 17:10:21 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 17:10:21 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 17:10:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 17:10:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:10:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061bc07d272db4560a080815ac9f1c71866096df2ccb4c5eed0111336638cca1`  
		Last Modified: Wed, 05 Sep 2018 17:10:48 GMT  
		Size: 13.1 MB (13071291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e043e8541d28bfdbf994cb0a49a535274a36c89218177267254a9c2ed69bbf0`  
		Last Modified: Wed, 05 Sep 2018 17:10:45 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367e3f3b5670ffc17c04b4ca7ffecba80d1379fb15b5c4c1ec58f969fb711015`  
		Last Modified: Wed, 05 Sep 2018 17:11:23 GMT  
		Size: 23.2 MB (23182301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc413f7acaf5490fd1e1aa1d041137d6183f2c71b850e2c808d2102e18e67e3`  
		Last Modified: Wed, 05 Sep 2018 17:11:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edf4a2a0dc11f444b802fb7e893bcc46186e0a3592ed904193237b98005afb5`  
		Last Modified: Wed, 05 Sep 2018 17:11:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:db6667c143baa6d46e0cbeadb5ec10a4bbb6dd52ac5ad0f7f8ffc5932bb63d0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92694093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7726496c9f13daa36b655234dd9338f78ac04a600c737ca85ad4e40cf15cd5eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:30:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 05 Sep 2018 23:31:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:32:24 GMT
ENV KAPACITOR_VERSION=1.5.1
# Wed, 05 Sep 2018 23:32:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 05 Sep 2018 23:32:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 23:32:54 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 23:32:55 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 23:32:56 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 05 Sep 2018 23:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:32:58 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2e36e0da7625d864cbb05f31728c79b60eb684daf0715dd677c25e78fd0beb`  
		Last Modified: Wed, 05 Sep 2018 23:33:56 GMT  
		Size: 12.6 MB (12606621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dfcaff55f1883e806f2e8c3fed22cc6544e3f69ee226abd4d382136ce6039d`  
		Last Modified: Wed, 05 Sep 2018 23:33:49 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8001a520d0cf93998314c4277b9bd8633374c440c9561e0277585cdd8bbf8629`  
		Last Modified: Wed, 05 Sep 2018 23:35:00 GMT  
		Size: 23.2 MB (23182049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46f317ff203c290c890798cb2d93b70ce34f30d27866231ba18c01e7ec9a007`  
		Last Modified: Wed, 05 Sep 2018 23:34:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5b89209dd3c8e5322f00ca03cd1d71664143872a2aeb4ff58d980abe695dae`  
		Last Modified: Wed, 05 Sep 2018 23:34:50 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
