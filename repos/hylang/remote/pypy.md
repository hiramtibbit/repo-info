## `hylang:pypy`

```console
$ docker pull hylang@sha256:0f6ab7f1bfed56789c53d6778d2d096444e8bdb4d0071eacff9898431a665cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `hylang:pypy` - linux; amd64

```console
$ docker pull hylang@sha256:f86da6d4ef953eb78069c85dbb099cda892b9f3427394d588c99738a528584b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63074910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca5188353c60bcd14d4e7967e89dac84362d7c3910ad1da2f1f59e39256a50a`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:23:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 05:23:32 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 06:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 06:04:08 GMT
ENV PYPY_VERSION=7.1.1
# Wed, 08 May 2019 06:04:09 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 06:04:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='8014f63b1a34b155548852c7bf73aab2d41ebddf2c8fb603dc9dd8509be93db0' ;; 		i386) pypyArch='linux32'; sha256='cb11ef4b0df569c28390b1ee93029159e1b90bfbad98df6abd629d5203b2abd9' ;; 		s390x) pypyArch='s390x'; sha256='4a91bf2d9a142b6dbf82b5301cb510535ae9a54e1645546b2e0735a7b5ed85ba' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.6-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy3 _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 	pip --version
# Wed, 08 May 2019 06:04:48 GMT
CMD ["pypy3"]
# Wed, 22 May 2019 22:25:26 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:25:38 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:25:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63841669b4952663df29fc07d793e2f3eb56fea3f0f9c48ddd5db1224ec64fc8`  
		Last Modified: Wed, 08 May 2019 06:06:32 GMT  
		Size: 3.3 MB (3271745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416da2b5c55ad52b7ecfd36703143fad4d678351769a1ca6fe7609dae0b61e5f`  
		Last Modified: Wed, 08 May 2019 06:07:22 GMT  
		Size: 36.8 MB (36826777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaeec821ed436283bd9b9f8a4d6c660aeeb40496d667f3e81f227ffd4f1cc0e`  
		Last Modified: Wed, 22 May 2019 22:28:27 GMT  
		Size: 487.0 KB (487038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:pypy` - linux; 386

```console
$ docker pull hylang@sha256:c98eed588868d716128d2d28848b327311814809589db506603440346bf0d9ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65188071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d4c0b16a9207a87150c55aa80355891330b7e356146413fba7c564e3d6da59`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:45:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 14:45:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:48:12 GMT
ENV PYPY_VERSION=7.1.1
# Wed, 08 May 2019 14:48:13 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 14:49:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='8014f63b1a34b155548852c7bf73aab2d41ebddf2c8fb603dc9dd8509be93db0' ;; 		i386) pypyArch='linux32'; sha256='cb11ef4b0df569c28390b1ee93029159e1b90bfbad98df6abd629d5203b2abd9' ;; 		s390x) pypyArch='s390x'; sha256='4a91bf2d9a142b6dbf82b5301cb510535ae9a54e1645546b2e0735a7b5ed85ba' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.6-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy3 _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 	pip --version
# Wed, 08 May 2019 14:49:22 GMT
CMD ["pypy3"]
# Wed, 22 May 2019 22:41:20 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:41:31 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:41:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b5ab6a0c8aaeff0668504d8ad732c2d0605f2ee04c79476aeae717465bfad4`  
		Last Modified: Wed, 08 May 2019 14:50:55 GMT  
		Size: 3.3 MB (3320856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010577e5cd5bc8a620d1f6bf077739737f57f3507f501c6b3003588d238fcac9`  
		Last Modified: Wed, 08 May 2019 14:52:25 GMT  
		Size: 38.3 MB (38259311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d188e0c785b8eb3a0eb65b012f910d2f0b9a6823657f0da53675802a14735345`  
		Last Modified: Wed, 22 May 2019 22:44:33 GMT  
		Size: 487.1 KB (487061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:pypy` - linux; s390x

```console
$ docker pull hylang@sha256:07ca7462b12805dd48158ec4bb661e39ca569f208b69080e17728357c8cae56c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64833345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d654a143f323d596c6a564f2dbc808b3ae9b2b46b3afcde9c5dad206750c50d8`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:48:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:48:03 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 13:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:28:58 GMT
ENV PYPY_VERSION=7.1.1
# Wed, 08 May 2019 13:28:59 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 13:30:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='8014f63b1a34b155548852c7bf73aab2d41ebddf2c8fb603dc9dd8509be93db0' ;; 		i386) pypyArch='linux32'; sha256='cb11ef4b0df569c28390b1ee93029159e1b90bfbad98df6abd629d5203b2abd9' ;; 		s390x) pypyArch='s390x'; sha256='4a91bf2d9a142b6dbf82b5301cb510535ae9a54e1645546b2e0735a7b5ed85ba' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.6-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy3 _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 	pip --version
# Wed, 08 May 2019 13:30:12 GMT
CMD ["pypy3"]
# Wed, 22 May 2019 22:43:29 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:43:38 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:43:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16599a1ae1853947b8290ee5f0dd823f7bad72d350d75188be123456ed7d0356`  
		Last Modified: Wed, 08 May 2019 13:31:46 GMT  
		Size: 3.0 MB (3015996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e32ce1053c2b97315b52699173bd1fc9e02ccfb6a33f0dc532e52ede9c1c11`  
		Last Modified: Wed, 08 May 2019 13:33:08 GMT  
		Size: 39.0 MB (38991493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18434be14d756ffd570cf196fb208f84278d8e7991e2243d36d12cbd0f2577a1`  
		Last Modified: Wed, 22 May 2019 22:46:40 GMT  
		Size: 487.0 KB (486987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
