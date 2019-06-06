## `hylang:0-python3.6`

```console
$ docker pull hylang@sha256:3196f0087679574f6574486c6359514634b1f1d2cb91de09bcebcb72bd2245d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.17763.504; amd64
	-	windows version 10.0.17134.766; amd64
	-	windows version 10.0.14393.2972; amd64

### `hylang:0-python3.6` - linux; amd64

```console
$ docker pull hylang@sha256:baf91361e54066ae3469566c37120cd80c70da859ab7680e1327739c1d1dbe20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52243591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ea5e1d99c2c68c7657e37d8727a630cfad7d884e9edc34ea45ab7616b9d404`
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
# Wed, 08 May 2019 05:23:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:30:33 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 08 May 2019 05:36:07 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 08 May 2019 05:38:33 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 05:38:34 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 05:38:34 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 05:38:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 05:38:47 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:23:14 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:23:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:23:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977e13fc74494bd5433f4c0adfb53131f845b94398c2c2e2a1087a8e4027cf41`  
		Last Modified: Wed, 08 May 2019 06:22:04 GMT  
		Size: 2.5 MB (2528227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb966e905c80ab6ed6a16c045934b02cf2781e94be3b12863d015ef8b3f909e`  
		Last Modified: Wed, 08 May 2019 06:22:58 GMT  
		Size: 22.4 MB (22392157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6fd464f33f9fb6a218d91635fc1068c518ba2944c8aa95fcec593ceef799e9`  
		Last Modified: Wed, 08 May 2019 06:22:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d1c2388e9d46aee4d2cb7c6ffe7db9fda4f81e5f9024bd87d7d832a9c9c8ad`  
		Last Modified: Wed, 08 May 2019 06:22:53 GMT  
		Size: 2.1 MB (2103876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85d99c7b234bebf14062662f485922677a5f203380eabcb2606a1f88f69f006`  
		Last Modified: Wed, 22 May 2019 22:27:13 GMT  
		Size: 2.7 MB (2729740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - linux; arm variant v5

```console
$ docker pull hylang@sha256:c5617cac7a056aa6fe252ade9caa00bdb860facb90101e1e5be737bc804b0f07
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49616780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed664ab1ffa0a296b04466f89a351b17756adccc112eab58c3365b17276a9d8`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:58:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 08:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 08:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:59:16 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 08 May 2019 09:04:47 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 08 May 2019 09:07:37 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 09:07:38 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 09:07:39 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 09:08:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 09:08:07 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:49:14 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:49:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:49:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321dbcd6fd93219a93995fbe7b0a7007fea2b9c2eae8232764835877a8b90c8e`  
		Last Modified: Wed, 08 May 2019 09:42:00 GMT  
		Size: 2.3 MB (2253698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21a96013951bf91deb7805ef724810467678738f5f3bfe485fc1a3c66772ab1`  
		Last Modified: Wed, 08 May 2019 09:42:37 GMT  
		Size: 21.4 MB (21373168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0adc17ec85738ef5a6f6d5a090e3b86281596edb9b451826493d1b2d7d6d63a7`  
		Last Modified: Wed, 08 May 2019 09:42:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae359a52643da793d79a488924ed3681dc14bf28c97778ec05a7a78211d267d`  
		Last Modified: Wed, 08 May 2019 09:42:30 GMT  
		Size: 2.1 MB (2103527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983dadc3480d4dfa18ed4e78dd3e2ab3044e82e06bdb020a84e73ddc0fdafbe8`  
		Last Modified: Wed, 22 May 2019 22:51:31 GMT  
		Size: 2.7 MB (2730284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - linux; arm variant v7

```console
$ docker pull hylang@sha256:cb0a56d160159f68b60744f92fc85e2cc7c4a28f7576ce3559160f79cbf55f23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47192953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d217845f99a5fab519ab501dd6a220dac4e223c4e8df714f6ba3b4ae8fdc9e`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:48:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:48:52 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:49:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:59:12 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 08 May 2019 13:05:25 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 08 May 2019 13:08:15 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 13:08:17 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 13:08:18 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 13:08:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 13:08:42 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:58:08 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:58:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:58:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b82a4fe2e20800823fc94e97616c12e09387db5c3f5cfa5ee5c35f270567304`  
		Last Modified: Wed, 08 May 2019 13:57:27 GMT  
		Size: 2.2 MB (2174412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f40cf0506742f43c6eb578454fdb316ecd290986fb56fc8438599170bc46f2b`  
		Last Modified: Wed, 08 May 2019 13:59:19 GMT  
		Size: 20.9 MB (20908002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080dc1c681e88736cfe15250ec51221f7b650722b3db9d2b5d82f1045ffa5fdc`  
		Last Modified: Wed, 08 May 2019 13:59:11 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49e693b652ed95514b0f0fba26912e1b4efecd2f4fc88aa58f3eca8755c44ab`  
		Last Modified: Wed, 08 May 2019 13:59:12 GMT  
		Size: 2.1 MB (2103721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b160eebade553c39ead44166ac602f9607e9a08c05d9711a76dc20b728a744d`  
		Last Modified: Wed, 22 May 2019 23:02:00 GMT  
		Size: 2.7 MB (2730361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:8f6d8f7e083ff6c7018496a0364d28df8109d393a21306130d2c51641cfd3bc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49422697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980640e3a6b9fd238f1da4d5f5bac51cd0237c62ce400058462524bc7aa2fbfe`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 05 Jun 2019 23:08:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:08:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Jun 2019 23:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:21:49 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 05 Jun 2019 23:37:55 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 05 Jun 2019 23:40:30 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 05 Jun 2019 23:40:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 05 Jun 2019 23:40:32 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 05 Jun 2019 23:40:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Jun 2019 23:40:55 GMT
CMD ["python3"]
# Thu, 06 Jun 2019 00:33:30 GMT
ENV HY_VERSION=0.17.0
# Thu, 06 Jun 2019 00:33:41 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 06 Jun 2019 00:33:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687d162b37bba80d7a5530971d85c7e6d72941c64db68d155a778440893c2a4c`  
		Last Modified: Thu, 06 Jun 2019 00:11:20 GMT  
		Size: 2.2 MB (2234860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d269b03d3067cbefbb97d9c1f113c2ea6f9ef5e0a3705789611eac89c77996ad`  
		Last Modified: Thu, 06 Jun 2019 00:13:56 GMT  
		Size: 22.0 MB (22020272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3531176517ff7057fec0065f93d07613fec5885db2b11f2a895785b725e1cf36`  
		Last Modified: Thu, 06 Jun 2019 00:13:49 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837f1ca9fd98e2c1b56ff1022fcad02598de4f2474d6fcbd63b0c52071e38439`  
		Last Modified: Thu, 06 Jun 2019 00:13:50 GMT  
		Size: 2.1 MB (2103460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed524012906f1b1b883808650ef0005a87e32e147ea96a623e7042fe52f0d1a5`  
		Last Modified: Thu, 06 Jun 2019 00:37:40 GMT  
		Size: 2.7 MB (2730049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - linux; 386

```console
$ docker pull hylang@sha256:7796386823c30ca5ed9354b8c74e64e7571b35db8fdae132987d0ebd2cf955ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51595336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff27e602c354accc2e7f1e2eb05d3c322e9b1bf94744754249592427b9a9e49`
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
# Wed, 08 May 2019 14:58:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:10:56 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 08 May 2019 15:17:51 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 08 May 2019 15:22:01 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 15:22:03 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 15:22:03 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 15:22:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 15:22:29 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:39:23 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:39:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:39:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c37c1db3ec9d3a739e08175f126ba36c74451651ef5b386db2a0a0cce5393cd`  
		Last Modified: Wed, 08 May 2019 16:25:08 GMT  
		Size: 2.5 MB (2529564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1c0d0e2ce3704e0c095b5086ed4f5699802a4c17915bab931358fb3a975957`  
		Last Modified: Wed, 08 May 2019 16:26:17 GMT  
		Size: 21.1 MB (21111235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8154283380e08523f61c7a01c9f14a65fbed592c891fb6743b07b85a3dce12`  
		Last Modified: Wed, 08 May 2019 16:26:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5e7a1419ccca1169c589ce60618744a4b7d79235af043fc2ec02b40a9a8a49`  
		Last Modified: Wed, 08 May 2019 16:26:13 GMT  
		Size: 2.1 MB (2103730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4db57f912a40984e4349a0e4cf80a891d8921318c045f397a1ca78cf15a2c40`  
		Last Modified: Wed, 22 May 2019 22:43:05 GMT  
		Size: 2.7 MB (2729723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - linux; ppc64le

```console
$ docker pull hylang@sha256:e711f790294bb4839d05f43c75a6c19b879da365818c2464c9d64fab2c320133
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52437110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71065c553bea7a242ddc703a3ed3b390a6166ada8e2f7baba14158555f5a72bc`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:52:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 09:52:29 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 09:53:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:16:57 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 08 May 2019 10:29:55 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 08 May 2019 10:36:24 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 10:36:31 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 10:36:34 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 10:37:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 10:37:38 GMT
CMD ["python3"]
# Thu, 30 May 2019 18:27:17 GMT
ENV HY_VERSION=0.17.0
# Thu, 30 May 2019 18:27:31 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 30 May 2019 18:27:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd0ae865059d6fe09fb6cd525a52714f10198706fa0cbc2570f13685a28025a`  
		Last Modified: Wed, 08 May 2019 11:04:07 GMT  
		Size: 2.2 MB (2189471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ba14933c097d42b5a07ce584b2958ef9bf3d6297d5f37fcd8bfacb6d829522`  
		Last Modified: Wed, 08 May 2019 11:08:14 GMT  
		Size: 22.7 MB (22667324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4e38608820335f8c90bb8a1ba2318d709c80689bdb7930d9a76379e36e3208`  
		Last Modified: Wed, 08 May 2019 11:07:57 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6189834e49a1b72608bcddc6fd300f2eb69b7365fe35d7849bd1b735a37f73e2`  
		Last Modified: Wed, 08 May 2019 11:07:58 GMT  
		Size: 2.1 MB (2104881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409b945115b1a287e8b29794906decae193484ad53b94fea6875402a1cb91824`  
		Last Modified: Thu, 30 May 2019 18:36:21 GMT  
		Size: 2.7 MB (2730278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - linux; s390x

```console
$ docker pull hylang@sha256:ca3de81bf2b5aee45d3f9dcdf638aafd7fc3a7a03e25682990be4d7fa7756d63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.3 MB (53344761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7fda5eccd45ebe98729e16a5c73d46bec828362aec0267b522fc4c55bab6830`
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
# Wed, 08 May 2019 12:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:02:44 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 08 May 2019 13:11:59 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 08 May 2019 13:16:57 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 13:17:00 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 13:17:00 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 13:17:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 13:17:32 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:42:08 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:42:13 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:42:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c891412fe283c838f805e6088c674391132f08140fad574984d859db7b4bce`  
		Last Modified: Wed, 08 May 2019 13:33:44 GMT  
		Size: 2.3 MB (2266135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9670fe47677bb06474a7e6b35a86f466b5ae0ef7cc2ddf38ef68bc352e457338`  
		Last Modified: Wed, 08 May 2019 13:35:43 GMT  
		Size: 23.9 MB (23906383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36eafcb469a7494db2f9553301d093ab895e11a54d900e6a662130cb409ef2ba`  
		Last Modified: Wed, 08 May 2019 13:35:35 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742c09b1b340b1291846880b67755cf29b9fa2a90e799f8d642fb83cbf48b4ed`  
		Last Modified: Wed, 08 May 2019 13:35:36 GMT  
		Size: 2.1 MB (2103461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921799cb2c3a382b63bfa9eb142ae4819a91080489f7c1a50e7c79f4b3cb251c`  
		Last Modified: Wed, 22 May 2019 22:45:23 GMT  
		Size: 2.7 MB (2729674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - windows version 10.0.17763.504; amd64

```console
$ docker pull hylang@sha256:b9acc7cf37fcc3db99a6300ea2f50fd0d1e5b014c6571ff1898af3999635e926
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2133262116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9b0c739a4a45e04d3d555073d6abedc1099d00bcace40c4b22ccbcf00ed49a`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:30:19 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 22 May 2019 14:30:20 GMT
ENV PYTHON_RELEASE=3.6.8
# Wed, 22 May 2019 14:32:28 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:32:30 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:33:31 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:33:33 GMT
CMD ["python"]
# Thu, 23 May 2019 00:19:08 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:19:54 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Thu, 23 May 2019 00:19:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da476c697ef0b939f29435197d00433d52c8366bda031aa1323065b9fa37caeb`  
		Last Modified: Wed, 22 May 2019 14:54:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dd46b5222ca81e4afa7529abb3d2cbb71bf332bb34deaea23d16d0bef68d1c`  
		Last Modified: Wed, 22 May 2019 14:54:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8c9e831eb1a905242786cbb442aacf21607278e64f60f761f91c065aae15d4`  
		Last Modified: Wed, 22 May 2019 14:55:14 GMT  
		Size: 47.8 MB (47783264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b230a3ddbb06a41f18a27265e961e38512cd97e3ce189b37df8ca0e2667b1086`  
		Last Modified: Wed, 22 May 2019 14:54:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3556e8bb1cbf1af58d1b94fa11a329beb39062fafd66bee21ba4713946a6ed`  
		Last Modified: Wed, 22 May 2019 14:54:58 GMT  
		Size: 5.2 MB (5179529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e823a4f3a4aa65dd59757bab40e83de886a35e235bc83deedd859e5531941b6`  
		Last Modified: Wed, 22 May 2019 14:54:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051ec26fca6f5011c1109bcae39a7e8b97fd71ce13cb452bcf0eb0aa90c3ad5f`  
		Last Modified: Thu, 23 May 2019 00:29:11 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a19058a6518f16791f088d0164232b5f2ac51d3fc7aa5d4b91b96d5f44c309`  
		Last Modified: Thu, 23 May 2019 00:29:14 GMT  
		Size: 1.2 MB (1164241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81d037f34fc1c7a10055f1a99b87cc92c15e0f6a82fd023978ad793631dee0a`  
		Last Modified: Thu, 23 May 2019 00:29:11 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - windows version 10.0.17134.766; amd64

```console
$ docker pull hylang@sha256:b5c742d9e6c552f7df77308fcab3ec32763b3758377463d474c7799a44098780
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2358036843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27eab7fc4b7b57f3fa9be69e9293e7c39471ad1766f3c7ad4a12b0554e532c2`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:26:35 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 22 May 2019 14:26:36 GMT
ENV PYTHON_RELEASE=3.6.8
# Wed, 22 May 2019 14:28:52 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:28:55 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:29:58 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:29:59 GMT
CMD ["python"]
# Thu, 23 May 2019 00:20:11 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:20:57 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Thu, 23 May 2019 00:20:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0246191854ff59a4a0ddb8a1915dc99ae63ebddc4aa38b0c670ad22556fcde`  
		Last Modified: Wed, 22 May 2019 14:53:31 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490f490fdb3044d9904745946dd3242cba08c2c224b314f34c05b1332a263a1f`  
		Last Modified: Wed, 22 May 2019 14:53:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4204000e92783e9319f8bf1231a38436c5c18dc79ec25fd655a5c77027f624dd`  
		Last Modified: Wed, 22 May 2019 14:54:30 GMT  
		Size: 48.2 MB (48206129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a5c05803a3dd16192bf3e2917b4d72a38efadfef93fcb7bb673e90271cac79`  
		Last Modified: Wed, 22 May 2019 14:53:28 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb852216cb277bdf18e9744ac2bafc51d59a23360fa9b2001e39e7ae523c75b`  
		Last Modified: Wed, 22 May 2019 14:53:36 GMT  
		Size: 5.2 MB (5192237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906e606dc9e9656d9f96de11557d32cb1811a5094721cecc3710eaec636700b6`  
		Last Modified: Wed, 22 May 2019 14:53:29 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e7513275714b193a0ec81f9d89bd3825e20a39fb5fd70598404b80d2c357ba`  
		Last Modified: Thu, 23 May 2019 00:29:38 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1feee642e11ef56f6b8b4529554de917e8cd3dea2a36388b44e7888ea097b7`  
		Last Modified: Thu, 23 May 2019 00:29:40 GMT  
		Size: 1.2 MB (1173304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32d458b703d22c1ba6b1bbe1af049c21f4dc5d38bebd48b10f228f1f218613`  
		Last Modified: Thu, 23 May 2019 00:29:38 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6` - windows version 10.0.14393.2972; amd64

```console
$ docker pull hylang@sha256:1c9a12c30b988907802c4d1a15b3640c115f1fdd770763c64bbd30d1b6881ca5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5764449747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735aaa6473afab1923d108bbee9734c29ebc74c701f92d08f279f9dd3eaae3fb`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:21:51 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 22 May 2019 14:21:52 GMT
ENV PYTHON_RELEASE=3.6.8
# Wed, 22 May 2019 14:24:35 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:24:37 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:26:18 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:26:19 GMT
CMD ["python"]
# Thu, 23 May 2019 00:21:14 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:22:30 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Thu, 23 May 2019 00:22:32 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9b8570dbe471f21a9796c633bea29f4cddb59701d59107f6de066f2baa7ae3`  
		Last Modified: Wed, 22 May 2019 14:52:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a41bbcb825e4c3d2aa87a03dfec62630bfc40e799dddbaa8b7d2165564b493d`  
		Last Modified: Wed, 22 May 2019 14:52:44 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47875d0b6684afb5c9245756810ebc8516eed9dbb44115256d38a30f976e8acf`  
		Last Modified: Wed, 22 May 2019 14:53:13 GMT  
		Size: 48.6 MB (48610975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f57c6044a661b56b1f11341b1ad3e6f3a09e285848f6b27485ea3066e7c1ae`  
		Last Modified: Wed, 22 May 2019 14:52:44 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54356852609fe793adcfa2fcf6874dedf3406dfa940e88226d1d90b55271cac`  
		Last Modified: Wed, 22 May 2019 14:52:57 GMT  
		Size: 10.0 MB (10036869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a50fdbeafe75f2058acc6b615ff366c3b6254e821c4d613086ab4c924fed56c`  
		Last Modified: Wed, 22 May 2019 14:52:45 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce144689d5631cda7099f7a1c1d23fda2937285a58f8d1c9fc0471a165ed9d9`  
		Last Modified: Thu, 23 May 2019 00:30:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b209b31a5770d09def6334ecbb7f986bbc191a531c02f6b52308062cda88615e`  
		Last Modified: Thu, 23 May 2019 00:30:12 GMT  
		Size: 6.0 MB (6005312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90d25e084b753e6a87e5e5e88dfbd0e14a7ad442fd2658889617f96c890cd79`  
		Last Modified: Thu, 23 May 2019 00:30:05 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
