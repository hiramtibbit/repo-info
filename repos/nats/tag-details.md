<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:1.3.0`](#nats130)
-	[`nats:1.3.0-linux`](#nats130-linux)
-	[`nats:1.3.0-nanoserver`](#nats130-nanoserver)
-	[`nats:1.3.0-windowsservercore`](#nats130-windowsservercore)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:1.3.0`

```console
$ docker pull nats@sha256:f69bea91ead1a68870d16f775b27efd456a49b97cc140bc8a3f315bb5d0132cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

### `nats:1.3.0` - linux; amd64

```console
$ docker pull nats@sha256:28eb780ab00a512b20c96eff87da342cd8f6319080846352372f461211092c8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3049391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f5ca1594f2bb8f97f1aa1c5d97dce54fbc913aab48838e712e741883340c`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 31 Aug 2018 18:19:47 GMT
COPY file:d5a83c895bb36214cac7d41dfc7fba9b973e67ff76e01fc1c2a4fcf4735c57ad in /gnatsd 
# Fri, 31 Aug 2018 18:19:48 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 31 Aug 2018 18:19:48 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 31 Aug 2018 18:19:48 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 31 Aug 2018 18:19:48 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f3780679080c6d9005202a4f1fb264409c4b7d87c78779f083a163ca29b8d7bb`  
		Last Modified: Fri, 31 Aug 2018 18:19:57 GMT  
		Size: 3.0 MB (3048914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0525adc546e4edb91f093fcf7349480a6d1f95fb985a788ac9a55310c8ec29`  
		Last Modified: Fri, 31 Aug 2018 18:19:56 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.3.0` - linux; arm variant v6

```console
$ docker pull nats@sha256:429d1935f323c9a5174070a16e6c8a91dc6dbaa50905890e5aa6478b25196aca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2858289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011c70ca43801dc212734cd714b1d3a09f27c9937f7c61b98511f4e0ea58e039`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:56a959227abba5248c58608ff99653810af244a11d6c5713091af1d84fc39c38 in /gnatsd 
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:01:55 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:01:56 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:01:56 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:46dcd44345d3a5e9651cdeed2296efa111bc9622ecf328aadbacd677f0b74429`  
		Last Modified: Sat, 01 Sep 2018 08:02:08 GMT  
		Size: 2.9 MB (2857811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df871aaa7657f720a6fba2814f184aee8406b7433dd4f92c6a372a46ca1131a4`  
		Last Modified: Sat, 01 Sep 2018 08:02:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.3.0` - linux; arm variant v7

```console
$ docker pull nats@sha256:8dadd3af659b8e423eef8fa230b13689e2d707dada19dde8df70181fadf00638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2855832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9e955b545a4b29c330f2209888122d6c7b0cf5d7ab9fe2d2a2763b86f30924`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 12:01:28 GMT
COPY file:7b255c840fdfa2ad78b472dd50bd56edde21fbfac7c69c841cb727bc583e5761 in /gnatsd 
# Sat, 01 Sep 2018 12:01:29 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 12:01:29 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 12:01:30 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 12:01:30 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f8897a9c74d9812d44ab7ba54c52990e75a39d75a4e2891fcfe53dd279ddcc0d`  
		Last Modified: Sat, 01 Sep 2018 12:01:46 GMT  
		Size: 2.9 MB (2855355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e1ba7784eab45dd8281d59a67981e289d9db7ea01dfd4b12a4858cc72e14c1`  
		Last Modified: Sat, 01 Sep 2018 12:01:46 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.3.0` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:26d95c924922a52fa572f3dc7e723fb01290f096bd74bce779f369d396d204a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2787722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bed0c21fdffbf58a435ec0d0caf49ab19ecbcbbe46a5277ce7a13e6d2cf3406`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:54:37 GMT
COPY file:4df4d4aaa4168abde97fce56b0670f0ea1dd6ce6254e02e785cdc90072551064 in /gnatsd 
# Sat, 01 Sep 2018 08:54:38 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:54:38 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:54:39 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:54:40 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ae5821041f2acf0a193d1f47f25adcd7577be38acadb3f27fdbf472cb5414646`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 2.8 MB (2787245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed5988f07f52153fd46aaadc8406cc221ca76f949dde5f77a90475ac5c36a95`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.3.0` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:b6042d7d030c98bcf5c25f59a418634d41642a26fbaa983f4f97b194bed847eb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.4 MB (438419942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e120ee45af2b220524a0940576a2a20848d360ac3b9efeefe7240a4016fb5972`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:38 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 25 Dec 2018 18:59:41 GMT
RUN cmd /S /C #(nop) COPY file:6ecb5fc12b6dd56a695012369475c26102c409a2f7b9ae55e7e6d5d5498e74c3 in gnatsd.exe 
# Tue, 25 Dec 2018 18:59:43 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Tue, 25 Dec 2018 18:59:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 25 Dec 2018 18:59:45 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 25 Dec 2018 18:59:46 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb95733af4db6592407624c90544531d34aad8b9f6a5d636b61af1b274ea9213`  
		Last Modified: Tue, 25 Dec 2018 19:00:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf313607be73cda1a77caa6fb976972db8c260676a9356fe2bb85eef32d4ce3e`  
		Last Modified: Tue, 25 Dec 2018 19:00:11 GMT  
		Size: 3.0 MB (3016474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a658d250f7818d1bdb88f39b6facc91acc133244f0de906d046355218ecd39`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee26e35bc26cf933f903b162f196fbb37b2453a259b884fb5ca20e9b60e22b3b`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2c3903d3fda05d179525690724e58465ccd0ead89016c9e655ed96ba125850`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c6ccce171702a7e182fc479fa6c618fb8f9fee6f365002ce48729a18b9ab6b`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.3.0-linux`

```console
$ docker pull nats@sha256:f6c851b3e9f514f6c48f0553602f6cbd44415c77af9b45879912a3be39b6818f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:1.3.0-linux` - linux; amd64

```console
$ docker pull nats@sha256:28eb780ab00a512b20c96eff87da342cd8f6319080846352372f461211092c8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3049391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f5ca1594f2bb8f97f1aa1c5d97dce54fbc913aab48838e712e741883340c`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 31 Aug 2018 18:19:47 GMT
COPY file:d5a83c895bb36214cac7d41dfc7fba9b973e67ff76e01fc1c2a4fcf4735c57ad in /gnatsd 
# Fri, 31 Aug 2018 18:19:48 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 31 Aug 2018 18:19:48 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 31 Aug 2018 18:19:48 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 31 Aug 2018 18:19:48 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f3780679080c6d9005202a4f1fb264409c4b7d87c78779f083a163ca29b8d7bb`  
		Last Modified: Fri, 31 Aug 2018 18:19:57 GMT  
		Size: 3.0 MB (3048914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0525adc546e4edb91f093fcf7349480a6d1f95fb985a788ac9a55310c8ec29`  
		Last Modified: Fri, 31 Aug 2018 18:19:56 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.3.0-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:429d1935f323c9a5174070a16e6c8a91dc6dbaa50905890e5aa6478b25196aca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2858289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011c70ca43801dc212734cd714b1d3a09f27c9937f7c61b98511f4e0ea58e039`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:56a959227abba5248c58608ff99653810af244a11d6c5713091af1d84fc39c38 in /gnatsd 
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:01:55 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:01:56 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:01:56 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:46dcd44345d3a5e9651cdeed2296efa111bc9622ecf328aadbacd677f0b74429`  
		Last Modified: Sat, 01 Sep 2018 08:02:08 GMT  
		Size: 2.9 MB (2857811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df871aaa7657f720a6fba2814f184aee8406b7433dd4f92c6a372a46ca1131a4`  
		Last Modified: Sat, 01 Sep 2018 08:02:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.3.0-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:8dadd3af659b8e423eef8fa230b13689e2d707dada19dde8df70181fadf00638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2855832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9e955b545a4b29c330f2209888122d6c7b0cf5d7ab9fe2d2a2763b86f30924`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 12:01:28 GMT
COPY file:7b255c840fdfa2ad78b472dd50bd56edde21fbfac7c69c841cb727bc583e5761 in /gnatsd 
# Sat, 01 Sep 2018 12:01:29 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 12:01:29 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 12:01:30 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 12:01:30 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f8897a9c74d9812d44ab7ba54c52990e75a39d75a4e2891fcfe53dd279ddcc0d`  
		Last Modified: Sat, 01 Sep 2018 12:01:46 GMT  
		Size: 2.9 MB (2855355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e1ba7784eab45dd8281d59a67981e289d9db7ea01dfd4b12a4858cc72e14c1`  
		Last Modified: Sat, 01 Sep 2018 12:01:46 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.3.0-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:26d95c924922a52fa572f3dc7e723fb01290f096bd74bce779f369d396d204a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2787722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bed0c21fdffbf58a435ec0d0caf49ab19ecbcbbe46a5277ce7a13e6d2cf3406`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:54:37 GMT
COPY file:4df4d4aaa4168abde97fce56b0670f0ea1dd6ce6254e02e785cdc90072551064 in /gnatsd 
# Sat, 01 Sep 2018 08:54:38 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:54:38 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:54:39 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:54:40 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ae5821041f2acf0a193d1f47f25adcd7577be38acadb3f27fdbf472cb5414646`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 2.8 MB (2787245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed5988f07f52153fd46aaadc8406cc221ca76f949dde5f77a90475ac5c36a95`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.3.0-nanoserver`

```console
$ docker pull nats@sha256:2229f6eea42af4731e546713a0a7d80a4f116c64ec1e8540e952da446042803b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats:1.3.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:b6042d7d030c98bcf5c25f59a418634d41642a26fbaa983f4f97b194bed847eb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.4 MB (438419942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e120ee45af2b220524a0940576a2a20848d360ac3b9efeefe7240a4016fb5972`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:38 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 25 Dec 2018 18:59:41 GMT
RUN cmd /S /C #(nop) COPY file:6ecb5fc12b6dd56a695012369475c26102c409a2f7b9ae55e7e6d5d5498e74c3 in gnatsd.exe 
# Tue, 25 Dec 2018 18:59:43 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Tue, 25 Dec 2018 18:59:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 25 Dec 2018 18:59:45 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 25 Dec 2018 18:59:46 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb95733af4db6592407624c90544531d34aad8b9f6a5d636b61af1b274ea9213`  
		Last Modified: Tue, 25 Dec 2018 19:00:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf313607be73cda1a77caa6fb976972db8c260676a9356fe2bb85eef32d4ce3e`  
		Last Modified: Tue, 25 Dec 2018 19:00:11 GMT  
		Size: 3.0 MB (3016474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a658d250f7818d1bdb88f39b6facc91acc133244f0de906d046355218ecd39`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee26e35bc26cf933f903b162f196fbb37b2453a259b884fb5ca20e9b60e22b3b`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2c3903d3fda05d179525690724e58465ccd0ead89016c9e655ed96ba125850`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c6ccce171702a7e182fc479fa6c618fb8f9fee6f365002ce48729a18b9ab6b`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.3.0-windowsservercore`

```console
$ docker pull nats@sha256:e8ceb8a86faf30dddda16e27a28b22a48523866b6af6bfd34b3074e21733b7fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `nats:1.3.0-windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull nats@sha256:7d2996b2e3ed569973b5abba6c7826b2aeb86430724048fd53b5d9fd0ccc5fba
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5637752010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908ad37e321b52c93128362f90ed457feb8dcad57ca246993d7469bf2ac47465`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 18:58:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:51 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 25 Dec 2018 18:59:53 GMT
RUN cmd /S /C #(nop) COPY file:6ecb5fc12b6dd56a695012369475c26102c409a2f7b9ae55e7e6d5d5498e74c3 in gnatsd.exe 
# Tue, 25 Dec 2018 18:59:55 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Tue, 25 Dec 2018 18:59:56 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 25 Dec 2018 18:59:57 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 25 Dec 2018 18:59:59 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1757f36d2758dac6649fd11788fe1f4aadd5bc256a44a1f15725983aa6bfee6d`  
		Last Modified: Tue, 25 Dec 2018 18:58:56 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ef60a3d931b147563e6a75e1cf6b7b60ac23ac79a76880140d1c62b1d26a87`  
		Last Modified: Tue, 25 Dec 2018 19:00:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93889bc46e8c2bfc549af2692223c88fd0f775f03cd1b06e9d74bec578124d29`  
		Last Modified: Tue, 25 Dec 2018 19:00:23 GMT  
		Size: 3.0 MB (3016724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1461101f492c23fcaf00a9b1f293990e00a8a61bbbb4d3219b030f4572e98`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a3233240241d4530b852434ab9e1218930a98c82dedfe55b925d2aeec636d3`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88edd873c7ad2e6338b14104867a60c8782cdd090953cbb58e7bdc7b8fffa9aa`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5069db16833cd67fbc1c227af170dc240cbd712f494c504eeae052ac4ffce8b`  
		Last Modified: Tue, 25 Dec 2018 19:00:21 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:5e99caf7ca7b2e4a242e741328bde393bbd7a529a2cfdd19b84870da87ad6ca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2430; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:28eb780ab00a512b20c96eff87da342cd8f6319080846352372f461211092c8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3049391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f5ca1594f2bb8f97f1aa1c5d97dce54fbc913aab48838e712e741883340c`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 31 Aug 2018 18:19:47 GMT
COPY file:d5a83c895bb36214cac7d41dfc7fba9b973e67ff76e01fc1c2a4fcf4735c57ad in /gnatsd 
# Fri, 31 Aug 2018 18:19:48 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 31 Aug 2018 18:19:48 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 31 Aug 2018 18:19:48 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 31 Aug 2018 18:19:48 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f3780679080c6d9005202a4f1fb264409c4b7d87c78779f083a163ca29b8d7bb`  
		Last Modified: Fri, 31 Aug 2018 18:19:57 GMT  
		Size: 3.0 MB (3048914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0525adc546e4edb91f093fcf7349480a6d1f95fb985a788ac9a55310c8ec29`  
		Last Modified: Fri, 31 Aug 2018 18:19:56 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:429d1935f323c9a5174070a16e6c8a91dc6dbaa50905890e5aa6478b25196aca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2858289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011c70ca43801dc212734cd714b1d3a09f27c9937f7c61b98511f4e0ea58e039`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:56a959227abba5248c58608ff99653810af244a11d6c5713091af1d84fc39c38 in /gnatsd 
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:01:55 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:01:56 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:01:56 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:46dcd44345d3a5e9651cdeed2296efa111bc9622ecf328aadbacd677f0b74429`  
		Last Modified: Sat, 01 Sep 2018 08:02:08 GMT  
		Size: 2.9 MB (2857811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df871aaa7657f720a6fba2814f184aee8406b7433dd4f92c6a372a46ca1131a4`  
		Last Modified: Sat, 01 Sep 2018 08:02:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:8dadd3af659b8e423eef8fa230b13689e2d707dada19dde8df70181fadf00638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2855832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9e955b545a4b29c330f2209888122d6c7b0cf5d7ab9fe2d2a2763b86f30924`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 12:01:28 GMT
COPY file:7b255c840fdfa2ad78b472dd50bd56edde21fbfac7c69c841cb727bc583e5761 in /gnatsd 
# Sat, 01 Sep 2018 12:01:29 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 12:01:29 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 12:01:30 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 12:01:30 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f8897a9c74d9812d44ab7ba54c52990e75a39d75a4e2891fcfe53dd279ddcc0d`  
		Last Modified: Sat, 01 Sep 2018 12:01:46 GMT  
		Size: 2.9 MB (2855355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e1ba7784eab45dd8281d59a67981e289d9db7ea01dfd4b12a4858cc72e14c1`  
		Last Modified: Sat, 01 Sep 2018 12:01:46 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:26d95c924922a52fa572f3dc7e723fb01290f096bd74bce779f369d396d204a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2787722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bed0c21fdffbf58a435ec0d0caf49ab19ecbcbbe46a5277ce7a13e6d2cf3406`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:54:37 GMT
COPY file:4df4d4aaa4168abde97fce56b0670f0ea1dd6ce6254e02e785cdc90072551064 in /gnatsd 
# Sat, 01 Sep 2018 08:54:38 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:54:38 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:54:39 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:54:40 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ae5821041f2acf0a193d1f47f25adcd7577be38acadb3f27fdbf472cb5414646`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 2.8 MB (2787245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed5988f07f52153fd46aaadc8406cc221ca76f949dde5f77a90475ac5c36a95`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.14393.2430; amd64

```console
$ docker pull nats@sha256:ba953f2c9136fd73a3d16107b440731fc8da23c36cc1fe6f3d4bac047228b10f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.5 MB (423498165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303b2431c3bf3ffbbf4af27d6e2ceee0e8ba25ce18fe26e53c9c6e829ba10de9`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 01 Sep 2018 09:16:32 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 01 Sep 2018 09:16:33 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Sat, 01 Sep 2018 09:16:36 GMT
RUN cmd /S /C #(nop) COPY file:90ca2563d6c9eedc40d34c00debbb7645b3b7e24610045e812635873dead38c0 in gnatsd.exe 
# Sat, 01 Sep 2018 09:16:38 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 09:16:39 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 09:16:40 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Sat, 01 Sep 2018 09:16:41 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a7c6c5ea540b6fa9c311ada0aa79e1d6a539cefffe98b603b8c7fe79ed75c84b`  
		Last Modified: Sat, 01 Sep 2018 09:17:08 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088960eff50fe41a26f35af1603c8a47c4ac67c782901d737426c167c45c7d05`  
		Last Modified: Sat, 01 Sep 2018 09:17:08 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bbb442fa342fb1e354f498b9686f4fd3ee376a9a721d9474fbe5c1c40436a1`  
		Last Modified: Sat, 01 Sep 2018 09:17:07 GMT  
		Size: 3.0 MB (3016486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a34f4485adcf80f1d2d562c6c5a167a447c7f1b05ed2e99c9a69630cec627ae`  
		Last Modified: Sat, 01 Sep 2018 09:17:06 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ebbfd93cb309fd92985818a3b177d28acf5d38fedb048e1886ca94348e389f`  
		Last Modified: Sat, 01 Sep 2018 09:17:07 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadd6e2f5f216c8bb3e3ad0ea313a103d89a22fc58c4abbd15f729e6620d9aca`  
		Last Modified: Sat, 01 Sep 2018 09:17:06 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb077ff75ce74d583b11f963488ecdca0c1a2dbe877e24a9f4d05eeba7e3781b`  
		Last Modified: Sat, 01 Sep 2018 09:17:06 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:f6c851b3e9f514f6c48f0553602f6cbd44415c77af9b45879912a3be39b6818f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:28eb780ab00a512b20c96eff87da342cd8f6319080846352372f461211092c8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3049391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f5ca1594f2bb8f97f1aa1c5d97dce54fbc913aab48838e712e741883340c`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 31 Aug 2018 18:19:47 GMT
COPY file:d5a83c895bb36214cac7d41dfc7fba9b973e67ff76e01fc1c2a4fcf4735c57ad in /gnatsd 
# Fri, 31 Aug 2018 18:19:48 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 31 Aug 2018 18:19:48 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 31 Aug 2018 18:19:48 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 31 Aug 2018 18:19:48 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f3780679080c6d9005202a4f1fb264409c4b7d87c78779f083a163ca29b8d7bb`  
		Last Modified: Fri, 31 Aug 2018 18:19:57 GMT  
		Size: 3.0 MB (3048914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0525adc546e4edb91f093fcf7349480a6d1f95fb985a788ac9a55310c8ec29`  
		Last Modified: Fri, 31 Aug 2018 18:19:56 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:429d1935f323c9a5174070a16e6c8a91dc6dbaa50905890e5aa6478b25196aca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2858289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011c70ca43801dc212734cd714b1d3a09f27c9937f7c61b98511f4e0ea58e039`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:56a959227abba5248c58608ff99653810af244a11d6c5713091af1d84fc39c38 in /gnatsd 
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:01:55 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:01:56 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:01:56 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:46dcd44345d3a5e9651cdeed2296efa111bc9622ecf328aadbacd677f0b74429`  
		Last Modified: Sat, 01 Sep 2018 08:02:08 GMT  
		Size: 2.9 MB (2857811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df871aaa7657f720a6fba2814f184aee8406b7433dd4f92c6a372a46ca1131a4`  
		Last Modified: Sat, 01 Sep 2018 08:02:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:8dadd3af659b8e423eef8fa230b13689e2d707dada19dde8df70181fadf00638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2855832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9e955b545a4b29c330f2209888122d6c7b0cf5d7ab9fe2d2a2763b86f30924`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 12:01:28 GMT
COPY file:7b255c840fdfa2ad78b472dd50bd56edde21fbfac7c69c841cb727bc583e5761 in /gnatsd 
# Sat, 01 Sep 2018 12:01:29 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 12:01:29 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 12:01:30 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 12:01:30 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f8897a9c74d9812d44ab7ba54c52990e75a39d75a4e2891fcfe53dd279ddcc0d`  
		Last Modified: Sat, 01 Sep 2018 12:01:46 GMT  
		Size: 2.9 MB (2855355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e1ba7784eab45dd8281d59a67981e289d9db7ea01dfd4b12a4858cc72e14c1`  
		Last Modified: Sat, 01 Sep 2018 12:01:46 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:26d95c924922a52fa572f3dc7e723fb01290f096bd74bce779f369d396d204a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2787722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bed0c21fdffbf58a435ec0d0caf49ab19ecbcbbe46a5277ce7a13e6d2cf3406`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:54:37 GMT
COPY file:4df4d4aaa4168abde97fce56b0670f0ea1dd6ce6254e02e785cdc90072551064 in /gnatsd 
# Sat, 01 Sep 2018 08:54:38 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:54:38 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:54:39 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:54:40 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ae5821041f2acf0a193d1f47f25adcd7577be38acadb3f27fdbf472cb5414646`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 2.8 MB (2787245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed5988f07f52153fd46aaadc8406cc221ca76f949dde5f77a90475ac5c36a95`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:2229f6eea42af4731e546713a0a7d80a4f116c64ec1e8540e952da446042803b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:b6042d7d030c98bcf5c25f59a418634d41642a26fbaa983f4f97b194bed847eb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.4 MB (438419942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e120ee45af2b220524a0940576a2a20848d360ac3b9efeefe7240a4016fb5972`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:38 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 25 Dec 2018 18:59:41 GMT
RUN cmd /S /C #(nop) COPY file:6ecb5fc12b6dd56a695012369475c26102c409a2f7b9ae55e7e6d5d5498e74c3 in gnatsd.exe 
# Tue, 25 Dec 2018 18:59:43 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Tue, 25 Dec 2018 18:59:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 25 Dec 2018 18:59:45 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 25 Dec 2018 18:59:46 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb95733af4db6592407624c90544531d34aad8b9f6a5d636b61af1b274ea9213`  
		Last Modified: Tue, 25 Dec 2018 19:00:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf313607be73cda1a77caa6fb976972db8c260676a9356fe2bb85eef32d4ce3e`  
		Last Modified: Tue, 25 Dec 2018 19:00:11 GMT  
		Size: 3.0 MB (3016474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a658d250f7818d1bdb88f39b6facc91acc133244f0de906d046355218ecd39`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee26e35bc26cf933f903b162f196fbb37b2453a259b884fb5ca20e9b60e22b3b`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2c3903d3fda05d179525690724e58465ccd0ead89016c9e655ed96ba125850`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c6ccce171702a7e182fc479fa6c618fb8f9fee6f365002ce48729a18b9ab6b`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:e8ceb8a86faf30dddda16e27a28b22a48523866b6af6bfd34b3074e21733b7fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull nats@sha256:7d2996b2e3ed569973b5abba6c7826b2aeb86430724048fd53b5d9fd0ccc5fba
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5637752010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908ad37e321b52c93128362f90ed457feb8dcad57ca246993d7469bf2ac47465`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 18:58:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:51 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 25 Dec 2018 18:59:53 GMT
RUN cmd /S /C #(nop) COPY file:6ecb5fc12b6dd56a695012369475c26102c409a2f7b9ae55e7e6d5d5498e74c3 in gnatsd.exe 
# Tue, 25 Dec 2018 18:59:55 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Tue, 25 Dec 2018 18:59:56 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 25 Dec 2018 18:59:57 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 25 Dec 2018 18:59:59 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1757f36d2758dac6649fd11788fe1f4aadd5bc256a44a1f15725983aa6bfee6d`  
		Last Modified: Tue, 25 Dec 2018 18:58:56 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ef60a3d931b147563e6a75e1cf6b7b60ac23ac79a76880140d1c62b1d26a87`  
		Last Modified: Tue, 25 Dec 2018 19:00:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93889bc46e8c2bfc549af2692223c88fd0f775f03cd1b06e9d74bec578124d29`  
		Last Modified: Tue, 25 Dec 2018 19:00:23 GMT  
		Size: 3.0 MB (3016724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1461101f492c23fcaf00a9b1f293990e00a8a61bbbb4d3219b030f4572e98`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a3233240241d4530b852434ab9e1218930a98c82dedfe55b925d2aeec636d3`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88edd873c7ad2e6338b14104867a60c8782cdd090953cbb58e7bdc7b8fffa9aa`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5069db16833cd67fbc1c227af170dc240cbd712f494c504eeae052ac4ffce8b`  
		Last Modified: Tue, 25 Dec 2018 19:00:21 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
