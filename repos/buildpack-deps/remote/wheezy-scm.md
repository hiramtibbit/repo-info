## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:080c669614434e29ee800797d238f6f4163bf26dfa0c95e9469be795f1115d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:4ac8de21f644bbf9d469fb0c0b1c489ca9c4954d8352625e2f8c327912531c2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82931148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703a8f918cf1bd931f22153c35888045d900706572eb9aca3c3586daacae71fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:23:13 GMT
ADD file:bbbee952d330957b2a425a378d451176c784585717c9e47df6c05c10881a7b3c in / 
# Mon, 04 Mar 2019 23:23:13 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:38:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:38:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b15b7abe8b39a409a8b29c5ce62b22ce091102ca25fbf49aa877cca40983717`  
		Last Modified: Mon, 04 Mar 2019 23:27:27 GMT  
		Size: 39.3 MB (39339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f5430a48dacf1baf70fd8272d6cd83b9d8986c387d84a1669cfda8d230e75`  
		Last Modified: Tue, 05 Mar 2019 02:44:50 GMT  
		Size: 5.6 MB (5631119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ce4493b3329b00b1bc5d224d74500ee3da6e5002587fc1dc4c8d4cb7934c71`  
		Last Modified: Tue, 05 Mar 2019 02:45:03 GMT  
		Size: 38.0 MB (37960254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:ba4b6c14eaef26233c25c7e60302930b3733e483dc7dc2f6647210750cff63c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79361745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930152146359c793083a2e023387fef2f2666b169113e9b18bc285d3172d37b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:20 GMT
ADD file:0826f52e4e56e8a465fd832739b8eae1ccdf00313b775ea84a0fe1394d496009 in / 
# Tue, 05 Mar 2019 09:57:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:36:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:36:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:37:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ebf8468b45cf43bc121a229a3ba731d234459b2e3f4d35cbf9e2ee954c2a7364`  
		Last Modified: Tue, 05 Mar 2019 10:04:07 GMT  
		Size: 38.0 MB (37992220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0891945ab1b17c38d24ffb7f1a848cffed83233c1a4598027fafa409eb18e8e`  
		Last Modified: Tue, 05 Mar 2019 10:44:50 GMT  
		Size: 5.5 MB (5475061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4936cbb22f64e28da26c168a03f3fa5dd8de79f8a0dbc189c619932acb4cf61e`  
		Last Modified: Tue, 05 Mar 2019 10:45:09 GMT  
		Size: 35.9 MB (35894464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d95edc58418edac3128b3bf43630c199c67dfb24638715c774fda948e5a0bcc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76814511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84641c17ae741525e93fcd174353baed55bd02e494193d081c885599d3aebf6a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:13:21 GMT
ADD file:e4f915f745bb98797369f2b70d5191cc91c3709aa7cce03f9a009b3b79fa05de in / 
# Tue, 05 Mar 2019 13:13:23 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:55:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:55:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4cf24189586df875d4f26389a5b720f76f48806bf83732cea3a108c6a9417008`  
		Last Modified: Tue, 05 Mar 2019 13:19:59 GMT  
		Size: 36.6 MB (36619951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e997e74caa8f16cff589d68e1ee9f8821593a90e15073f9961ee5888e23f25`  
		Last Modified: Tue, 05 Mar 2019 14:04:43 GMT  
		Size: 5.3 MB (5322096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d6043b07c933bb75fd602d3ecdc886369a1ac80a712e9b0cee3393ec7b5698`  
		Last Modified: Tue, 05 Mar 2019 14:05:03 GMT  
		Size: 34.9 MB (34872464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9e8f89b1decdf2435af38cbdc921f1141e9c28743d135faa9e7e16174ccddacf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83200093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72a754b87c0b27b9d0608dd920b1dacdd37d3f5bcc13a11a6ad840ce9449282`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:53:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:53:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:53:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c6f9c54ff97785e18abd891b58cba86023f9f602d2b8e38c28ead86494c72`  
		Last Modified: Thu, 07 Feb 2019 02:04:29 GMT  
		Size: 5.6 MB (5617050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effeff986bd306527e4361f4810023b2d8149cd5802a7a3f50bdc86461450606`  
		Last Modified: Thu, 07 Feb 2019 02:04:48 GMT  
		Size: 37.1 MB (37050267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
