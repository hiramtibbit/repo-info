## `telegraf:latest`

```console
$ docker pull telegraf@sha256:10a17412e4eac5f0ce104df733be52c273de880774edfc5f154634367fa0cd48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:7e43afbc71e06e3815434d7b5f22f81f5c46dae1e576387f0754b63ad8a50130
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85867774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9885d9066c5af23f46c399a6ba49942e8742e8769ea015ce7bbaba14f8906bfe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 02 May 2018 20:57:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 20:57:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 02 May 2018 20:58:08 GMT
ENV TELEGRAF_VERSION=1.6.1
# Wed, 02 May 2018 20:58:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 02 May 2018 20:58:11 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 02 May 2018 20:58:12 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 02 May 2018 20:58:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 02 May 2018 20:58:13 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4601a75534a7ec894357ce08aebcf335ea589038f7c701981d007fbe89638829`  
		Last Modified: Wed, 02 May 2018 20:59:34 GMT  
		Size: 15.6 MB (15585474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00f9a1043c3dc4d4453c2a47fd1c7d6f2b21381ac1e68154ee13b204e452d74`  
		Last Modified: Wed, 02 May 2018 20:59:31 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ece60378b2c41c8ab9160ca863202ba361287f8a8503d3431fc10aa01567b08`  
		Last Modified: Wed, 02 May 2018 21:00:24 GMT  
		Size: 9.9 MB (9877953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22771aa2439c28d1f204fc8d2647afc03abc21982921c11b6080153b08131d07`  
		Last Modified: Wed, 02 May 2018 21:00:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:4d06ecdcf0de7a9ad025d218c070cb02b92f0970042536a523526bb86bc384c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79199020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c555b26ebd8fb47878edf67b1a828a4fcbf10b5865d0ba8ec129de26fb6afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 16:28:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:28:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 16:28:44 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 28 Apr 2018 16:28:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 28 Apr 2018 16:28:47 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 28 Apr 2018 16:28:47 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 28 Apr 2018 16:28:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 16:28:48 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408ed61adf857573f53f3a0097b50c9ac401bfb39c2d63d4e0c9a2b2bfe990c6`  
		Last Modified: Sat, 28 Apr 2018 16:29:37 GMT  
		Size: 14.5 MB (14471433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e336d9caefc64ead70957f0860d0a66503b048fa11d6926e6c8c765f222462`  
		Last Modified: Sat, 28 Apr 2018 16:29:32 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcff6e0b7b91dfa3a2083aaa7b3df525feadedb5eb32d2a7cc3652814f85d104`  
		Last Modified: Sat, 28 Apr 2018 16:30:04 GMT  
		Size: 9.3 MB (9298570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c553b76e92278af03e0642027b47d473b1c8709e150da0dc7c018bcf835ec3`  
		Last Modified: Sat, 28 Apr 2018 16:30:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:fee5f43f5bffeea95baada3f0e11375ccb66e005ebbf0389b4873d7573744fa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81135398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:158481156139d43ab6783e820a54f49277c88af2a59634dd10c7b97b579051d2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 21:06:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:06:21 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 21:06:50 GMT
ENV TELEGRAF_VERSION=1.6.1
# Tue, 01 May 2018 21:06:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 01 May 2018 21:07:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 01 May 2018 21:07:02 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 01 May 2018 21:07:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 21:07:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb4b16282e65cf278bf984ce8fc05f8450496b586764b4c8c66ec75c89aeb59`  
		Last Modified: Tue, 01 May 2018 21:08:15 GMT  
		Size: 15.2 MB (15163919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec62a63a2e1e4fc5d38b2b0ce5d1640547afb84f03233d6ab2da486d521172b3`  
		Last Modified: Tue, 01 May 2018 21:08:01 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab10b57907a41c499e2f5df8bcde13977b935972417cafe3d718fec6ce7ee137`  
		Last Modified: Tue, 01 May 2018 21:08:42 GMT  
		Size: 9.1 MB (9074294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fce0ba5b7c34506f90ecbd49e7f6f6046d9bbcdc238af0e6e38191465b816dc`  
		Last Modified: Tue, 01 May 2018 21:08:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
