## `pypy:3-6-jessie`

```console
$ docker pull pypy@sha256:eb6325b75c1c70b4992eaa1bdd29e24e5f14d5324b4714a49f3e67783473214b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:10ed677ac23fa1f6b8b3a1ccdad345e50c1d8090c05489a323aeef36eb9ad315
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279519688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037fbf04a3421ca63288b866440abf451d107754125c9277afd1983c269f4f03`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:07:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:07:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:11:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:23:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 16:23:13 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:23:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:23:43 GMT
ENV PYPY_VERSION=6.0.0
# Fri, 16 Nov 2018 16:23:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:26:54 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Fri, 16 Nov 2018 16:27:11 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 16 Nov 2018 16:27:11 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b775667b1fd065bc50f69e2325000a767a39c1c89af85d84a5fae2ec93be7333`  
		Last Modified: Fri, 16 Nov 2018 11:28:48 GMT  
		Size: 17.5 MB (17539160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe156bcb4b118dce0964132fc8c750edec1f6c9cf31dd3c0d167bb40cbc6ce6`  
		Last Modified: Fri, 16 Nov 2018 11:29:28 GMT  
		Size: 43.3 MB (43304623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9906355a0fee4881b9359b010cb89edb826af2067c5adf0b92c1d4cc3b755b`  
		Last Modified: Fri, 16 Nov 2018 11:30:21 GMT  
		Size: 131.1 MB (131134394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460cb97da58601148a2896939d027c65b409e10456999d8cd8fde7ef4150531`  
		Last Modified: Fri, 16 Nov 2018 16:29:22 GMT  
		Size: 3.2 MB (3167512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6963d7b37e534d2cd991086ef984ac58319b20616bb0c618c893537153fc06e`  
		Last Modified: Fri, 16 Nov 2018 16:35:40 GMT  
		Size: 25.5 MB (25515703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767837013af414a681515ab0adf1a405d9568eb877666f16d3906e38adacd061`  
		Last Modified: Fri, 16 Nov 2018 16:35:33 GMT  
		Size: 4.5 MB (4500453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:cae181e6f89752367c3f023a3c18bbf4372ba67d2f9a6af020809087b5970c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257751006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad8cad078c20d68957d804f871d85d92fc46dae3d9c5cf24dc4fcf88fc34da2c`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 16 Nov 2018 09:50:40 GMT
ADD file:51b6e570dd2584f3747b0877f1342ea36c4c8dae4b0aa0f4a114e816fde77904 in / 
# Fri, 16 Nov 2018 09:50:41 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:29:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:32:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:57:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 18:57:21 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:58:06 GMT
ENV PYPY_VERSION=6.0.0
# Fri, 16 Nov 2018 18:58:06 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 19:02:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Fri, 16 Nov 2018 19:02:56 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 16 Nov 2018 19:03:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:28b426da5f009c6d2c8bc1993bee5601ab4126eb8a3a2698db1d96c7f612dde8`  
		Last Modified: Fri, 16 Nov 2018 10:05:38 GMT  
		Size: 52.5 MB (52544563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85e7a926b9697d9b8ca1e354a10a67ab9ac56b09d02c3e293a6d2f10eb1939e`  
		Last Modified: Fri, 16 Nov 2018 18:46:57 GMT  
		Size: 17.0 MB (17030194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46ba2567b36508f7e2c69e087a740a7b9e2e3f00177014d5d001993c2463069`  
		Last Modified: Fri, 16 Nov 2018 18:47:24 GMT  
		Size: 41.1 MB (41143586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcacc75015740ffcbcf9f203a8784ef6b861368529d3e8990c033f75f25ddff`  
		Last Modified: Fri, 16 Nov 2018 18:48:19 GMT  
		Size: 115.8 MB (115782018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7fe1e78582abed5483203519fed0f7bb00958f0cd0798c518ba300a30df8cc`  
		Last Modified: Fri, 16 Nov 2018 19:05:55 GMT  
		Size: 3.0 MB (3020571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0b9f8f4e103da49df9a6f19e0d06c94b960e9bf4b971d42ae663cb57a01a41`  
		Last Modified: Fri, 16 Nov 2018 19:10:32 GMT  
		Size: 23.7 MB (23728931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6073ecfa0f2ebf57a1f4991eec31fc6b1da117f3cca3cd26ca9eceb8c98f8fa`  
		Last Modified: Fri, 16 Nov 2018 19:10:26 GMT  
		Size: 4.5 MB (4501143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-jessie` - linux; 386

```console
$ docker pull pypy@sha256:fb14c1a604e43dce9d71a67eae418dea8a6f18c2aeb055460dc45cb7ecf64188
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284530179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c9b4833554c5134f01d14efe739777a9d85c47b4df381ff02effc8c89f255d`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 16 Nov 2018 12:25:54 GMT
ADD file:85dda498c7ceba872653c9bb40223849881a8a9c59c0f9a39003a8e6862f66e5 in / 
# Fri, 16 Nov 2018 12:25:54 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:14:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:14:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:19:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 16:43:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 16:43:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 16:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 16:44:27 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 17 Nov 2018 16:44:28 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 16:47:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Sat, 17 Nov 2018 16:47:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Nov 2018 16:47:17 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:16575792c3dc98957c43c8d8fc1a81b062a3ff3fc617db60ddae32a813319afd`  
		Last Modified: Thu, 15 Nov 2018 01:12:17 GMT  
		Size: 54.6 MB (54584852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c656c5ba901c867f311e23cdb35dca16d35c23b492c6e4738f0124af80e92d`  
		Last Modified: Sat, 17 Nov 2018 11:41:35 GMT  
		Size: 19.8 MB (19837621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124efacb5af9ea62e9c8c01741b4d909626d5d473c05e84cfeedccefa4568ad3`  
		Last Modified: Sat, 17 Nov 2018 11:42:28 GMT  
		Size: 44.0 MB (43952498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8e9ce6078d06e1b7cbd7c618ce44fdf244e492799a7c8509673763ab7fe310`  
		Last Modified: Sat, 17 Nov 2018 11:43:59 GMT  
		Size: 135.2 MB (135189304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde5e39e5ae94dcc5b9572bbb1a2cf01a10fe81acabe0a1431ec97c47191cbea`  
		Last Modified: Sat, 17 Nov 2018 16:48:57 GMT  
		Size: 3.3 MB (3271694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf802c2014d9cbe3ea8e138d353837642a15e88bb21300a42b05872c7a560e19`  
		Last Modified: Sat, 17 Nov 2018 16:52:37 GMT  
		Size: 23.2 MB (23194307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f700f8fcff01f0cb90ae2aad101cd0822b6ddf39610b16d22b0cbea5755b471`  
		Last Modified: Sat, 17 Nov 2018 16:52:31 GMT  
		Size: 4.5 MB (4499903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
