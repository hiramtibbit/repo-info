## `buildpack-deps:oldoldstable-curl`

```console
$ docker pull buildpack-deps@sha256:1bf89264dd4100cbc972152ea817fa808ec7741ceb1b381bc18fc31fa9f83f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e202a7a861a69f275f64f8f5644496ef7ab094f792c29cb707d7c813e73a463c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44992424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2548f77cb1cc64b1a74f2ec84f5683b1e1490cb78d9eb2585d0210de38795224`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:53:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:53:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2649555cd318c33ae026309213428e8a66d9e8d5f945df1f3f3fed1f345adf36`  
		Last Modified: Fri, 04 May 2018 18:27:32 GMT  
		Size: 5.7 MB (5653282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:9b810a406b57bde072aa333ff85ec98fdb835773bb7c624a878bfb40c4c5f0d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43487613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2440abe3bf65626a2803f76778c46cbd3964543b84cf4a1874d87d45adb84e04`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:55:07 GMT
ADD file:f14c9bf141bd73b0d286332a29b3c4fa49008071a0fda1f875d7e19ada3513d1 in / 
# Sat, 28 Apr 2018 08:55:07 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:05:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:05:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bce7db7e77372ce5131c53a5f46570bad58af7c504ef2aff30a102963cc0e28f`  
		Last Modified: Sat, 28 Apr 2018 09:04:20 GMT  
		Size: 38.0 MB (37992896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea51743afebb94d828d917bb6e5abe778cdb088264db6f4b57c878874c68a0f`  
		Last Modified: Sat, 05 May 2018 09:15:47 GMT  
		Size: 5.5 MB (5494717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:7dbb11aa73618208442de8068637724181cb29a3c0e6a97f84a7d9ef9ccf606f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41943387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e9a69ac75e622b521ded9c7972cec45b1bb53a0410f777d347a93b382eafed`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:07:34 GMT
ADD file:5a45a86b5b17c03113098c8a7a1ee7ebc9c02afa3e33bd3d852c28b6e261697a in / 
# Sat, 28 Apr 2018 12:07:34 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:797f0254107c711da2219d2a3c71bb8815ad9b4e665a165c707561344f88a777`  
		Last Modified: Sat, 28 Apr 2018 12:18:06 GMT  
		Size: 36.6 MB (36620143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbddbbaf331c5cd4c7b0ea190608ccade0c17649efedb47464de50472a4c94b`  
		Last Modified: Sat, 28 Apr 2018 13:11:08 GMT  
		Size: 5.3 MB (5323244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:fded48857b48707d2c7ff777254e9b93c1b71aa8c02f458a4bc7df42be20eac6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46151569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b205870c7b78aa486c564c9d2840cc50b88ad2f1a405bcdd790c6a454044bc49`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:22:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:22:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cb17e559c7c9eadcee85fdd25d7aa19613e943a78e3a6ded33f5e527fb6220`  
		Last Modified: Sat, 28 Apr 2018 12:49:55 GMT  
		Size: 5.6 MB (5619449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
