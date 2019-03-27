## `pypy:2-slim-jessie`

```console
$ docker pull pypy@sha256:1839b1ffcc9936139d436b1dabc876e09ac4b7d41069719f9fdd0916d2dd7ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:2-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:ee636057d9b312cc702e93fe53aefc062cec6589c20d00f371affad4766f4dee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63747565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0459f17a90b50e1113c528869b1ef6924d36c16ef3c5b93c7d339a699a804b`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:52:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:52:48 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:54:37 GMT
ENV PYPY_VERSION=7.1.0
# Tue, 26 Mar 2019 23:54:38 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Tue, 26 Mar 2019 23:57:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='fef176a29a2ef068c00c8098e59dab935ca6e956f089672b3f7351da95a034f5' ;; 		i386) pypyArch='linux32'; sha256='44ec91e8cb01caab289d8763c203f3aaf288d14325a6c42692bd1ac4e870d758' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2.7-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	pypy --version; 	pip --version
# Tue, 26 Mar 2019 23:57:40 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7710a50e77dbe3011747e582c4dbeaf7473072f6161a6b22f05aa967b7553bdf`  
		Last Modified: Wed, 27 Mar 2019 00:05:51 GMT  
		Size: 2.8 MB (2811592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334c177e11b093ad1bba94a903a0a1c3ce763c2bef1230ba848d8b615d5a34ce`  
		Last Modified: Wed, 27 Mar 2019 00:05:58 GMT  
		Size: 30.8 MB (30781392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
