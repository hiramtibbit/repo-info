## `pypy:slim`

```console
$ docker pull pypy@sha256:ab2aaac20bbfc5c6169da7a8d0cea7a1e54f27a073f264949ccf51e26e32ef3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:47be9b67ee12093c51c129f362351fc76a229489a70d826ef87b3b793d62327f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62548364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d57e14f594dffee99809f2c9097d4f7742f09b73dd01bc94a1e29c02a49a3fe1`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:57:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 00:57:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:09:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:09:43 GMT
ENV PYPY_VERSION=7.0.0
# Tue, 11 Jun 2019 07:09:43 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 07:10:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='729e3c54325969c98bd3658c6342b9f5987b96bad1d6def04250a08401b54c4b' ;; 		i386) pypyArch='linux32'; sha256='b8db8fbca9621de8ea8cd7184b322f2dddb2f385e8e5a63dfb75bb3fea4b2e3f' ;; 		ppc64el) pypyArch='ppc64le'; sha256='2912884da05abc2cdf71dd337c3f280095351312c1a1732a52b6878174a0fd02' ;; 		s390x) pypyArch='s390x'; sha256='d588b045cc0d3a75c31fce54c1d181b1206ad9a5dd272fe79160a6268401605f' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.5-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy3 _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 	pip --version
# Tue, 11 Jun 2019 07:10:56 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c7eb277429f59af7218686d225bf513f008b9c9b82c1826d2638b117ab8e40`  
		Last Modified: Tue, 11 Jun 2019 07:15:41 GMT  
		Size: 3.3 MB (3271883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70805eed56d8cf456f02ba3d2c5e1355212236c8a30ca3b0c3f4a8ebdb76d38c`  
		Last Modified: Tue, 11 Jun 2019 07:15:55 GMT  
		Size: 36.8 MB (36787179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; 386

```console
$ docker pull pypy@sha256:5c82ed2e78b02d41b1dc8ac197132c9eaf671024b9728dcd63f337af6c72048c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64587163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79da8b31c4ec2cc4c536a8719b0e60d0bc3b00d3b5628795895943969d92a269`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:23:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:23:39 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 13:14:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 13:14:06 GMT
ENV PYPY_VERSION=7.0.0
# Tue, 11 Jun 2019 13:14:06 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 13:15:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='729e3c54325969c98bd3658c6342b9f5987b96bad1d6def04250a08401b54c4b' ;; 		i386) pypyArch='linux32'; sha256='b8db8fbca9621de8ea8cd7184b322f2dddb2f385e8e5a63dfb75bb3fea4b2e3f' ;; 		ppc64el) pypyArch='ppc64le'; sha256='2912884da05abc2cdf71dd337c3f280095351312c1a1732a52b6878174a0fd02' ;; 		s390x) pypyArch='s390x'; sha256='d588b045cc0d3a75c31fce54c1d181b1206ad9a5dd272fe79160a6268401605f' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.5-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy3 _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 	pip --version
# Tue, 11 Jun 2019 13:15:14 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0747e966c079e020906a5409895fa79696717aeeb5a98968e80592da8752b9ec`  
		Last Modified: Tue, 11 Jun 2019 13:18:57 GMT  
		Size: 3.3 MB (3320891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d8fc152a6d03f2217893f6c83b2e7c71c2fc5c05de4204ddc28fc1cef02949`  
		Last Modified: Tue, 11 Jun 2019 13:19:15 GMT  
		Size: 38.1 MB (38145407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; ppc64le

```console
$ docker pull pypy@sha256:f3ebc75f569070a2086264607ca39047a46f73a0590280e67f33e9e8a1af7e43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60382142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7418da23a18a87afcec232a9ca68c9c4b085f957fe20c48a9f6e6d5f0b521311`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:08:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:08:49 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 05:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 05:26:22 GMT
ENV PYPY_VERSION=7.0.0
# Tue, 11 Jun 2019 05:26:24 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 05:27:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='729e3c54325969c98bd3658c6342b9f5987b96bad1d6def04250a08401b54c4b' ;; 		i386) pypyArch='linux32'; sha256='b8db8fbca9621de8ea8cd7184b322f2dddb2f385e8e5a63dfb75bb3fea4b2e3f' ;; 		ppc64el) pypyArch='ppc64le'; sha256='2912884da05abc2cdf71dd337c3f280095351312c1a1732a52b6878174a0fd02' ;; 		s390x) pypyArch='s390x'; sha256='d588b045cc0d3a75c31fce54c1d181b1206ad9a5dd272fe79160a6268401605f' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.5-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy3 _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 	pip --version
# Tue, 11 Jun 2019 05:27:55 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0fad51448135a011f2117b8b60097a97473396b3a3b1565a983b5393a30a0`  
		Last Modified: Tue, 11 Jun 2019 05:29:56 GMT  
		Size: 2.9 MB (2934011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea49172c03dfe4b2cadd4fa4ab18b61d13dc0ff90cf3b7d0d4bd5c80f720dcb`  
		Last Modified: Tue, 11 Jun 2019 05:30:04 GMT  
		Size: 34.7 MB (34703221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; s390x

```console
$ docker pull pypy@sha256:425e05b7166ad573d5b181a506b8abe18198a243eb0d1ccaa7fc81f2b0c67a7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64324162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ccc7d43b3b8c72ba5b9594ca697e449819304daedff47de94d3edc10419fc9`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:28:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 00:28:17 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 02:29:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:29:00 GMT
ENV PYPY_VERSION=7.0.0
# Tue, 11 Jun 2019 02:29:00 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 02:29:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='729e3c54325969c98bd3658c6342b9f5987b96bad1d6def04250a08401b54c4b' ;; 		i386) pypyArch='linux32'; sha256='b8db8fbca9621de8ea8cd7184b322f2dddb2f385e8e5a63dfb75bb3fea4b2e3f' ;; 		ppc64el) pypyArch='ppc64le'; sha256='2912884da05abc2cdf71dd337c3f280095351312c1a1732a52b6878174a0fd02' ;; 		s390x) pypyArch='s390x'; sha256='d588b045cc0d3a75c31fce54c1d181b1206ad9a5dd272fe79160a6268401605f' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.5-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy3 _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 	pip --version
# Tue, 11 Jun 2019 02:29:36 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3150fb5d1798bdb887b83f0540503cf8a03a0bbc18b99b9fa7af05890a43edbe`  
		Last Modified: Tue, 11 Jun 2019 02:32:02 GMT  
		Size: 3.0 MB (3015839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c1c83af01bb5a935fdf94f09430bda206f99ec95df6c4ad44019ef9387cdea`  
		Last Modified: Tue, 11 Jun 2019 02:32:11 GMT  
		Size: 39.0 MB (38969471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
