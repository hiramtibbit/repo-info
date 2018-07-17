## `buildpack-deps:jessie-curl`

```console
$ docker pull buildpack-deps@sha256:c08d4c23ddfe22a31c48540ad4f64c14ac40c4e61457a45ad4f94159d8d0e766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:jessie-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:89d5b18b95b68d78dfd0968fdb0c9a41a6831a887c38860fe34d0313ff8accf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71790202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30cb6b9c60ba05245ac89107b6a519ec47597f34cf4e440c3fea0185b0d2f3e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:ee16a9f1cd170e5bb3f496c348cfa7855b2b02f0596e99a133ddbf6bf0461bb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69476539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d380496483b85d63cf782bc4622679a8deb98573ddfb62dc86e20a03720b0c6f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:50:04 GMT
ADD file:4f71ce5a537d5b850f449dc85c4ab5092c673eb0784e112eaeed004c1053c959 in / 
# Tue, 17 Jul 2018 08:50:05 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:41:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6517acaf0fe60ef69bfcf8dfa76c43b4a1e5b4fedea418026ded2b0fe506ac2b`  
		Last Modified: Tue, 17 Jul 2018 09:02:44 GMT  
		Size: 52.4 MB (52447839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951a82006f9a5d9219f349459f2e0e765002a1f68a81eefc081835abb73adc94`  
		Last Modified: Tue, 17 Jul 2018 11:58:23 GMT  
		Size: 17.0 MB (17028700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ff8c4eb1d60d703c0392f9495aebc51f741c158dec4d2e8fe2a2ef85f0ae45fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66900033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86e622cf282b5a35cfbd32191d5c2d6cf3127afbc1040619535bf3bfc2ed271`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:59:28 GMT
ADD file:b6521e3d1f270115e5b6c8df3fb62b87aae252b99045c6884f1c071d88fecf10 in / 
# Tue, 17 Jul 2018 11:59:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fbd7fa58000c551825cee932912ff0e71b08d10d3a21e72fa231f872c5ec3109`  
		Last Modified: Tue, 17 Jul 2018 12:10:53 GMT  
		Size: 50.2 MB (50187773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d9a9aa87bb2d7aaaef5230826591f3a257cdde7443239673f8a87f99ee7ffa`  
		Last Modified: Tue, 17 Jul 2018 14:06:05 GMT  
		Size: 16.7 MB (16712260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0ec15e64b1de256c0ea2bb1b1ab2e883b7051feb210674154d6ab2fc15cd2ee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68660696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3f141dd43b97062fc1ae6c36da61a49960f216e9bb5326ba53c60a215d0792`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:08a2f28a4c4b3250a64eada1d5b99a5f5621eaad64b74dd6191185fdc2718f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74364819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313e743652288f2cf7b7f591638d99d1f797787d18efda2883ecb84cfdea9376`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:449381a37c29aa5491197f2ccc2d8843ef665489cae32779bfc96dadfc43379f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (70979810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e0956219a722b2170d393627b74d4d7e6735980e28ca17dcc9d2d25070c626d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ca8696632919d2399cf257947d8cd128785533da0088c1cdcae922dd191a0522
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.3 MB (72252888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7ed51193b261973bf33bd3d1ae0930b8a8f9300d059c890e72978392524801`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:30:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37be7fda6df150d239266145f4a84caa9f37d32c535a19acbb408973995140fd`  
		Last Modified: Sat, 05 May 2018 12:45:40 GMT  
		Size: 17.8 MB (17787031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
