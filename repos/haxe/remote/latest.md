## `haxe:latest`

```console
$ docker pull haxe@sha256:eb7ff185824733522734606c243511ba3c7392393f53fed5d14937f65a252377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `haxe:latest` - linux; amd64

```console
$ docker pull haxe@sha256:64ecbfb0317c262e1c78cbab1913a9f273ae89d334fda299976c2395d56fe2fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119722287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec15a3c9f0f7e76e5d25a3522baf50b61ca440d783326ca3061a455b910b30f`
-	Default Command: `["haxe"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 07:28:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 07:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 		libmariadb2 		libsqlite3-0 		libmbedcrypto0 		libmbedtls10 		libmbedx509-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 07:28:17 GMT
ENV NEKO_VERSION=2.2.0
# Tue, 05 Mar 2019 07:30:32 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-2-0/neko-2.2.0.tar.gz" 	&& echo "cf101ca05db6cb673504efe217d8ed7ab5638f30e12c5e3095f06fa0d43f64e3 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 05 Mar 2019 07:30:33 GMT
ENV HAXE_VERSION=3.4.7
# Tue, 05 Mar 2019 07:30:33 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Tue, 05 Mar 2019 07:32:43 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml-nox 		ocaml-native-compilers 		camlp4 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 		libxml-light-ocaml-dev 			' 	&& git clone --recursive --depth 1 --branch 3.4.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 			&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 			&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 05 Mar 2019 07:32:43 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff41cd367c0a76e2400d24663cbe67dc9ea888631aa52e65c2397555367e117e`  
		Last Modified: Tue, 05 Mar 2019 08:20:01 GMT  
		Size: 1.1 MB (1122252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2939c4d9ef14fcc995fecf81d0751673843d823b3106dd40c882b027587336e`  
		Last Modified: Tue, 05 Mar 2019 08:20:02 GMT  
		Size: 2.6 MB (2605147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78c80c726a5531c9b2f92a7464273964b4aa938d00d986ccfecae1bc257ab5`  
		Last Modified: Tue, 05 Mar 2019 08:20:04 GMT  
		Size: 5.5 MB (5464644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - linux; arm variant v7

```console
$ docker pull haxe@sha256:61f1ac087252e3849212fac6986d086b2aab45b789f31cc378523b65b0b7b0b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111472068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69e3bcbaf84ca263859c557de4ad8dc1a93621773fafaf3e6cc05dfef21f0ec`
-	Default Command: `["haxe"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:51:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:44:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 16:44:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 		libmariadb2 		libsqlite3-0 		libmbedcrypto0 		libmbedtls10 		libmbedx509-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:44:14 GMT
ENV NEKO_VERSION=2.2.0
# Tue, 05 Mar 2019 16:46:51 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-2-0/neko-2.2.0.tar.gz" 	&& echo "cf101ca05db6cb673504efe217d8ed7ab5638f30e12c5e3095f06fa0d43f64e3 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Tue, 05 Mar 2019 16:46:51 GMT
ENV HAXE_VERSION=3.4.7
# Tue, 05 Mar 2019 16:46:52 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Tue, 05 Mar 2019 16:50:49 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml-nox 		ocaml-native-compilers 		camlp4 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 		libxml-light-ocaml-dev 			' 	&& git clone --recursive --depth 1 --branch 3.4.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 			&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 			&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Tue, 05 Mar 2019 16:50:50 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf45915d948e0432094f336547edb2d36192b5d75faa9ed87557c6376defbd5`  
		Last Modified: Tue, 05 Mar 2019 14:03:21 GMT  
		Size: 46.4 MB (46388461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98539ba0e167b20d786af7bc9497f5ea12b040243a5c8d6e652f6495e109de9`  
		Last Modified: Tue, 05 Mar 2019 17:05:43 GMT  
		Size: 1.0 MB (1048978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f2822c1bbcce1fbc233facddd063d48f1ecb90aad7f63783c71d69cf8567f4`  
		Last Modified: Tue, 05 Mar 2019 17:05:44 GMT  
		Size: 2.5 MB (2532134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41371617118ddbf6d7cb0980ded8031d30470976a441ad987f500d5063c2b913`  
		Last Modified: Tue, 05 Mar 2019 17:05:46 GMT  
		Size: 6.0 MB (6025167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - linux; arm64 variant v8

```console
$ docker pull haxe@sha256:3731dab9cae8c8b20ce59f819f13d603b631ae150b76466da4ed241b1c2b0c66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114431241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449f3ebad623ecf70b9fdcdc904e7fa6aa92bc7a94f05c39926f85fe185f1ec0`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:11:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 04:11:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1c2 		zlib1g 		libpcre3 		libmariadb2 		libsqlite3-0 		libmbedcrypto0 		libmbedtls10 		libmbedx509-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:11:50 GMT
ENV NEKO_VERSION=2.2.0
# Thu, 07 Feb 2019 04:25:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-2-0/neko-2.2.0.tar.gz" 	&& echo "cf101ca05db6cb673504efe217d8ed7ab5638f30e12c5e3095f06fa0d43f64e3 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Thu, 07 Feb 2019 04:25:09 GMT
ENV HAXE_VERSION=3.4.7
# Thu, 07 Feb 2019 04:25:10 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Thu, 07 Feb 2019 04:30:54 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml-nox 		ocaml-native-compilers 		camlp4 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 		libxml-light-ocaml-dev 			' 	&& git clone --recursive --depth 1 --branch 3.4.7 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 			&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 			&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Thu, 07 Feb 2019 04:30:55 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1850996d3d33105ba0e6211c0296a0264fc3a16063de5004746d40a8a6307d`  
		Last Modified: Thu, 07 Feb 2019 04:59:19 GMT  
		Size: 1.1 MB (1071185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41abd47a001fc3b25aded1911dece514ec67c1215585f33485e6f5c86d04154d`  
		Last Modified: Thu, 07 Feb 2019 04:59:21 GMT  
		Size: 2.6 MB (2560525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cea50d405709c7a5d47bf3d35b781eef1de2c0362e2be81cfa8ccd738e50e28`  
		Last Modified: Thu, 07 Feb 2019 04:59:24 GMT  
		Size: 5.8 MB (5847167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
