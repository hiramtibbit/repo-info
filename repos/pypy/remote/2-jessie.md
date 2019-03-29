## `pypy:2-jessie`

```console
$ docker pull pypy@sha256:6dd046b511a5668e071b78ccfa978cef6c179ed10fe837c4812fcd3ca378f98e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:2-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:518e8cc916b45c0fba52a41439f55bb67b237e1900fba43f92570e68682003f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281129342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62083d25fe7bf4019f5bed5f5c6a1ba0292ce2373abd87eac58147bfb65976c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:24:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:50:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:50:50 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:52:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:52:28 GMT
ENV PYPY_VERSION=7.1.0
# Tue, 26 Mar 2019 23:52:28 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 29 Mar 2019 22:14:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='fef176a29a2ef068c00c8098e59dab935ca6e956f089672b3f7351da95a034f5' ;; 		i386) pypyArch='linux32'; sha256='44ec91e8cb01caab289d8763c203f3aaf288d14325a6c42692bd1ac4e870d758' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2.7-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		cd /usr/local/lib_pypy; 		pypy _ssl_build.py; 	fi
# Fri, 29 Mar 2019 22:14:49 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 29 Mar 2019 22:14:49 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc848917b0a4c37d6f00a2db476e407c6b36ce371a07e421e1b3b943ed64cba`  
		Last Modified: Tue, 26 Mar 2019 23:30:34 GMT  
		Size: 43.3 MB (43313715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053381643ee38d023c962f8789bb89be21aca864723989f7f69add5f56bd0472`  
		Last Modified: Tue, 26 Mar 2019 23:31:03 GMT  
		Size: 132.2 MB (132184295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20debbdd0a4602ad34927da84b3e9e6ef8dd2dda5ff9c13413b02efa394a80f5`  
		Last Modified: Wed, 27 Mar 2019 00:05:33 GMT  
		Size: 3.2 MB (3169745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc1a955fd2070fd05e0f6099aa3fddcbec74b7e74351400d4348edd54e6a922`  
		Last Modified: Fri, 29 Mar 2019 22:21:45 GMT  
		Size: 26.5 MB (26457543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a154827d8cb43d4cd47d74e6eb02b63ce53d8062acd5296d1bdb779d72f1f9a2`  
		Last Modified: Fri, 29 Mar 2019 22:21:39 GMT  
		Size: 4.1 MB (4079904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
