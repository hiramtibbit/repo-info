## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:18d9426a03797f294d09df2bc98afa8df52e2a215cd2c1c1cbbb523b3dbd630d
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:284c8baa81a8472657f9bac0f627685391741c35113910e3e86188596db58b74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120176774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260d4b95ae4bb63a4a11d2ccf7b68f1f0200528f2e905c592c71da35977e83e2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:31:47 GMT
ADD file:fb47fe44d1e6b6b670253c11516570b51b7f0fb8b982c3f5d384146343df5f5b in / 
# Wed, 08 May 2019 00:31:47 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:38:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:38:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e46e397f892870613903a2484edb209778048886e5d00b27f9d4393280c94f8`  
		Last Modified: Wed, 08 May 2019 00:36:58 GMT  
		Size: 50.3 MB (50340155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be41ac19f89ce322172dc112b6a1a0e0874c0e56225e16d4c79b68fdb1594d5`  
		Last Modified: Wed, 08 May 2019 01:44:41 GMT  
		Size: 7.8 MB (7789405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd06bdcacea2c0c2aa629225a58be0efcb08d2fdedf0ec094945fb41311f02`  
		Last Modified: Wed, 08 May 2019 01:44:41 GMT  
		Size: 10.0 MB (10049566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52000ffc362737d9851dc59aab00cf522489bc7bdf203c20bda7e88eded290fa`  
		Last Modified: Wed, 08 May 2019 01:44:55 GMT  
		Size: 52.0 MB (51997648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:934a8c5931c8e79f840f02e54c9390b68eda86270b4fd341c82ebef753d616ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114872488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117099ade7c1f29799fa6f96af5ed14619e3c6f319427dbdaf6d4d703d648327`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:51:39 GMT
ADD file:9413922e0450a981af5b854fd02d6462ae98edbc50dd0c86aa6b3a8980832488 in / 
# Wed, 08 May 2019 08:51:40 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:58:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 09:58:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9496df20a2df40133d2e133f1a23a2da3ac7d28df6d3546c7c2c7472da72acb9`  
		Last Modified: Wed, 08 May 2019 08:58:06 GMT  
		Size: 48.1 MB (48050033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5417c06ad026ad3d801aa2995bbc998beffb64bf2ab86ce2cbe85d7f2edb1a19`  
		Last Modified: Wed, 08 May 2019 10:07:58 GMT  
		Size: 7.3 MB (7339557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c8f2b8abd7e42d4b50c64e06937eda45e7f2ccd07a12ebf83d769652259b7b`  
		Last Modified: Wed, 08 May 2019 10:07:58 GMT  
		Size: 9.7 MB (9739478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2809155b98a8495f028596c678a80d30371f423abf4a9150814733a173e586`  
		Last Modified: Wed, 08 May 2019 10:08:21 GMT  
		Size: 49.7 MB (49743420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:feb8413200de4042875c6387c2a84a6ec856905f8f33ee49b31f678ee7bae67a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109837717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b194d618d6c5b0c12adaba351714e8305f0e1c91df21695f7dfa11efde5040`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:01:32 GMT
ADD file:3d32a1759251e5837e3cdae42fa906791e9c892300288e215950a176746a3cc8 in / 
# Wed, 08 May 2019 12:01:34 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:00:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:01:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:01:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:67f8dba29ff4d738bafc60e2ad83ad23b287b7e75537c9c33df98e2f796090a1`  
		Last Modified: Wed, 08 May 2019 12:08:32 GMT  
		Size: 45.8 MB (45832013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6415f7154015cc2cc8de167510849ae48a78c93082ce491bf1ab1d1e4068e041`  
		Last Modified: Wed, 08 May 2019 13:10:48 GMT  
		Size: 7.1 MB (7087006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11e29d2e316f6761be080b7f24445c92ed61249f247272c9bb576b876206aee`  
		Last Modified: Wed, 08 May 2019 13:10:47 GMT  
		Size: 9.4 MB (9396752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1bad3006ee1a9544d0375a979ad55abe59cee7c380eab22eaf7d249ae7b176`  
		Last Modified: Wed, 08 May 2019 13:11:14 GMT  
		Size: 47.5 MB (47521946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:552d01a52e62775024eb69d8a0372f48b4b553b4c0633852602d6fc398a11929
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119158867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c7592b404d353626085183badb8bba07fa6e71b6ad74fe01d254cbd13400e9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:46:04 GMT
ADD file:b772d60d99de58b0a77b838a9ea76bd80e74fea967941bf2dce602f95189ef47 in / 
# Wed, 08 May 2019 08:46:05 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:39:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af42c3f242f1fc5a2e7df41c4d9800290f2083187f3b36bce1cb6b2248ff6d7d`  
		Last Modified: Wed, 08 May 2019 08:53:12 GMT  
		Size: 49.1 MB (49132069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4c9a49a9f229f6eeeaff3b09729a10c9e150ccecfe7a5aa69fb6509106d003`  
		Last Modified: Wed, 08 May 2019 12:05:14 GMT  
		Size: 7.7 MB (7663884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6720045851b7c9d3e1bd1ff59aa5a017be98e284bed4778a9a683244f2bb13`  
		Last Modified: Wed, 08 May 2019 12:05:15 GMT  
		Size: 10.0 MB (10039177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3bb494acf26b4550339e23661e5cd6023a5f2098da5810aee9bc963361b0a7`  
		Last Modified: Wed, 08 May 2019 12:05:45 GMT  
		Size: 52.3 MB (52323737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5e9b909e8081a3e79f01c5815bf235d3a05f6749a8bfa659f1204fe8a97575b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122975033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37da8a684e3e515c01f6a51e81687510e7a08b9acfbad11f768cf59f01ba5f0b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:41:58 GMT
ADD file:35788f1e7dcbb1ec1f7f2defd3659b41f24da20c68bfeab196967df87fc8e51c in / 
# Wed, 27 Mar 2019 10:41:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:53:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:53:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4a9b095f08b70612fc43d5a6994ce29ec5bf30a08f4d667c9001e554c1087a6b`  
		Last Modified: Wed, 27 Mar 2019 10:48:02 GMT  
		Size: 51.0 MB (51036251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac3f749258c84adbc388b501b458b24b72c90c3cf1af139bea2bebaeaf42599`  
		Last Modified: Wed, 27 Mar 2019 14:08:42 GMT  
		Size: 8.0 MB (7953730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ce019039fc3caacd4821deda7e87d1571f28280ec42c867bba2a563d2c8288`  
		Last Modified: Wed, 27 Mar 2019 14:08:43 GMT  
		Size: 10.4 MB (10395856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e192895cb0b8de5cfcddef41f1b20fe685861e57251c1c0e030154421dfa4b2`  
		Last Modified: Wed, 27 Mar 2019 14:09:00 GMT  
		Size: 53.6 MB (53589196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:798cacb510c14c8a94541aa178791269566b2ff94883a2e7d4806f8f85a060a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130722873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6171af744f9755546eb3965a6675c3a97867dae5c9bbff8485ea2ec380a1fd0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:42:47 GMT
ADD file:c99dbe1b73c7a35a3f4e74bbef02cab9950a1c98285237d8928d02383222cff8 in / 
# Wed, 08 May 2019 08:42:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:53:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:55:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:63baec0b4ca333a8d154c08de08e8645347b16b8f6a5efb1ba682884b2dba2a3`  
		Last Modified: Wed, 08 May 2019 09:23:27 GMT  
		Size: 54.1 MB (54088145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adb323188816da0a1566a00fa2d090853cd88a50221cf05ce564abb18707f71`  
		Last Modified: Wed, 08 May 2019 12:21:31 GMT  
		Size: 8.2 MB (8236503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31b8a22dd3919c0690f6948466c7b8d00c13731fbbed17792c3c48e3933660`  
		Last Modified: Wed, 08 May 2019 12:21:31 GMT  
		Size: 10.8 MB (10793266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4b80df1a72979920b14a9d71cb491adca6f6ba712c0992e27d5c2bb897f49f`  
		Last Modified: Wed, 08 May 2019 12:22:35 GMT  
		Size: 57.6 MB (57604959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:d7124ecea2c21c17055159be2861753f20c1bf439b26da90838e93e8d89b8911
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117745296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a54bc252518d057c24fc44facd4a181553ddf7b5872bef99df75e9c9d56dbae`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:44:28 GMT
ADD file:74d6614cffe0580ce0783d578d9a77ee371dfd88d2a26ad3c2baa99055454578 in / 
# Wed, 08 May 2019 11:44:29 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:43:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:44:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:44:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50f7d14cb4a5dff38bf6abd5712e460bc2317ae09a78fc33ea4be272b3dd853f`  
		Last Modified: Wed, 08 May 2019 11:51:07 GMT  
		Size: 48.9 MB (48904096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e289e03b386b5bcded271ce71f262d941634ea0de57641f2fcbd1f40145ae92`  
		Last Modified: Wed, 08 May 2019 13:58:30 GMT  
		Size: 7.4 MB (7364532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944c481898edc8b54b8c199bb0e32c8bb3d20c7caf5900c2283c8e382fff521e`  
		Last Modified: Wed, 08 May 2019 13:58:30 GMT  
		Size: 9.9 MB (9935592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dc92b6bd27d902e31780406411e85045b114841735a44814b3d2a4e4e1c79f`  
		Last Modified: Wed, 08 May 2019 13:58:59 GMT  
		Size: 51.5 MB (51541076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
