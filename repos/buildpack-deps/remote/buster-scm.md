## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:386e2c11714427b5567bf62bd1c6be98080b6c37f78ac87c66468733ca1bb203
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

### `buildpack-deps:buster-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c07ce8e5be7a9bb729a852d5e9d1de39f4d5f53258801fae60a7af69fd86f8ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119818309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c59cbddae8b15c947a02c6c9ed1ecde2e93a8e0104c703ec94712fb5cc590f62`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:28:53 GMT
ADD file:1206af08b0982cf51772ede1bb826b30be8426cadc52014207fcddd1dce1a006 in / 
# Wed, 08 May 2019 00:28:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:27:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:27:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:78496f898f92b99fe2e84608b2142ab03f43c7f16be3ef2e394b7c61b0ae4f7f`  
		Last Modified: Wed, 08 May 2019 00:35:29 GMT  
		Size: 50.3 MB (50281451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371585a4d994e5e2a109f054c6b4f262cebc609dc5b8dfae60d3f469c0dbf9bc`  
		Last Modified: Wed, 08 May 2019 01:42:50 GMT  
		Size: 7.8 MB (7791309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40646915b45440e6e81e9db964eaf8634250379b3dc4a4ad6f89ebbd437af4dd`  
		Last Modified: Wed, 08 May 2019 01:42:50 GMT  
		Size: 10.0 MB (9977692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367f315d31e672cc89f8ce78e8220d1eba1bc429b350d84a537592677676486`  
		Last Modified: Wed, 08 May 2019 01:43:07 GMT  
		Size: 51.8 MB (51767857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:833f65a8355ee961e5ffefc36969ee1eb5dd88444fc3915df624c51b4b2a1fa7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114512289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848c88d030fcc8c320faca0e366bcd8089ab4b8450ca68fbf066e7d260b3b977`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:49:07 GMT
ADD file:32322c35d043b12b15eabfa71c7e1f7ee0a9aa0da843563ae0071b2734f64e02 in / 
# Wed, 08 May 2019 08:49:08 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:48:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 09:49:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ec2a6987ecd7db01af5a6962ce511e10d30c11c3ec6500e3c2b48150bb874308`  
		Last Modified: Wed, 08 May 2019 08:56:06 GMT  
		Size: 48.0 MB (47991337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e09a6c0b2c2732cbc7a0798a062fb05a5da94cededd18b2c1ee906b90fb0a0`  
		Last Modified: Wed, 08 May 2019 10:05:22 GMT  
		Size: 7.3 MB (7340262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693b1cab3ce5f22f4b85020bf480b5b15266f54ace8a928cc08ab0e3e56c8c7b`  
		Last Modified: Wed, 08 May 2019 10:05:23 GMT  
		Size: 9.7 MB (9672420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2c4fd6787a7877877295e37cb51d56e3e499a38db9c74bb62e8fe830090ae6`  
		Last Modified: Wed, 08 May 2019 10:05:46 GMT  
		Size: 49.5 MB (49508270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bea1a41bb2746a91c68f6ccb96cd39035c5966ec718758af171aca3246a4e858
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109474859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6ce58ec96d0c76036417b05ffb441e5bac6c911dfc59cbfd5f3c6e6b3c0064`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:58:30 GMT
ADD file:6ffb4993194911c9b6eb9f7613327267f4909ffb0d9547630bc4c9d682fe9b36 in / 
# Wed, 08 May 2019 11:58:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:51:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:51:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:52:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b5e4574086db630513c13564425e55ae79c102666c529caa0e77849238dd0fbd`  
		Last Modified: Wed, 08 May 2019 12:06:41 GMT  
		Size: 45.8 MB (45765836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bec990fdef001ec984146d9e9f9722361873814ebc49af678f0e125dc7b799c`  
		Last Modified: Wed, 08 May 2019 13:08:10 GMT  
		Size: 7.1 MB (7089525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710c0909fb0c17aa68d8f567fb4ff21b04a95118d28ecd11288f7893b5eb7a7`  
		Last Modified: Wed, 08 May 2019 13:08:10 GMT  
		Size: 9.3 MB (9328719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91c0f1c4e0c9ec497225822a07612cbc7316b557115df3c293b6313879f3fdc`  
		Last Modified: Wed, 08 May 2019 13:08:33 GMT  
		Size: 47.3 MB (47290779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:056e28d14f5805178b3139bbeb570c204aaa6d9ab06ea4609024c6a70d22bb5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118810829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51227f1f51c5841d0c6001e5a9b0df691e2dbf0d7f8d9d1ae7e63f150fddab17`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:45:01 GMT
ADD file:4ac330b79160164d8baf8c9927dd9364c8efae6551ddaf507dbf46315abdb184 in / 
# Wed, 08 May 2019 08:45:02 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:25:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:28:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f6fb23aad628a3be4a2fe2611a079b21a896b677f5e511e4beb479ebdceae480`  
		Last Modified: Wed, 08 May 2019 08:52:20 GMT  
		Size: 49.1 MB (49073023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436e1a6ed939345c0dbaab47321bf6369971e85f497ab234c7eb5c88d34f6008`  
		Last Modified: Wed, 08 May 2019 12:03:24 GMT  
		Size: 7.7 MB (7665993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3fd216a2c6eb54be003e3b8362a53fe01a3a6bc89d48dd4ec3df088fc87e79`  
		Last Modified: Wed, 08 May 2019 12:03:24 GMT  
		Size: 10.0 MB (9967042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d39c87d3d92b3a0c74963daa339c8bcbebf83fa90b9b958cdedbe3e3ce7fa5`  
		Last Modified: Wed, 08 May 2019 12:03:53 GMT  
		Size: 52.1 MB (52104771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c6ab7a58cf57294833404875de33d02436ef876487fa7cb833586000ef7c6d9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124920712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1074c5f1c6132f6f0e06385e299b6728c645778a3f6f97d086f57c6d9a3a282e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:39:29 GMT
ADD file:e559a18019b869d561ce9206554ab0f0d70d2f0b5524ea6b6e98e94bf1ac2c09 in / 
# Wed, 27 Mar 2019 10:39:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:39:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a19caaf6f7524a9023673e7fe943eb4aeb990ad49b202bb21ebd76af7b2d6013`  
		Last Modified: Wed, 27 Mar 2019 10:46:01 GMT  
		Size: 51.0 MB (50992741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c29554f6331ff982085dae0958e8d8b9f765f1a1d8321674db501de13de268`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 7.9 MB (7948658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab48bc7a278fad7787facadc0eb1a55fe885b9cfe370f688312cf9c8421afef6`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 10.3 MB (10317991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47f2794fe4db08a46d5a6c5e4840ff62d6e1aeeeee7c181bde47c53f614513b`  
		Last Modified: Wed, 27 Mar 2019 14:07:01 GMT  
		Size: 55.7 MB (55661322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f8fed8fe3fdfb871999669c17e244bca6ab594affb1b74772e7a4244cd85c87d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130357885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b7f8c24d3d78e4632951751be1b05cc34df564d256b41da9768748868e6dec`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:37:11 GMT
ADD file:860c3e54b1361dc72471f0b2d2a052c0c4a02df3bd46462099169ec6ad3057a3 in / 
# Wed, 08 May 2019 08:37:14 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:42:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bcb4d3ba89e937d3c22cda2d7f5c8305b83bd698e18972597f0f1db8b53d11fd`  
		Last Modified: Wed, 08 May 2019 09:22:07 GMT  
		Size: 54.0 MB (54033662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f371eaf7c8481ba01d5dfa0535f00c0d88fa7e5d05188180aaefb895a35cdd2a`  
		Last Modified: Wed, 08 May 2019 12:18:29 GMT  
		Size: 8.2 MB (8238049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e3c4da4391c552eea2eea69767b126eb5fb636a5b520d88f8a40f30b20fc29`  
		Last Modified: Wed, 08 May 2019 12:18:29 GMT  
		Size: 10.7 MB (10718272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5418d1aa27f4dd01ed31db146ba3995c573deb579a5f71b57ce8e19cb79ba79`  
		Last Modified: Wed, 08 May 2019 12:19:20 GMT  
		Size: 57.4 MB (57367902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b0913136ab7de26160d514d6a53930c8ed2b60bd8e5fdc4412a19605090aa1a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117399033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036cb33bb32c2c4d777d6cc6f2e36ff1de12e734c98e46ff87f9c13bda716040`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:43:22 GMT
ADD file:37daf0513fea1c4a06c54f1be0301c9607e90a28e69568358adb8e9833c61307 in / 
# Wed, 08 May 2019 11:43:22 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:38:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:39:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e2880da447c5f0c5f23917f89bc4e9905cffa840f13971ff3aa5196d87cc28d`  
		Last Modified: Wed, 08 May 2019 11:50:20 GMT  
		Size: 48.9 MB (48861653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b5724c3d76bc1a4c4b08924c802dc4f0f1ba314b92aee26d18df3715b06131`  
		Last Modified: Wed, 08 May 2019 13:56:37 GMT  
		Size: 7.4 MB (7367492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5ee8be69140e35e6be8347227f79a6fd0c65543733d8fa6f7d325eb75ebe38`  
		Last Modified: Wed, 08 May 2019 13:56:38 GMT  
		Size: 9.9 MB (9865513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b391b09cd3eb072171311987515ff0a215815e09a1e2af7b4482066e0794b8`  
		Last Modified: Wed, 08 May 2019 13:57:11 GMT  
		Size: 51.3 MB (51304375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
