## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:82955042953e718b9728db82f6b4f06aae743c41fcff718bf0b7f10dfdb4884d
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
$ docker pull buildpack-deps@sha256:16ff7f1bba0a80553bcefc3e9f4a6f87bb580d781150be51004e0eb11d70c34c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116358324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:610fb21db9dbe04b0d79ce82fb87499b71a48187910faa2fdfa82ddf119a6181`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:26 GMT
ADD file:10ef22e92828bf2e3e64f0617e248ec4f9885da94b826c950bdc8416d67d96cd in / 
# Tue, 26 Jun 2018 21:23:26 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:14:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26254fbb7f1ecf87788ab9644ed2990fda0f5efe4ce585efa529013e3e61b8f3`  
		Last Modified: Tue, 26 Jun 2018 21:34:18 GMT  
		Size: 48.6 MB (48648929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb95abe62cf617072cd93a562dd3c073f8fabba929bb1aa8f0573971554b41a5`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 7.0 MB (7033853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbb6315c68fc7776b3dd34584b03f3a00f3e9fcd9058dbed42208d2843b593`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 9.2 MB (9245186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e01fadb90415cfdce67b9b4b78f9daa661339be8a44aa55b8d53d01ccc6ab73`  
		Last Modified: Tue, 26 Jun 2018 22:28:16 GMT  
		Size: 51.4 MB (51430356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:e55da7a4c98ab9e3066a9f20633575d781be671d123a186dafdc6d094ce055bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110922622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe896857920d9b90428778cc8a892c1099f47a68410671b4e126c45d544a3ac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:05 GMT
ADD file:ff4224e770f51d0f3be1aecc1f129a7f389ab6fb2a02c33f71754bcecaa8eed6 in / 
# Wed, 27 Jun 2018 08:52:06 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:35:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7decc6d2fc57efa1361d37f5ad2c7aa7c3781d38053c8cbb4f5f4f0efb8f6509`  
		Last Modified: Wed, 27 Jun 2018 09:01:05 GMT  
		Size: 46.6 MB (46603040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9691ec6c700eaec782847d7533f59b108859f65b19cbf9fdba233042347c72f2`  
		Last Modified: Wed, 27 Jun 2018 09:46:46 GMT  
		Size: 6.6 MB (6626612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b974f70f947561f9652d18f74b53b01eae62f2eff92385378a0fefb51f2ae8a1`  
		Last Modified: Wed, 27 Jun 2018 09:46:46 GMT  
		Size: 9.0 MB (8986694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccce33860d56681a683fce54e7c4df590d01e1f0d09e0dc0bfc16c739c37866`  
		Last Modified: Wed, 27 Jun 2018 09:47:19 GMT  
		Size: 48.7 MB (48706276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:91d1f6ec4130366572665c2ee2fe86bd0e10ea6971ecc3f6725f571d3b384daf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106165323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dade2cfd7c0cf85f3fbfa7fa3010268a03838f5eff764f8870015cf28def6401`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:01:58 GMT
ADD file:fb368eeca8896eaf5ae53a4a5f51bb2ffcb3de2afc5288178fc15e87327d624f in / 
# Wed, 27 Jun 2018 12:02:01 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:45:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4d15482f8eb5deefaf0868a9ccd27a4114951064b3932d35d9efb85e81279901`  
		Last Modified: Wed, 27 Jun 2018 12:11:13 GMT  
		Size: 44.5 MB (44474882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595c67309009d5c8c4b91b2f94f2a6e15a90740433ae648f42e27abbd7f0d948`  
		Last Modified: Wed, 27 Jun 2018 12:57:07 GMT  
		Size: 6.4 MB (6417304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a0366c8111904aa25dded355812c67e2d285d60a35b0aba5efe1617309aab0`  
		Last Modified: Wed, 27 Jun 2018 12:57:07 GMT  
		Size: 8.7 MB (8702521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff3f3c75831d29e8506f8caa26b57554a0c0e213ed6dd24a9304e052c67479e`  
		Last Modified: Wed, 27 Jun 2018 12:57:35 GMT  
		Size: 46.6 MB (46570616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:66da89fa359078890664458b914217fa1c7a3aebab468a14a5b05ccbf7ed2afb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110911204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b86aeb5437cf403f791d13a2f852165567f31604d7efb5d258d339eb1837f2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:44:47 GMT
ADD file:9e83f24b861895e4f5c52e8dac4324df28bc9245b0cb01fd8ab8e69858eba017 in / 
# Wed, 27 Jun 2018 08:44:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:35:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:264fde3494f7596520730fbecb89582dbd098f0eb089f29cf391f225a07585c1`  
		Last Modified: Wed, 27 Jun 2018 08:55:23 GMT  
		Size: 45.9 MB (45932394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45413e1b68a065bfe89257f57035e36b4322754fb55ab4f3e39317b70c439659`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 6.6 MB (6645906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49df4ded335c4959233bf629857422273bbb98855b17f0ddfd19a53d17c2c95`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 9.0 MB (8980525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc812f1f70bf21c7cd28041a44021e4767f6427b70ef931c9f67c599f9fc5c8`  
		Last Modified: Wed, 27 Jun 2018 11:04:46 GMT  
		Size: 49.4 MB (49352379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:cd564198159d85f9409656dcfebbcb4b15b041ff75a912c46350098f10c8fd14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119060913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0667d9d6ee1217d701ef0dde53476237131b2342699a18b4dfbe37d5878b44fb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:44:10 GMT
ADD file:badca613ce9ef25e97e3f69ad617085db1421c5bc61cbe3cdcec3cab6ddb0398 in / 
# Wed, 27 Jun 2018 10:44:10 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7be0c3fc2014161eddb428cc845d9fc8e2626dc2dbee261e6aac6ec5a196261e`  
		Last Modified: Wed, 27 Jun 2018 11:08:01 GMT  
		Size: 49.4 MB (49417756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3027973a27662fd47e70a05b59c4d3ef16e5f2a5ff517a541445846b16f5c693`  
		Last Modified: Wed, 27 Jun 2018 11:50:38 GMT  
		Size: 7.2 MB (7185013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a36130f6d397af272ffd4f7a90143110e77b8b9991abc51d3f4986ec6242aa`  
		Last Modified: Wed, 27 Jun 2018 11:50:38 GMT  
		Size: 9.5 MB (9527411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88a04960e3b192919356b0516d3279c32a41874822fa5a553209d3a59bce93e`  
		Last Modified: Wed, 27 Jun 2018 11:51:21 GMT  
		Size: 52.9 MB (52930733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:3d1cb0e642ecaea8d891b7f853188fa7f45e419659191d280e86c0fb6e038c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120576096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa25f941e3181ed599082f72aac6093ba0c17a8b9fd1609a0321e4672a152b6c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:22 GMT
ADD file:2290834b1e0a2945693bb58e4627798b949f493e7041453e398114cbfba8d224 in / 
# Wed, 27 Jun 2018 08:19:24 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b01a63a902832a614dcb8b935dd9404b1ae8932297cbba3e28949a6027626e87`  
		Last Modified: Wed, 27 Jun 2018 08:28:47 GMT  
		Size: 50.1 MB (50116795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cafec902fddf0414f78aeec5b7010de3851b5c2154d22465a9d16a11f5bdc57`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 6.9 MB (6874206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d7ffceef9b2678d017627071cd185ba2ab411812b48be8a3fdb04bdfd50a33`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 9.5 MB (9494113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca6c95e08f084bd97bd6207857494e04ed100bbdd7faae7c904c5ae6a9c42bf`  
		Last Modified: Wed, 27 Jun 2018 10:27:11 GMT  
		Size: 54.1 MB (54090982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6ee0e5e42ba5ca176dd895f7f7ddd87e981ae630aaff9bdb6205e0212c41bd5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114339650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a956175053cbcd95d52345a485464124d7e5a1ca79781ddd642eb56f7ea69cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:47:48 GMT
ADD file:e5fdd44acf3c50e200fa8721ef36ce18dcde4c041d59482bff0f2fcd7ff32082 in / 
# Wed, 27 Jun 2018 11:47:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:18:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:19:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:80e8bd77eaf2fb43b1f457021472f2481479fee109d88246d06d3fdf6743f24f`  
		Last Modified: Wed, 27 Jun 2018 11:52:08 GMT  
		Size: 47.6 MB (47624129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7d7034306ce1638f02d455b492c16264ae4ddcc59326d23eb8d825dc058dd2`  
		Last Modified: Wed, 27 Jun 2018 12:24:06 GMT  
		Size: 6.8 MB (6762215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea8ed63ea6a254d75d360e4f11bac40c8208127ce5493ac2c599e4e5b4b7a0c`  
		Last Modified: Wed, 27 Jun 2018 12:24:06 GMT  
		Size: 9.2 MB (9182247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f694915af45389dcad33e203ba61c5460e43d788c6a76e14ffa252bf927300`  
		Last Modified: Wed, 27 Jun 2018 12:24:25 GMT  
		Size: 50.8 MB (50771059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
