## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:b91d36203ff4f76514fa93620b5e9814298714db576d734292d3cd579ba32166
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

### `buildpack-deps:testing-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:0d939561bd7a3a9f97fe34123937a6e70d97b93fb2779aac1f96f2533a51127a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119907753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38eb2db2a707dc1e8eee2e7dc8fe4c940c910e6cba2c9a8f372e29a8a9d9b303`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:21:37 GMT
ADD file:e7b0b4ed23ac0ce3e8c4d65daa6a8896533c92b2dd167ba2c15c7181354d64b6 in / 
# Mon, 10 Jun 2019 23:21:37 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:15:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:15:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:478cd0aa93c0da2489a29b95d43a21a942cece28ecb0ba0f99770f52eb8ee3dc`  
		Last Modified: Mon, 10 Jun 2019 23:25:52 GMT  
		Size: 50.4 MB (50379147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e87ee23a91fa7c0c19afb429b5a0f3293ceddc584f8f3d9889a83eb6e97ea8`  
		Last Modified: Tue, 11 Jun 2019 00:33:29 GMT  
		Size: 7.8 MB (7791615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c3ebf254930a8323096e65b35f33db49f8fd72a6f1032ed67b412c25842a39`  
		Last Modified: Tue, 11 Jun 2019 00:33:29 GMT  
		Size: 10.0 MB (9977859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928340129b14a13cecd45f7a88a0cd79827d158e322ebd07901d0a4602716cf`  
		Last Modified: Tue, 11 Jun 2019 00:33:57 GMT  
		Size: 51.8 MB (51759132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:eb9a86756c30e98a424c7f07891ddea8e9793d4e3499d25abcbb25d0cc315c62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114604215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e661f131a23b7e7ffa5c2fafb7e2ed6fa7fdc402258eb9f6fa12060c4cc2a6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:49:01 GMT
ADD file:187f1bb7f8cb32f8ee432b6cdcf5f0bce99c3a74da2f3d29d3bb78b6fb9b11e0 in / 
# Mon, 10 Jun 2019 23:49:02 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:17:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:18:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6fed64d2c33a11ff19c06da4b865fad43acb0d621096e90181e25fde31fb34d7`  
		Last Modified: Mon, 10 Jun 2019 23:56:04 GMT  
		Size: 48.1 MB (48081162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff922da61bc37d2c7366ccc61d39beadde95cd3f1117ea074056e34a65bb807`  
		Last Modified: Tue, 11 Jun 2019 00:34:11 GMT  
		Size: 7.3 MB (7340416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cc9442d04914ecc6bfdb5cf5de5b17a5f1de20b2719e72182563f68fdc5894`  
		Last Modified: Tue, 11 Jun 2019 00:34:11 GMT  
		Size: 9.7 MB (9672637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b1d432c31ecb30c0fddb6236bba156e304770c141603d458a28a65331bd3f9`  
		Last Modified: Tue, 11 Jun 2019 00:34:34 GMT  
		Size: 49.5 MB (49510000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v7

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

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b3f8e3f584e93093b5764c307c33c2fb088af28840a289a60c136522531e5db8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118899167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94caaa6c4e79c7fe6381950b078f029b624d03e48f1dd9c62b107e6134b3ccf2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:03 GMT
ADD file:d4ed38275e26cfea6aa8a3f6b394ee5f2b0fa641d0630a3d468e28e28ac1884a in / 
# Mon, 10 Jun 2019 23:40:06 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:06:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8689d9294ba4ec1f0c65b9d464daf20e7a8f23953891113e97383cfe25accb70`  
		Last Modified: Mon, 10 Jun 2019 23:43:20 GMT  
		Size: 49.2 MB (49158860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f677549a90f69ffb66a8816076ff76f735e26af842855caa48e55fb7a62f10`  
		Last Modified: Tue, 11 Jun 2019 00:30:47 GMT  
		Size: 7.7 MB (7666785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593cd4266304dac1b4b43236f5c5f19dd80d65ec96916fa7592ac3248aaab076`  
		Last Modified: Tue, 11 Jun 2019 00:30:43 GMT  
		Size: 10.0 MB (9967646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2aa1260a734d045c13557a51c8248c6904530c33b595a597e0837aaa6166d8`  
		Last Modified: Tue, 11 Jun 2019 00:31:11 GMT  
		Size: 52.1 MB (52105876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0ae0474f325fcc936a30ea91500284e7219a00f31a0054e1ec2d3129791bea53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122686028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68c9c54b423dcdedf66fbbeb357049a21d6274937c64f767c82e7f413e7244f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:40:04 GMT
ADD file:30f011b9e0c275ea9962efaf87570e947bdee578f35ddf488daed9b8e449e80a in / 
# Wed, 08 May 2019 10:40:05 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:52:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:52:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:53:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9d0c8ace522928ce461c4347585b97c1e69f79d3c6219ea3be772d35020cd97`  
		Last Modified: Wed, 08 May 2019 10:53:14 GMT  
		Size: 51.1 MB (51051474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb51d2b025e5696842d4af52dc2a12e15d965482f971d90dbe4be81fefb425`  
		Last Modified: Wed, 08 May 2019 19:10:50 GMT  
		Size: 8.0 MB (7956351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8003a0a73261b000c0059197ad215ddc033d9fa2d5a4fbb50e0674b359196`  
		Last Modified: Wed, 08 May 2019 19:10:50 GMT  
		Size: 10.3 MB (10322347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552a7e05fe2b37d662cdb57497bb06722aadc72201afda1d72706ca9a938e13`  
		Last Modified: Wed, 08 May 2019 19:11:07 GMT  
		Size: 53.4 MB (53355856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

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

### `buildpack-deps:testing-scm` - linux; s390x

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
