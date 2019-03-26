## `pypy:2-slim`

```console
$ docker pull pypy@sha256:b8777079c0800943f3f19bb61c4aebbd31c1d5690c8f789279645d739c47f7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:320dfe3977bfad875504ac56feb7f104a78cdeee4154d84a55d07cd9cc1394d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63747968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7ef72a30a96d2783f6f58b44a2ba60d91989158ff2ad0737083b908474443e`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:30 GMT
ADD file:9c83a686342b9918902182a223021336d3fba9b5e540dcdb130ad47a22033781 in / 
# Mon, 04 Mar 2019 23:20:30 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:40:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 04 Mar 2019 23:40:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 02:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 01:21:51 GMT
ENV PYPY_VERSION=7.1.0
# Tue, 26 Mar 2019 01:21:51 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Tue, 26 Mar 2019 01:24:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='fef176a29a2ef068c00c8098e59dab935ca6e956f089672b3f7351da95a034f5' ;; 		i386) pypyArch='linux32'; sha256='44ec91e8cb01caab289d8763c203f3aaf288d14325a6c42692bd1ac4e870d758' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2.7-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	pypy --version; 	pip --version
# Tue, 26 Mar 2019 01:24:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:9fa17f107b7e9d91511082fc06c45340c4ab2b0820dc0974a963b137b3434e01`  
		Last Modified: Mon, 04 Mar 2019 23:24:38 GMT  
		Size: 30.2 MB (30154842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9dc5676e3af7497bad888018cc09e57f6deee8ce7f07be369b5a4ba7230c66`  
		Last Modified: Tue, 05 Mar 2019 02:16:36 GMT  
		Size: 2.8 MB (2811590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4a93f22549997071832f9bf31ea98e3f7eb060dd4d347655c0d4f935b43e4`  
		Last Modified: Tue, 26 Mar 2019 01:29:39 GMT  
		Size: 30.8 MB (30781536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
