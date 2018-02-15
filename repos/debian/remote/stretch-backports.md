## `debian:stretch-backports`

```console
$ docker pull debian@sha256:8f2f6c61aa1b9062e8ed1ce0b66e42610b2cc068536922f1e7f362a92be78246
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

### `debian:stretch-backports` - linux; amd64

```console
$ docker pull debian@sha256:bba179e0b63d3566d5305b4ec2c6b15e2efc665fb73c964bbe9fb3ac9edd9fa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45132847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36536f0aff7af8d3e4dbe9a7b0055683489b06d6f3def4d6f14de37abcd42a9d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:01:29 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abde9853c1c3e0a2d42ee7ebf1fdab383c9b0a90d5560590f565d28f9488956b`  
		Last Modified: Thu, 15 Feb 2018 02:27:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:cfa21a6f6ad8a93f9aed57efd42eeee80f9aa76a76c21afae8e18d88cb200471
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43809405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270fb6f8f3333e52230b8662746867eaac707e16a5595231b199dc9e0ff8fe59`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:01:59 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbdc3d8f265242ca31da899bbad3d5e5a9b3e6ceb9ce4401ede2d6661c773fa`  
		Last Modified: Tue, 12 Dec 2017 21:12:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:a1131f3bee3a747ec2a87f0377c1333297723f93f8765cc8655f42b50a903695
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41849919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ddca808d9f132d31ffd1375c0384d00442e43e48a6e2412baefd84d13a463b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 13:33:15 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02afb52ab6637e91feb034081136a472ea61ac9ae3ca42db91c56d1d7ed9d485`  
		Last Modified: Tue, 12 Dec 2017 13:45:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:803328be29b554e91321adccab4b197647a2eaf3304f432e92fbdcf1f3b6622a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42913035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b48e89832bed77f35f13f1f24954737ec1629c8923f32b3174cab487a020ec88`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:33:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f736702c3b5035142bf079581a629920e97c14a2c9835d2d29380b20cd183ef`  
		Last Modified: Tue, 12 Dec 2017 18:48:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; 386

```console
$ docker pull debian@sha256:65464921526ea8f115620e33e56e6ef67651d35adb36ae466df6b0588607809b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45827288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f509e008728194314f4a43d09c42f640a4fb31df0d3d1d88a6fdc64926c63b06`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:35:48 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec58ac5d6c6b729c09847a2750664fc9dea725c59084571a882517c8a322f42`  
		Last Modified: Tue, 12 Dec 2017 15:02:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:bccecc0fa5bd6e8a56e9928d4ee78e2dd1b90b2186b2d85c5687bac73faea753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45388052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9097b844317a6904d62be1ee1b70c59deb94b9b93ec58f484276f4c4178bea9a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:38:10 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54f81a44d945ed806ff286bb01368a1475d530a79228c2bf17f102d1af2fad2`  
		Last Modified: Thu, 15 Feb 2018 01:46:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; s390x

```console
$ docker pull debian@sha256:44839506f89f5fe89b67414278e1e7ceabaa0a533b7094c4eedc0d2bac75f34b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44967296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0e1bc1139d774021be787f7a185a50ac5ba189252aa337b24913147fe05621`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:25:36 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4ce3c4ba3b9ac8d9cc8d137428452b142e9c6001a9b5f366ee6ecb51649d32`  
		Last Modified: Tue, 12 Dec 2017 06:31:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
