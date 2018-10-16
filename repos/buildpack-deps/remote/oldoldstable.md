## `buildpack-deps:oldoldstable`

```console
$ docker pull buildpack-deps@sha256:619af8c4d52413f77252f1c98c76930c96365b7f943d1730a46275b4232a7163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:10772165126f04894014c531d86b29c2e88ec8073f2af778f7c3425fd75f8892
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182541821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae11bdd350e415dc8e22ce65ce40865f18f95266d3f522fafdee69d3c9f364b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:03:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:05:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91dbcf54a318b72e46b4260799a2062f444dbca8d6a5da7a1f19aaa0b0d8ff`  
		Last Modified: Tue, 16 Oct 2018 01:16:41 GMT  
		Size: 5.6 MB (5630806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f18cedeeed742edc640e0e9a19a6fc1fb27d3f2c61135558b3bb68375ded27`  
		Last Modified: Tue, 16 Oct 2018 01:17:13 GMT  
		Size: 38.0 MB (37960258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2dab2f4280d3ee19b19d5c5a78c24577033d53c68bb5fc8ba8e2697d64d0ef`  
		Last Modified: Tue, 16 Oct 2018 01:17:58 GMT  
		Size: 99.6 MB (99610983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:dcebef72103fc94a698f57492799afb463c5920641851a2444c2cad16fb41370
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (169046467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c006dc6b9b7f32716d71a4a38b8439ef911d4c53ee977e8876330d1847a9c95`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:57:09 GMT
ADD file:61853f14d9d4d56ef0e2310ac18fc7f6767ffe6dadb735b828ae69d950bdcdbc in / 
# Wed, 05 Sep 2018 08:57:09 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:03:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:03:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:06:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bcbcf7840b6fa343c8f47838ff17667fd75c164d83025f6a65d6533dd4f1512c`  
		Last Modified: Wed, 05 Sep 2018 09:06:40 GMT  
		Size: 38.0 MB (37993571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c632033ff40912ca3eb56a29e49cdbc90a7aefe7dadb54591f7f3b3ad133f0b1`  
		Last Modified: Wed, 05 Sep 2018 10:14:12 GMT  
		Size: 5.5 MB (5474824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0e0e452a2bbb4378f00cb13bab46d59a9b01b2b50fd6dcfaea16bbc15cdf36`  
		Last Modified: Wed, 05 Sep 2018 10:14:42 GMT  
		Size: 35.9 MB (35894155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8918e1f1289ca7066f670b61c992b6a216cc5c0cf2ca198366bceba8fc163b`  
		Last Modified: Wed, 05 Sep 2018 10:15:24 GMT  
		Size: 89.7 MB (89683917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:870d35c185c61e81d514a37b47335c4b2bc9d0c8395ea8533567b91646a0c0d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162557955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b096a945ca5dcca5d875f76f2f38f164d7e2521c92784359a74461bc53e2e20`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:06:21 GMT
ADD file:0f03b0fad93abdeea4254956f6ebee6e15d3c63c5b64bc6d973a664168700342 in / 
# Wed, 05 Sep 2018 12:06:22 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:49:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:51:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:282e383dda957a59e300c3642bf38cce411c9792f7ea952f837854e3effd85b2`  
		Last Modified: Wed, 05 Sep 2018 12:15:34 GMT  
		Size: 36.6 MB (36620285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5602377929a728c8d3622051c1c45115191b1cc2bffb8aa2afb1e2914b8e89`  
		Last Modified: Wed, 05 Sep 2018 12:59:04 GMT  
		Size: 5.3 MB (5321870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a95b53602f5ba44faf06fc5867a624382edde6d3cc3e9535793421b755bbfe`  
		Last Modified: Wed, 05 Sep 2018 12:59:31 GMT  
		Size: 34.9 MB (34873395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2feb99a2bcc8ceb9b35cd1494d1341bcfdc4795509e8045e28e4b886c3699921`  
		Last Modified: Wed, 05 Sep 2018 13:00:11 GMT  
		Size: 85.7 MB (85742405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ef9563b0a546c9e93020de70c24ee270fb4ffcb2b48c288093af451880ae8da3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183635485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aae7485863ca03b261d81a08ef9c2e27ef417def86fbb806b35724d39765138`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:48:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:49:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:50:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acd7c05e040cecb47dc01599f198cf50fb5360f56dd47d15f7f3593ef86423d`  
		Last Modified: Wed, 05 Sep 2018 12:13:25 GMT  
		Size: 5.6 MB (5617111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b7e9156c95df0f1661a78bc6992d35b6f70dbd35e2014ec38f91460b5a7eb`  
		Last Modified: Wed, 05 Sep 2018 12:14:00 GMT  
		Size: 37.1 MB (37050513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b07cc647ec3c68d91168f0c22a79c22d190a54915bfb6cdb3aeecd76295789`  
		Last Modified: Wed, 05 Sep 2018 12:15:03 GMT  
		Size: 100.4 MB (100434989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
