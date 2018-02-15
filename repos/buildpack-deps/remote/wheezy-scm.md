## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:0f6348bcbac22de95dcb69f9a333ed30d68c278f5daf2767e932bceab515973b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:27b90dec1c8f4ee79da65c75f42ad56c8233725bc089cce3d2355433e87843f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83016701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc129e544b77040c1f12dc7e58fd4d47efde540ffe16eef2d2000a6883310b6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:16:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:16:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 04:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bd56d6254624532daeea57b205098bf4e6c1463578c8732392c92a993cbded`  
		Last Modified: Thu, 15 Feb 2018 04:58:36 GMT  
		Size: 6.9 MB (6946000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8e5264bcd52b1af47ae5fea42d984ac7700f1b11096e9a572456f582aa2e87`  
		Last Modified: Thu, 15 Feb 2018 04:59:11 GMT  
		Size: 38.0 MB (37960914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d7f0d8f0faf9c607f6dfca852a38038923abdd2a958ca64a90e4f213d53250e0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79430004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4d319623de7b5f76c7ee63c7d929f34eb796e574fca900ef71798be100eac9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:04:23 GMT
ADD file:dfb8b543feb8007b990cb5a0dc88e61b84ec22ac2c756ad3ab084b5c46f0d66c in / 
# Tue, 12 Dec 2017 21:04:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:02:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:02:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 23:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8d01839394fae71ab18c6d4fa6e8f5ff303a13afca2fa23b3b65c12fae1b5fd5`  
		Last Modified: Tue, 12 Dec 2017 21:14:56 GMT  
		Size: 36.9 MB (36948993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16027710f36e4aaa3224e3f258959bc3af99b9007be1651f403ae4fdbd84b8ef`  
		Last Modified: Tue, 12 Dec 2017 23:12:42 GMT  
		Size: 6.6 MB (6587460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd784bc188fcf413da993ca7f32f650a7f198bb73ba04dca84ab2ddf74b18497`  
		Last Modified: Tue, 12 Dec 2017 23:13:08 GMT  
		Size: 35.9 MB (35893551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:960fcddd052aed12186d87f03222f7cd468270c3e3b7e56db61fdb74f4bd7843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76902433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3631b42e21c42b0b05504aa147cee821a71af21b3c7365dd53c902a5e7aa9117`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:33:22 GMT
ADD file:a50a330be301772af9a57fd8a118d5d28183fb0a269c71582ad0b29f253e9324 in / 
# Thu, 15 Feb 2018 13:33:22 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:17:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:17:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70b4dcd52c8138ab81006e9e28a6184f34d87223285221ed4735e7e9a66043b4`  
		Last Modified: Thu, 15 Feb 2018 13:44:04 GMT  
		Size: 35.7 MB (35661844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e85c92cb6053fa732437cad5ea092c8d9c13587c4a38f6bf1616853cec2d339`  
		Last Modified: Thu, 15 Feb 2018 14:27:42 GMT  
		Size: 6.4 MB (6371481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658c85d7559e21fb473e18b9e275b3fd9a2b43305b627a9152807b6ee92f9945`  
		Last Modified: Thu, 15 Feb 2018 14:28:04 GMT  
		Size: 34.9 MB (34869108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2b772d9390df6924be32d0a823e0e475526f10de2d8d3d9c42533af47fdb19d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83286306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bda7fe347a0c4b24775db4ec85b9d0459db0b539b9d1a83445f451bb08fca0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:43:45 GMT
ADD file:1ef271fafe70405fd17417a29b02b0245708b5a9acd0d979e7c8ed32371cf210 in / 
# Tue, 12 Dec 2017 14:43:45 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:13:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:13:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 17:13:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:20f7e6bd30947be27e2a6eed841278c2fcff0db722334016a488feae3ae65859`  
		Last Modified: Tue, 12 Dec 2017 15:09:23 GMT  
		Size: 37.4 MB (37439308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8640205fde64920e3229a7bcc29a8c09e17639a3abb4aa06ce4be31b587a9d8`  
		Last Modified: Tue, 12 Dec 2017 17:40:09 GMT  
		Size: 8.8 MB (8799392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a3644db9ac7dd05e2dac0847bcf8a1460ba5a815e21957b0b18903d680df4b`  
		Last Modified: Tue, 12 Dec 2017 17:41:22 GMT  
		Size: 37.0 MB (37047606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
