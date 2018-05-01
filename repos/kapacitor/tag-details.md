<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.3`](#kapacitor13)
-	[`kapacitor:1.3.3`](#kapacitor133)
-	[`kapacitor:1.3.3-alpine`](#kapacitor133-alpine)
-	[`kapacitor:1.3-alpine`](#kapacitor13-alpine)
-	[`kapacitor:1.4`](#kapacitor14)
-	[`kapacitor:1.4.1`](#kapacitor141)
-	[`kapacitor:1.4.1-alpine`](#kapacitor141-alpine)
-	[`kapacitor:1.4-alpine`](#kapacitor14-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:280f65164b28b96e865fd988f7eef5dc091e7091b675b00d08ccf11f8682ba01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:812ba1300fbd07d0505e0a4de0ff4f70d40ed35ae12f08591a6d00d438f47f43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94173603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a1849f1565ef7ba5c61b025ff5c89fcd17793a128a2577f87af9bfd34ffc44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 07:32:28 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Mar 2018 07:32:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 07:32:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Mar 2018 07:32:31 GMT
EXPOSE 9092/tcp
# Thu, 15 Mar 2018 07:32:32 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Mar 2018 07:32:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Mar 2018 07:32:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 07:32:33 GMT
CMD ["kapacitord"]
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
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95f2907488895c87cdd9145924f6d3af72e3f34a01566ecb44b48fae48ab22d`  
		Last Modified: Thu, 15 Mar 2018 07:33:33 GMT  
		Size: 20.7 MB (20732439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6e9d8a835b9067067f22d1cc53ac1d588c3e5b92371f9507959ca37b583e0e`  
		Last Modified: Thu, 15 Mar 2018 07:33:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39eb4fca3859da0436d54ab3bb46cea27a654a9050455e1b98a9ed7bb89416cc`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:96412a335cc58fd875a7545e12088f5835d91de48974d1e15ad05cc9c2176b1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87523586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1f56174b098093c1de9675db1efc1774c88b5b80ee72bff5f83d3fce3dff19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:58:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Sat, 28 Apr 2018 15:58:15 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:58:16 GMT
ENV KAPACITOR_VERSION=1.3.3
# Sat, 28 Apr 2018 15:58:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:58:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Sat, 28 Apr 2018 15:58:23 GMT
EXPOSE 9092/tcp
# Sat, 28 Apr 2018 15:58:23 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 28 Apr 2018 15:58:24 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Sat, 28 Apr 2018 15:58:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:58:24 GMT
CMD ["kapacitord"]
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
	-	`sha256:c34b2ddb3b552ef7886565e790e578fdea57fd1f1650062913037b31514acb7a`  
		Last Modified: Sat, 28 Apr 2018 15:59:00 GMT  
		Size: 13.1 MB (13086847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910958468cf599d5695794edeab6afb693ebbdfbf8b4067c6b778b6fa189d2aa`  
		Last Modified: Sat, 28 Apr 2018 15:59:01 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6842283f6c910c96f147a546bc000d1021c7936c1089e935148fa8c3665860`  
		Last Modified: Sat, 28 Apr 2018 15:59:06 GMT  
		Size: 19.0 MB (19007450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4433be2a7619955e02c39ee7b0a650e440712e5d1277ae2dd5dc94d93de8b5`  
		Last Modified: Sat, 28 Apr 2018 15:58:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dece1480adb13441a936e49bfbdb8081d761d673716e32f56b6e03b854f44cc6`  
		Last Modified: Sat, 28 Apr 2018 15:58:58 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:2c826bc3011aa7598221626f42c207728ad744da208c65302e64601e71212b7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88525190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca9ba3105e5cde1e71f96d1883b27983b7582407cc6a7d8d5ba2472abbc5817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:04:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 01 May 2018 15:04:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:04:49 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 01 May 2018 15:05:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:05:02 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 01 May 2018 15:05:03 GMT
EXPOSE 9092/tcp
# Tue, 01 May 2018 15:05:04 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 01 May 2018 15:05:05 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 01 May 2018 15:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:05:08 GMT
CMD ["kapacitord"]
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
	-	`sha256:8180e4b44a1dbd262ed2dc74857b028173cdae911302228e2d18f0a1723d9124`  
		Last Modified: Tue, 01 May 2018 15:06:19 GMT  
		Size: 12.6 MB (12620487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ea43aa800755810b5d65e42efbe96df973b1bed67e44f7811a274600690407`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed20465d6d0ec9263dffbe9208840ab08215164952f786b27c5ce6c6e429e591`  
		Last Modified: Tue, 01 May 2018 15:06:28 GMT  
		Size: 19.0 MB (19007249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e4ddecdd73ff7d78f31b2ca35c122a60fe47aa691f8bdc663b54b3bc57f289`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a28d66aa3dea2fb5f7e01d985ae2a08df32429955bb86cc8702f4b5124bd7f`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3`

```console
$ docker pull kapacitor@sha256:280f65164b28b96e865fd988f7eef5dc091e7091b675b00d08ccf11f8682ba01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:812ba1300fbd07d0505e0a4de0ff4f70d40ed35ae12f08591a6d00d438f47f43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94173603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a1849f1565ef7ba5c61b025ff5c89fcd17793a128a2577f87af9bfd34ffc44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 07:32:28 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Mar 2018 07:32:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 07:32:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Mar 2018 07:32:31 GMT
EXPOSE 9092/tcp
# Thu, 15 Mar 2018 07:32:32 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Mar 2018 07:32:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Mar 2018 07:32:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 07:32:33 GMT
CMD ["kapacitord"]
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
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95f2907488895c87cdd9145924f6d3af72e3f34a01566ecb44b48fae48ab22d`  
		Last Modified: Thu, 15 Mar 2018 07:33:33 GMT  
		Size: 20.7 MB (20732439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6e9d8a835b9067067f22d1cc53ac1d588c3e5b92371f9507959ca37b583e0e`  
		Last Modified: Thu, 15 Mar 2018 07:33:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39eb4fca3859da0436d54ab3bb46cea27a654a9050455e1b98a9ed7bb89416cc`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:96412a335cc58fd875a7545e12088f5835d91de48974d1e15ad05cc9c2176b1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87523586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1f56174b098093c1de9675db1efc1774c88b5b80ee72bff5f83d3fce3dff19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:58:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Sat, 28 Apr 2018 15:58:15 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:58:16 GMT
ENV KAPACITOR_VERSION=1.3.3
# Sat, 28 Apr 2018 15:58:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:58:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Sat, 28 Apr 2018 15:58:23 GMT
EXPOSE 9092/tcp
# Sat, 28 Apr 2018 15:58:23 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 28 Apr 2018 15:58:24 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Sat, 28 Apr 2018 15:58:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:58:24 GMT
CMD ["kapacitord"]
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
	-	`sha256:c34b2ddb3b552ef7886565e790e578fdea57fd1f1650062913037b31514acb7a`  
		Last Modified: Sat, 28 Apr 2018 15:59:00 GMT  
		Size: 13.1 MB (13086847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910958468cf599d5695794edeab6afb693ebbdfbf8b4067c6b778b6fa189d2aa`  
		Last Modified: Sat, 28 Apr 2018 15:59:01 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6842283f6c910c96f147a546bc000d1021c7936c1089e935148fa8c3665860`  
		Last Modified: Sat, 28 Apr 2018 15:59:06 GMT  
		Size: 19.0 MB (19007450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4433be2a7619955e02c39ee7b0a650e440712e5d1277ae2dd5dc94d93de8b5`  
		Last Modified: Sat, 28 Apr 2018 15:58:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dece1480adb13441a936e49bfbdb8081d761d673716e32f56b6e03b854f44cc6`  
		Last Modified: Sat, 28 Apr 2018 15:58:58 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:2c826bc3011aa7598221626f42c207728ad744da208c65302e64601e71212b7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88525190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca9ba3105e5cde1e71f96d1883b27983b7582407cc6a7d8d5ba2472abbc5817`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:04:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 01 May 2018 15:04:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:04:49 GMT
ENV KAPACITOR_VERSION=1.3.3
# Tue, 01 May 2018 15:05:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:05:02 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 01 May 2018 15:05:03 GMT
EXPOSE 9092/tcp
# Tue, 01 May 2018 15:05:04 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 01 May 2018 15:05:05 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 01 May 2018 15:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:05:08 GMT
CMD ["kapacitord"]
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
	-	`sha256:8180e4b44a1dbd262ed2dc74857b028173cdae911302228e2d18f0a1723d9124`  
		Last Modified: Tue, 01 May 2018 15:06:19 GMT  
		Size: 12.6 MB (12620487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ea43aa800755810b5d65e42efbe96df973b1bed67e44f7811a274600690407`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed20465d6d0ec9263dffbe9208840ab08215164952f786b27c5ce6c6e429e591`  
		Last Modified: Tue, 01 May 2018 15:06:28 GMT  
		Size: 19.0 MB (19007249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e4ddecdd73ff7d78f31b2ca35c122a60fe47aa691f8bdc663b54b3bc57f289`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a28d66aa3dea2fb5f7e01d985ae2a08df32429955bb86cc8702f4b5124bd7f`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3-alpine`

```console
$ docker pull kapacitor@sha256:b92713cdd309f1329bc91bcda54a663f3a8336bb7b461b26105dc953738724d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0d9392054cb691ee0668fa210c4480c3fc45d71142ade506df9c650d3536d5f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16897768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0b6263ed69b55036bd0296bbcee590ea4181e8a2624ffa3bd309e1032aa31b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:46:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 14 Feb 2018 21:10:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:10:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:10:50 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:10:51 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:10:51 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:10:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:10:51 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6679cde0bf4cb86205388bb133cdc5aada3dd2af6cba5d59e4eb1cf0e17d13`  
		Last Modified: Wed, 14 Feb 2018 21:19:41 GMT  
		Size: 14.6 MB (14554401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe87561df244a50c6beca54bb8cebba367e0b0e7f186bb845518ff3dc973dc`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63da3222e3d39d2e409edd935c11a7cda25c5d93d2008ee0f2d1b2438bc1ce77`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:b92713cdd309f1329bc91bcda54a663f3a8336bb7b461b26105dc953738724d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0d9392054cb691ee0668fa210c4480c3fc45d71142ade506df9c650d3536d5f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16897768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0b6263ed69b55036bd0296bbcee590ea4181e8a2624ffa3bd309e1032aa31b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:46:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 14 Feb 2018 21:10:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:10:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:10:50 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:10:51 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:10:51 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:10:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:10:51 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6679cde0bf4cb86205388bb133cdc5aada3dd2af6cba5d59e4eb1cf0e17d13`  
		Last Modified: Wed, 14 Feb 2018 21:19:41 GMT  
		Size: 14.6 MB (14554401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe87561df244a50c6beca54bb8cebba367e0b0e7f186bb845518ff3dc973dc`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63da3222e3d39d2e409edd935c11a7cda25c5d93d2008ee0f2d1b2438bc1ce77`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4`

```console
$ docker pull kapacitor@sha256:16fbb8584eabb6d34e33b978192c33ac898b3e106bba3f9a3d5537607c93b0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4` - linux; amd64

```console
$ docker pull kapacitor@sha256:5c05d794363fa812eced096ffcd5ee99f8282cef0ff19318c76eedee3273f0c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96134860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac632628aae5f0f8d10468a67cee8d3d556638e076bb6fe32d7d258aa4c357d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 13:11:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:11:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 13:11:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:11:32 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:11:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:11:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:11:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:11:33 GMT
CMD ["kapacitord"]
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
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2901b79f149c750ad526041e73ba164ae07d9d3235853fc8ad344bcd602c0d`  
		Last Modified: Fri, 16 Mar 2018 13:12:37 GMT  
		Size: 22.7 MB (22693694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43353ed755daec37c3719ab86a37f75077ed34c37954b234ff3f119ed75291`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc281c0e4321ec4885577e3786dee1600ce277166267c07cfa28ecaf665473`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:02570317f38282fd3c0f72bd645083bd2ba20a9d3614f006f8c304568448321b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89823599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77c5b84655752fafa9203850705ed4f9830c4594de50df6108a5a4130a9481a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:58:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Sat, 28 Apr 2018 15:58:15 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:58:34 GMT
ENV KAPACITOR_VERSION=1.4.1
# Sat, 28 Apr 2018 15:58:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:58:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Sat, 28 Apr 2018 15:58:41 GMT
EXPOSE 9092/tcp
# Sat, 28 Apr 2018 15:58:42 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 28 Apr 2018 15:58:42 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Sat, 28 Apr 2018 15:58:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:58:43 GMT
CMD ["kapacitord"]
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
	-	`sha256:c34b2ddb3b552ef7886565e790e578fdea57fd1f1650062913037b31514acb7a`  
		Last Modified: Sat, 28 Apr 2018 15:59:00 GMT  
		Size: 13.1 MB (13086847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910958468cf599d5695794edeab6afb693ebbdfbf8b4067c6b778b6fa189d2aa`  
		Last Modified: Sat, 28 Apr 2018 15:59:01 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9540470ca94ee026756badfc0f32ca1412b3f34a7f660c9a4dae8df3dee28`  
		Last Modified: Sat, 28 Apr 2018 15:59:32 GMT  
		Size: 21.3 MB (21307461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06dc7af5fdf97b6be94c6384c49bf02c91995655a00944417384bacee697b493`  
		Last Modified: Sat, 28 Apr 2018 15:59:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9b0db2d2a6ebfa93c9b77e02c8705c85927dc1c595c4f0f1893738ebb76c0`  
		Last Modified: Sat, 28 Apr 2018 15:59:24 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:dead948648d8510a034b17e18868e24fb0f658f2eb3737f4ac9adbd58a30821d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90825207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc982147ebe5ddacbfb9e6b62a95af7ed73c309ffd961f5de5b712fbe6a34e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:04:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 01 May 2018 15:04:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:05:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 01 May 2018 15:05:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:05:43 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 01 May 2018 15:05:44 GMT
EXPOSE 9092/tcp
# Tue, 01 May 2018 15:05:45 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 01 May 2018 15:05:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 01 May 2018 15:05:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:05:49 GMT
CMD ["kapacitord"]
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
	-	`sha256:8180e4b44a1dbd262ed2dc74857b028173cdae911302228e2d18f0a1723d9124`  
		Last Modified: Tue, 01 May 2018 15:06:19 GMT  
		Size: 12.6 MB (12620487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ea43aa800755810b5d65e42efbe96df973b1bed67e44f7811a274600690407`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730282be6e71cdfdc60b5ffbaed52f89e14a683dc70a82c383ab16323f057839`  
		Last Modified: Tue, 01 May 2018 15:06:53 GMT  
		Size: 21.3 MB (21307267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e22aff35515d9b03b795595ef1f4b278d093d4094fe048c6dd3c0fe1af00c4`  
		Last Modified: Tue, 01 May 2018 15:06:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe0084fb06cb3f6839b709e6e73e77469989dbcc55872f871517b41103afe39`  
		Last Modified: Tue, 01 May 2018 15:06:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1`

```console
$ docker pull kapacitor@sha256:16fbb8584eabb6d34e33b978192c33ac898b3e106bba3f9a3d5537607c93b0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:5c05d794363fa812eced096ffcd5ee99f8282cef0ff19318c76eedee3273f0c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96134860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac632628aae5f0f8d10468a67cee8d3d556638e076bb6fe32d7d258aa4c357d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 13:11:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:11:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 13:11:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:11:32 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:11:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:11:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:11:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:11:33 GMT
CMD ["kapacitord"]
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
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2901b79f149c750ad526041e73ba164ae07d9d3235853fc8ad344bcd602c0d`  
		Last Modified: Fri, 16 Mar 2018 13:12:37 GMT  
		Size: 22.7 MB (22693694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43353ed755daec37c3719ab86a37f75077ed34c37954b234ff3f119ed75291`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc281c0e4321ec4885577e3786dee1600ce277166267c07cfa28ecaf665473`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:02570317f38282fd3c0f72bd645083bd2ba20a9d3614f006f8c304568448321b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89823599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77c5b84655752fafa9203850705ed4f9830c4594de50df6108a5a4130a9481a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:58:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Sat, 28 Apr 2018 15:58:15 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:58:34 GMT
ENV KAPACITOR_VERSION=1.4.1
# Sat, 28 Apr 2018 15:58:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:58:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Sat, 28 Apr 2018 15:58:41 GMT
EXPOSE 9092/tcp
# Sat, 28 Apr 2018 15:58:42 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 28 Apr 2018 15:58:42 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Sat, 28 Apr 2018 15:58:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:58:43 GMT
CMD ["kapacitord"]
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
	-	`sha256:c34b2ddb3b552ef7886565e790e578fdea57fd1f1650062913037b31514acb7a`  
		Last Modified: Sat, 28 Apr 2018 15:59:00 GMT  
		Size: 13.1 MB (13086847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910958468cf599d5695794edeab6afb693ebbdfbf8b4067c6b778b6fa189d2aa`  
		Last Modified: Sat, 28 Apr 2018 15:59:01 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9540470ca94ee026756badfc0f32ca1412b3f34a7f660c9a4dae8df3dee28`  
		Last Modified: Sat, 28 Apr 2018 15:59:32 GMT  
		Size: 21.3 MB (21307461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06dc7af5fdf97b6be94c6384c49bf02c91995655a00944417384bacee697b493`  
		Last Modified: Sat, 28 Apr 2018 15:59:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9b0db2d2a6ebfa93c9b77e02c8705c85927dc1c595c4f0f1893738ebb76c0`  
		Last Modified: Sat, 28 Apr 2018 15:59:24 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:dead948648d8510a034b17e18868e24fb0f658f2eb3737f4ac9adbd58a30821d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90825207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc982147ebe5ddacbfb9e6b62a95af7ed73c309ffd961f5de5b712fbe6a34e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:04:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 01 May 2018 15:04:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:05:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 01 May 2018 15:05:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:05:43 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 01 May 2018 15:05:44 GMT
EXPOSE 9092/tcp
# Tue, 01 May 2018 15:05:45 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 01 May 2018 15:05:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 01 May 2018 15:05:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:05:49 GMT
CMD ["kapacitord"]
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
	-	`sha256:8180e4b44a1dbd262ed2dc74857b028173cdae911302228e2d18f0a1723d9124`  
		Last Modified: Tue, 01 May 2018 15:06:19 GMT  
		Size: 12.6 MB (12620487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ea43aa800755810b5d65e42efbe96df973b1bed67e44f7811a274600690407`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730282be6e71cdfdc60b5ffbaed52f89e14a683dc70a82c383ab16323f057839`  
		Last Modified: Tue, 01 May 2018 15:06:53 GMT  
		Size: 21.3 MB (21307267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e22aff35515d9b03b795595ef1f4b278d093d4094fe048c6dd3c0fe1af00c4`  
		Last Modified: Tue, 01 May 2018 15:06:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe0084fb06cb3f6839b709e6e73e77469989dbcc55872f871517b41103afe39`  
		Last Modified: Tue, 01 May 2018 15:06:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1-alpine`

```console
$ docker pull kapacitor@sha256:fa615f6b92d157161a23ae1d5a88b5ca86c8d708ed5925d038beb958a807d020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:a8a6503a19deac5ed3c22b2715003a4829cf771f4a5de3f1a29e45ca988b23e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18941951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26167a06d5ed574d3663cd089631c796877f09c7908852692eb1e6638bd2120`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 16 Mar 2018 13:11:50 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:12:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:12:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:12:06 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:12:06 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:12:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 16 Mar 2018 13:12:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:12:07 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca4e09496fcab24abcddfbe44138349abb5d3a9b7d2289b5eccf2fc45fc8441`  
		Last Modified: Fri, 16 Mar 2018 13:13:40 GMT  
		Size: 16.6 MB (16598584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12140d198c7874ca5b87c82abf79d008e2c8acbf8abc75674a57d38b5303819b`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ab023bb9f0dcdd360549c8bcba1afc3c9971fd45b3442d96135611c1e62c48`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4-alpine`

```console
$ docker pull kapacitor@sha256:fa615f6b92d157161a23ae1d5a88b5ca86c8d708ed5925d038beb958a807d020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:a8a6503a19deac5ed3c22b2715003a4829cf771f4a5de3f1a29e45ca988b23e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18941951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26167a06d5ed574d3663cd089631c796877f09c7908852692eb1e6638bd2120`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 16 Mar 2018 13:11:50 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:12:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:12:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:12:06 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:12:06 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:12:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 16 Mar 2018 13:12:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:12:07 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca4e09496fcab24abcddfbe44138349abb5d3a9b7d2289b5eccf2fc45fc8441`  
		Last Modified: Fri, 16 Mar 2018 13:13:40 GMT  
		Size: 16.6 MB (16598584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12140d198c7874ca5b87c82abf79d008e2c8acbf8abc75674a57d38b5303819b`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ab023bb9f0dcdd360549c8bcba1afc3c9971fd45b3442d96135611c1e62c48`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:fa615f6b92d157161a23ae1d5a88b5ca86c8d708ed5925d038beb958a807d020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:a8a6503a19deac5ed3c22b2715003a4829cf771f4a5de3f1a29e45ca988b23e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18941951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26167a06d5ed574d3663cd089631c796877f09c7908852692eb1e6638bd2120`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 16 Mar 2018 13:11:50 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:12:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:12:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:12:06 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:12:06 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:12:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 16 Mar 2018 13:12:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:12:07 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca4e09496fcab24abcddfbe44138349abb5d3a9b7d2289b5eccf2fc45fc8441`  
		Last Modified: Fri, 16 Mar 2018 13:13:40 GMT  
		Size: 16.6 MB (16598584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12140d198c7874ca5b87c82abf79d008e2c8acbf8abc75674a57d38b5303819b`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ab023bb9f0dcdd360549c8bcba1afc3c9971fd45b3442d96135611c1e62c48`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:16fbb8584eabb6d34e33b978192c33ac898b3e106bba3f9a3d5537607c93b0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:5c05d794363fa812eced096ffcd5ee99f8282cef0ff19318c76eedee3273f0c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96134860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac632628aae5f0f8d10468a67cee8d3d556638e076bb6fe32d7d258aa4c357d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 13:11:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:11:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 13:11:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:11:32 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:11:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:11:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:11:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:11:33 GMT
CMD ["kapacitord"]
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
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2901b79f149c750ad526041e73ba164ae07d9d3235853fc8ad344bcd602c0d`  
		Last Modified: Fri, 16 Mar 2018 13:12:37 GMT  
		Size: 22.7 MB (22693694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43353ed755daec37c3719ab86a37f75077ed34c37954b234ff3f119ed75291`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc281c0e4321ec4885577e3786dee1600ce277166267c07cfa28ecaf665473`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:02570317f38282fd3c0f72bd645083bd2ba20a9d3614f006f8c304568448321b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89823599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77c5b84655752fafa9203850705ed4f9830c4594de50df6108a5a4130a9481a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:58:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Sat, 28 Apr 2018 15:58:15 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:58:34 GMT
ENV KAPACITOR_VERSION=1.4.1
# Sat, 28 Apr 2018 15:58:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:58:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Sat, 28 Apr 2018 15:58:41 GMT
EXPOSE 9092/tcp
# Sat, 28 Apr 2018 15:58:42 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 28 Apr 2018 15:58:42 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Sat, 28 Apr 2018 15:58:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:58:43 GMT
CMD ["kapacitord"]
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
	-	`sha256:c34b2ddb3b552ef7886565e790e578fdea57fd1f1650062913037b31514acb7a`  
		Last Modified: Sat, 28 Apr 2018 15:59:00 GMT  
		Size: 13.1 MB (13086847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910958468cf599d5695794edeab6afb693ebbdfbf8b4067c6b778b6fa189d2aa`  
		Last Modified: Sat, 28 Apr 2018 15:59:01 GMT  
		Size: 2.9 KB (2916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9540470ca94ee026756badfc0f32ca1412b3f34a7f660c9a4dae8df3dee28`  
		Last Modified: Sat, 28 Apr 2018 15:59:32 GMT  
		Size: 21.3 MB (21307461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06dc7af5fdf97b6be94c6384c49bf02c91995655a00944417384bacee697b493`  
		Last Modified: Sat, 28 Apr 2018 15:59:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9b0db2d2a6ebfa93c9b77e02c8705c85927dc1c595c4f0f1893738ebb76c0`  
		Last Modified: Sat, 28 Apr 2018 15:59:24 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:dead948648d8510a034b17e18868e24fb0f658f2eb3737f4ac9adbd58a30821d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90825207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc982147ebe5ddacbfb9e6b62a95af7ed73c309ffd961f5de5b712fbe6a34e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:04:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 01 May 2018 15:04:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:05:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 01 May 2018 15:05:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:05:43 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 01 May 2018 15:05:44 GMT
EXPOSE 9092/tcp
# Tue, 01 May 2018 15:05:45 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 01 May 2018 15:05:46 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 01 May 2018 15:05:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:05:49 GMT
CMD ["kapacitord"]
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
	-	`sha256:8180e4b44a1dbd262ed2dc74857b028173cdae911302228e2d18f0a1723d9124`  
		Last Modified: Tue, 01 May 2018 15:06:19 GMT  
		Size: 12.6 MB (12620487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ea43aa800755810b5d65e42efbe96df973b1bed67e44f7811a274600690407`  
		Last Modified: Tue, 01 May 2018 15:06:12 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730282be6e71cdfdc60b5ffbaed52f89e14a683dc70a82c383ab16323f057839`  
		Last Modified: Tue, 01 May 2018 15:06:53 GMT  
		Size: 21.3 MB (21307267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e22aff35515d9b03b795595ef1f4b278d093d4094fe048c6dd3c0fe1af00c4`  
		Last Modified: Tue, 01 May 2018 15:06:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe0084fb06cb3f6839b709e6e73e77469989dbcc55872f871517b41103afe39`  
		Last Modified: Tue, 01 May 2018 15:06:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
