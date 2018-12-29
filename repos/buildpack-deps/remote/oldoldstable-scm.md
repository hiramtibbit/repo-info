## `buildpack-deps:oldoldstable-scm`

```console
$ docker pull buildpack-deps@sha256:61f453ad93b42aea475e8ac2ad27b9b7aaf6b1e89e2f1e629a673a3d39fc6244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2109b6705b20e2ee3792ca70f71b15b1fc35ea5ea5d520995267fb362d93eee4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82930925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f779ca35c6e468b437f80f19edd0a42ec9c01e7f7722442c70f45df6c31cbcd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:32:10 GMT
ADD file:7d97c6060d2f2ed127bfa6caf63275d4d8d4a3828f243204370a117e3bde0923 in / 
# Fri, 28 Dec 2018 23:32:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:10:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:10:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0ac552c681ffeeb04e8a77bde853c03dd88f87b3936e140ebff2919aef76fe84`  
		Last Modified: Fri, 28 Dec 2018 23:36:56 GMT  
		Size: 39.3 MB (39339686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a940a6c0fea4352301dde93c06035a81b9805725598be38b151e542e855a5cf2`  
		Last Modified: Sat, 29 Dec 2018 00:23:34 GMT  
		Size: 5.6 MB (5630869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4143c4dc44f6282ad14476be2c94bd55e7f5010118d33e4e97b10f95b7d64e1`  
		Last Modified: Sat, 29 Dec 2018 00:23:47 GMT  
		Size: 38.0 MB (37960370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:7c3dfe1a92daf384313fed44c9b318b5e16e7312aae74ee6a893e8d2bdab7c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79362825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19660fbf6bb43e68063f69654f84a864e9954cdd2a14b5566c96ead26738a27e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:01:50 GMT
ADD file:7fa32f63a9a6cff48266f7afe3843db8f84995b13663eac5199dd7027bef743c in / 
# Fri, 16 Nov 2018 10:01:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:41:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:41:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2509498a89240dc1cfe86f8e2bc15366b63a69b5a49e209394999a4297dedde`  
		Last Modified: Fri, 16 Nov 2018 10:16:29 GMT  
		Size: 38.0 MB (37993565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b541535b0699a8d321a281618a0854b5158af2ca61ab032b66c360a86c3b23`  
		Last Modified: Fri, 16 Nov 2018 18:54:41 GMT  
		Size: 5.5 MB (5474871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13ec111098acb913b84384b682f7c1bcab0b42c5622f4cd0a9ea2678556d0f`  
		Last Modified: Fri, 16 Nov 2018 18:55:29 GMT  
		Size: 35.9 MB (35894389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8df53c288319f1f1bff4867ca6f8c39c6686bc03aa0ec1fa3528e7a9399c947b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76814733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc171275da8a6f6ba0c095bbd5633888d7c623bf82b0013626b9c928adf16f61`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:22:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5dbcd0fa8f23a6f7b0e99bb6881d065d2e29e3cafe52a50f6ab926d59b8375`  
		Last Modified: Fri, 16 Nov 2018 18:34:03 GMT  
		Size: 5.3 MB (5321959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a74a2b6c02d31de42be4f9780b0c856de522d4a8a55d5162815bc0cbbadb9c1`  
		Last Modified: Fri, 16 Nov 2018 18:34:35 GMT  
		Size: 34.9 MB (34872431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:dfa0d57719a83616a95285ec6260f6edc40fff01b8e294ac3771ec53107f0808
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83200362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8a17167856bd71a99460d0085a8fb7ca6c6d1f4a32666f9255a6695a946c09`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:12 GMT
ADD file:3c653db51faa2568117b6077dcf18945db344868dc13507aa8a680d1e9c7fb07 in / 
# Fri, 16 Nov 2018 12:41:12 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:31:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:31:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f0d5412c133d7c088c460e2ef3bf665756e2dbbc6a398ce0ce3bcc2e94e757ab`  
		Last Modified: Thu, 15 Nov 2018 02:07:34 GMT  
		Size: 40.5 MB (40532790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab244a3de6773ced8cdd912ad951766f806772ad7c61d45f3a660e40c8f4b8d5`  
		Last Modified: Sat, 17 Nov 2018 11:55:54 GMT  
		Size: 5.6 MB (5617160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc123b28f1e3fa56b36b5799d9d1a91b3b71e35545a5bf31c4f154f041a0757`  
		Last Modified: Sat, 17 Nov 2018 11:57:08 GMT  
		Size: 37.1 MB (37050412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
